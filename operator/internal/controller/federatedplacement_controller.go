/*
Copyright 2026.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package controller

import (
	"context"
	"fmt"
	"reflect"
	"strconv"
	"time"

	appsv1 "k8s.io/api/apps/v1"
	autoscalingv2 "k8s.io/api/autoscaling/v2"
	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/api/errors"
	"k8s.io/apimachinery/pkg/api/meta"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/types"
	"k8s.io/client-go/util/retry"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/builder"
	"sigs.k8s.io/controller-runtime/pkg/client"
	"sigs.k8s.io/controller-runtime/pkg/controller/controllerutil"
	logf "sigs.k8s.io/controller-runtime/pkg/log"
	"sigs.k8s.io/controller-runtime/pkg/predicate"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
	prometheusv1 "github.com/prometheus/client_golang/api/prometheus/v1"
)

// FederatedPlacementReconciler reconciles a FederatedPlacement object
type FederatedPlacementReconciler struct {
	client.Client
	Scheme  *runtime.Scheme
	PromAPI prometheusv1.API
}

// --- SDK DEFAULTS (Lifecycle Management) ---
// These allow the operator to manage the FederatedPlacement resource itself.
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements,verbs=get;list;watch;create;update;patch;delete
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/status,verbs=get;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/finalizers,verbs=update

// --- HPA, Deployments Permissions  ---
// +kubebuilder:rbac:groups=apps,resources=deployments,verbs=get;list;watch;create;update;patch
// +kubebuilder:rbac:groups=autoscaling,resources=horizontalpodautoscalers,verbs=get;list;watch;create;update;patch;delete

// Reconcile is part of the main kubernetes reconciliation loop which aims to
// move the current state of the cluster closer to the desired state.
// TODO(user): Modify the Reconcile function to compare the state specified by
// the FederatedPlacement object against the actual cluster state, and then
// perform operations to make the cluster state reflect the state specified by
// the user.
//
// For more details, check Reconcile and its Result here:
// - https://pkg.go.dev/sigs.k8s.io/controller-runtime@v0.21.0/pkg/reconcile
func (r *FederatedPlacementReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {
	log := logf.FromContext(ctx)

	// Fetch the FederatedPlacement (The Manager)
	fp := &optimizerv1.FederatedPlacement{}
	if err := r.Get(ctx, req.NamespacedName, fp); err != nil {
		return ctrl.Result{}, client.IgnoreNotFound(err)
	}

	// Clone the status to compare it at the end of the loop and prevent infinite loops
	oldStatus := fp.Status.DeepCopy()

	// Look for the Target Deployment (The Managed Workload)
	var deploy appsv1.Deployment
	deployName := types.NamespacedName{Name: fp.Spec.TargetWorkload, Namespace: fp.Namespace}
	err := r.Get(ctx, deployName, &deploy)

	if err != nil {
		if errors.IsNotFound(err) {
			log.Info("Target deployment deleted by user. Purging remote shadow infrastructure...", "target", fp.Spec.TargetWorkload)

			// Cascade deletion to shadow deployments since the original template is gone
			if fp.Status.PlacementMap != nil {
				for clusterName := range fp.Status.PlacementMap {
					childName := fmt.Sprintf("%s-%s", fp.Spec.TargetWorkload, clusterName)
					childDeploy := &appsv1.Deployment{
						ObjectMeta: metav1.ObjectMeta{
							Name:      childName,
							Namespace: fp.Namespace,
						},
					}

					// Force the deletion of the shadow deployment
					if errDel := r.Delete(ctx, childDeploy); errDel != nil && !errors.IsNotFound(errDel) {
						log.Error(errDel, "Failed to purge orphaned shadow deployment", "Child", childName)
					}
				}

				// Clear the placement map and counter to reflect the absolute shutdown
				fp.Status.PlacementMap = nil
				fp.Status.Replicas = 0
			}

			// Update status to document the missing template and successful purge
			meta.SetStatusCondition(&fp.Status.Conditions, metav1.Condition{
				Type:    "Ready",
				Status:  metav1.ConditionFalse,
				Reason:  "DeploymentNotFound",
				Message: fmt.Sprintf("Target deployment %s was deleted. All remote shadow workloads purged.", fp.Spec.TargetWorkload),
			})

			errStatus := retry.RetryOnConflict(retry.DefaultRetry, func() error {
				latest := &optimizerv1.FederatedPlacement{}
				if errGet := r.Get(ctx, req.NamespacedName, latest); errGet != nil {
					return errGet
				}
				latest.Status = fp.Status
				return r.Status().Update(ctx, latest)
			})

			if errStatus != nil {
				log.Error(errStatus, "Failed to update FederatedPlacement status during cleanup execution")
			}

			// Requeue later to watch if the user recreates the core deployment template
			return ctrl.Result{RequeueAfter: time.Second * 30}, nil
		}
		log.Error(err, "Failed to fetch target deployment for unknown reason", "target", fp.Spec.TargetWorkload)
		return ctrl.Result{}, err
	}

	// Ensure the HPA exists
	if err := r.ensureHPA(ctx, fp); err != nil {
		log.Error(err, "Failed to manage HPA")
		return ctrl.Result{}, err
	}

	totalTraffic := 0.0
	for zone, val := range fp.Spec.LatencyZones {
		v, err := strconv.ParseFloat(val, 64)
		if err != nil {
			log.Error(err, "Invalid latency zone value format", "zone", zone, "value", val)
			continue
		}
		totalTraffic += v
	}

	// Verification of the sum
	if len(fp.Spec.LatencyZones) > 0 && (totalTraffic > 1.001 || totalTraffic < 0.999) {
		log.Info("Warning: Latency zones traffic fractions do not sum to 1.0", "total", totalTraffic)
	}

	// Update Monitoring Status (Acting as a Sensor)
	meta.SetStatusCondition(&fp.Status.Conditions, metav1.Condition{
		Type:    "Ready",
		Status:  metav1.ConditionTrue,
		Reason:  "DeploymentLinked",
		Message: fmt.Sprintf("Deployment %s found and linked", fp.Spec.TargetWorkload),
	})

	selector, _ := metav1.LabelSelectorAsSelector(deploy.Spec.Selector)
	fp.Status.Selector = selector.String()

	// Capture HPA Recommendation
	hpaValue := int32(1)
	if fp.Spec.Replicas != nil {
		hpaValue = *fp.Spec.Replicas
	}
	fp.Status.HPARecommendation = hpaValue

	// Throttled Telemetry Sync (Prometheus)
	// Only fetch metrics if enough time has passed to avoid API noise and loops
	metricsInterval := 1 * time.Minute
	now := metav1.Now()

	if fp.Status.LastMetricsUpdateTime == nil || now.Sub(fp.Status.LastMetricsUpdateTime.Time) > metricsInterval {
		currentUsage, err := GetWorkloadMetricsFromPrometheus(ctx, r.PromAPI, fp.Namespace, fp.Spec.TargetWorkload)
		if err == nil {
			fp.Status.ResourceDemand = currentUsage
			fp.Status.LastMetricsUpdateTime = &now
			log.Info("Workload metrics updated", "cpu", currentUsage.CPU.String(), "mem", currentUsage.Memory.String())
		} else {
			log.Error(err, "Failed to sync Prometheus telemetry")
		}
	}

	// NEUTRALIZAR O DEPLOYMENT ORIGINAL
	// O Deployment original passa a ser apenas um template inativo.
	zeroReplicas := int32(0)
	if deploy.Spec.Replicas == nil || *deploy.Spec.Replicas != 0 {
		deploy.Spec.Replicas = &zeroReplicas
		if err := r.Update(ctx, &deploy); err != nil {
			log.Error(err, "Failed to scale down original template deployment")
			return ctrl.Result{}, err
		}
	}

	// APLICAR APENAS O QUE ESTÁ NO MAPA NA REALIDADE
	totalRunningReplicas, err := r.syncShadowPlacements(ctx, fp, &deploy)
	if err != nil {
		return ctrl.Result{}, err
	}
	fp.Status.Replicas = totalRunningReplicas

	// Commit Status changes if any (DeepEqual prevents infinite reconciliation loops)
	if !reflect.DeepEqual(oldStatus, &fp.Status) {
		errUpdate := retry.RetryOnConflict(retry.DefaultRetry, func() error {
			latest := &optimizerv1.FederatedPlacement{}
			if errGet := r.Get(ctx, req.NamespacedName, latest); errGet != nil {
				return errGet
			}
			latest.Status = fp.Status
			return r.Status().Update(ctx, latest)
		})

		if errUpdate != nil {
			log.Error(errUpdate, "Failed to update status")
			return ctrl.Result{}, errUpdate
		}
	}

	return ctrl.Result{RequeueAfter: 30 * time.Second}, nil
}

// syncShadowPlacements abstracts the sub-loop execution to fulfill complexity requirements
func (r *FederatedPlacementReconciler) syncShadowPlacements(ctx context.Context, fp *optimizerv1.FederatedPlacement, deploy *appsv1.Deployment) (int32, error) {
	log := logf.FromContext(ctx)
	var totalRunningReplicas int32 = 0

	if fp.Status.PlacementMap != nil {
		for clusterName, allocatedReplicas := range fp.Status.PlacementMap {

			totalRunningReplicas += allocatedReplicas

			childName := fmt.Sprintf("%s-%s", deploy.Name, clusterName)
			childDeploy := &appsv1.Deployment{
				ObjectMeta: metav1.ObjectMeta{
					Name:      childName,
					Namespace: deploy.Namespace,
				},
			}

			_, err := controllerutil.CreateOrUpdate(ctx, r.Client, childDeploy, func() error {
				if childDeploy.CreationTimestamp.IsZero() {
					childDeploy.Spec = *deploy.Spec.DeepCopy()
				}

				childDeploy.Spec.Replicas = &allocatedReplicas

				if childDeploy.Spec.Template.Spec.NodeSelector == nil {
					childDeploy.Spec.Template.Spec.NodeSelector = make(map[string]string)
				}

				if clusterName == "cmcworker" {
					childDeploy.Spec.Template.Spec.NodeSelector["kubernetes.io/hostname"] = clusterName
				} else {
					childDeploy.Spec.Template.Spec.NodeSelector["liqo.io/remote-cluster-id"] = clusterName

					hasToleration := false
					for _, tol := range childDeploy.Spec.Template.Spec.Tolerations {
						if tol.Key == "virtual-node.liqo.io/not-allowed" {
							hasToleration = true
							break
						}
					}
					if !hasToleration {
						childDeploy.Spec.Template.Spec.Tolerations = append(childDeploy.Spec.Template.Spec.Tolerations, corev1.Toleration{
							Key:      "virtual-node.liqo.io/not-allowed",
							Operator: corev1.TolerationOpExists,
						})
					}
				}

				return controllerutil.SetControllerReference(fp, childDeploy, r.Scheme)
			})

			if err != nil {
				log.Error(err, "Failed to reconcile shadow deployment", "Child", childName)
				return 0, err
			}
		}
	}
	return totalRunningReplicas, nil
}

// ensureHPA manages the lifecycle of the HPA targeting the Custom Resource
func (r *FederatedPlacementReconciler) ensureHPA(ctx context.Context, fp *optimizerv1.FederatedPlacement) error {
	hpa := &autoscalingv2.HorizontalPodAutoscaler{
		ObjectMeta: metav1.ObjectMeta{
			Name:      fp.Name,
			Namespace: fp.Namespace,
		},
	}

	_, err := controllerutil.CreateOrUpdate(ctx, r.Client, hpa, func() error {
		// Target the CRD, allowing to intercept the decision
		hpa.Spec.ScaleTargetRef = autoscalingv2.CrossVersionObjectReference{
			APIVersion: fp.APIVersion,
			Kind:       fp.Kind,
			Name:       fp.Name,
		}

		hpa.Spec.MinReplicas = fp.Spec.AutoScaling.MinReplicas
		hpa.Spec.MaxReplicas = fp.Spec.AutoScaling.MaxReplicas

		if fp.Spec.AutoScaling.TargetCPUUtilization != nil {
			hpa.Spec.Metrics = []autoscalingv2.MetricSpec{{
				Type: autoscalingv2.ResourceMetricSourceType,
				Resource: &autoscalingv2.ResourceMetricSource{
					Name: "cpu",
					Target: autoscalingv2.MetricTarget{
						Type:               autoscalingv2.UtilizationMetricType,
						AverageUtilization: fp.Spec.AutoScaling.TargetCPUUtilization,
					},
				},
			}}
		}
		// Set owner reference: if FP is deleted, HPA is deleted too
		return controllerutil.SetControllerReference(fp, hpa, r.Scheme)
	})
	return err
}

// SetupWithManager sets up the controller with the Manager.
func (r *FederatedPlacementReconciler) SetupWithManager(mgr ctrl.Manager) error {
	return ctrl.NewControllerManagedBy(mgr).
		// Ignore status updates, only react to Spec changes
		For(&optimizerv1.FederatedPlacement{}, builder.WithPredicates(predicate.GenerationChangedPredicate{})).
		Owns(&autoscalingv2.HorizontalPodAutoscaler{}).
		Owns(&appsv1.Deployment{}). // Watch Shadow Deployments
		Complete(r)
}
