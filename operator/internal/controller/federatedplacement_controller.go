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
	"time"

	appsv1 "k8s.io/api/apps/v1"
	autoscalingv2 "k8s.io/api/autoscaling/v2"
	"k8s.io/apimachinery/pkg/api/errors"
	"k8s.io/apimachinery/pkg/api/meta"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/types"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/client"
	"sigs.k8s.io/controller-runtime/pkg/controller/controllerutil"
	logf "sigs.k8s.io/controller-runtime/pkg/log"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
	prometheusv1 "github.com/prometheus/client_golang/api/prometheus/v1"
)

// FederatedPlacementReconciler reconciles a FederatedPlacement object
type FederatedPlacementReconciler struct {
	client.Client
	Scheme *runtime.Scheme
	PromAPI prometheusv1.API
}

// --- SDK DEFAULTS (Lifecycle Management) ---
// These allow the operator to manage the FederatedPlacement resource itself.
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements,verbs=get;list;watch;create;update;patch;delete
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/status,verbs=get;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/finalizers,verbs=update

// --- HPA, Deployments Permissions  ---
// +kubebuilder:rbac:groups=apps,resources=deployments,verbs=get;list;watch;update;patch
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

	// Look for the Target Deployment (The Managed Workload)
	var deploy appsv1.Deployment
	deployName := types.NamespacedName{Name: fp.Spec.TargetWorkload, Namespace: fp.Namespace}
	err := r.Get(ctx, deployName, &deploy)

	if err != nil {
		if errors.IsNotFound(err) {
			log.Info("Target deployment not found. Waiting...", "target", fp.Spec.TargetWorkload)

			// Update status to inform the user
			wasFalse := meta.IsStatusConditionFalse(fp.Status.Conditions, "Ready")
			meta.SetStatusCondition(&fp.Status.Conditions, metav1.Condition{
				Type:    "Ready",
				Status:  metav1.ConditionFalse,
				Reason:  "DeploymentNotFound",
				Message: fmt.Sprintf("Waiting for deployment %s", fp.Spec.TargetWorkload),
			})
			if !wasFalse { // Only update if it wasn't already marked as False
				if err := r.Status().Update(ctx, fp); err != nil {
					log.Error(err, "Failed to update status for missing deployment")
					return ctrl.Result{}, err
				}
			}

			return ctrl.Result{RequeueAfter: time.Second * 15}, nil
		}
		log.Error(err, "Failed to fetch target deployment for unknown reason", "target", fp.Spec.TargetWorkload)
		return ctrl.Result{}, err
	}

	// Ensure the HPA exists
	if err := r.ensureHPA(ctx, fp); err != nil {
		log.Error(err, "Failed to manage HPA")
		return ctrl.Result{}, err
	}

	// CONSOLIDATED STATUS SYNC
	// Check all status fields at once to minimize API calls
	changed := false
	selector, _ := metav1.LabelSelectorAsSelector(deploy.Spec.Selector)
	selectorString := selector.String()

	// We check the previous state ONLY to decide if we need to call r.Status().Update()
	wasReady := meta.IsStatusConditionTrue(fp.Status.Conditions, "Ready")

	meta.SetStatusCondition(&fp.Status.Conditions, metav1.Condition{
		Type:    "Ready",
		Status:  metav1.ConditionTrue,
		Reason:  "DeploymentLinked",
		Message: fmt.Sprintf("Deployment %s found and linked", fp.Spec.TargetWorkload),
	})

	// If it transitioned from False to True, we mark as changed
	if !wasReady {
		changed = true
	}

	// Sync Selector (for HPA visibility)
	if fp.Status.Selector != selectorString {
		fp.Status.Selector = selectorString
		changed = true
	}

	// Sync Actual Replicas (for HPA feedback loop)
	if fp.Status.Replicas != deploy.Status.Replicas {
		fp.Status.Replicas = deploy.Status.Replicas
		changed = true
	}

	// CAPTURE HPA RECOMMENDATION ($R_i$)
	// Read what HPA wrote in Spec and save to Status for the Global Controller
	hpaValue := int32(1)
	if fp.Spec.Replicas != nil {
		hpaValue = *fp.Spec.Replicas
	}
	if fp.Status.HPARecommendation != hpaValue {
		fp.Status.HPARecommendation = hpaValue
		changed = true
	}

	// If anything in status changed, update it and requeue
	if changed {
		if err := r.Status().Update(ctx, fp); err != nil {
			log.Error(err, "Failed to update FederatedPlacement status")
			return ctrl.Result{}, err
		}
		// Return and let the next reconciliation handle the logic with fresh data
		return ctrl.Result{}, nil
	}

	// DECIDE FINAL REPLICAS ($R_{final}$)
	// Priority: 1. Global Decision (AllowedReplicas) | 2. HPA Recommendation | 3. MinReplicas
	var approvedReplicas int32

	if fp.Status.AllowedReplicas > 0 {
		// The Global Controller (FederatedOperatorConfig) has spoken!
		approvedReplicas = fp.Status.AllowedReplicas
	} else {
		// Fallback to HPA recommendation until the brain decides
		approvedReplicas = hpaValue
	}

	// APPLY TO REAL DEPLOYMENT
	if deploy.Spec.Replicas == nil || *deploy.Spec.Replicas != approvedReplicas {
		deploy.Spec.Replicas = &approvedReplicas
		if err := r.Update(ctx, &deploy); err != nil {
			log.Error(err, "Failed to apply replicas to deployment")
			return ctrl.Result{}, err
		}
		log.Info("Scale applied successfully",
			"source", "HPA/Global",
			"replicas", approvedReplicas)
	}

	return ctrl.Result{RequeueAfter: time.Minute}, nil
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
		For(&optimizerv1.FederatedPlacement{}).
		Owns(&autoscalingv2.HorizontalPodAutoscaler{}). // Watch HPA changes to react faster to scaling events
		Named("federatedplacement").
		Complete(r)
}
