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
	"strconv"
	"time"

	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/types"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/client"
	logf "sigs.k8s.io/controller-runtime/pkg/log"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
)

// FederatedPlacementReconciler reconciles a FederatedPlacement object
type FederatedPlacementReconciler struct {
	client.Client
	Scheme *runtime.Scheme
}

// --- 1. SDK DEFAULTS (Lifecycle Management) ---
// These allow the operator to manage the FederatedPlacement resource itself.
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements,verbs=get;list;watch;create;update;patch;delete
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/status,verbs=get;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/finalizers,verbs=update

// --- 2. OBSERVATION LAYER (Input Data) ---
// Needed to fetch global budget (B), weights (alpha), and cluster costs (cij).
// These are read-only to follow the principle of least privilege.
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedoperatorconfigs,verbs=get;list;watch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedclusters,verbs=get;list;watch

// --- 3. ACTUATION LAYER (Approach A - Target Workload) ---
// Needed to observe the demand (Ri) and inject NodeAffinity (xij) into the Deployment.
// +kubebuilder:rbac:groups=apps,resources=deployments,verbs=get;list;watch;update;patch

// --- 4. INFRASTRUCTURE LAYER (Core Group) ---
// Needed to discover Liqo Virtual Nodes and verify cluster capacity (Capacityj).
// +kubebuilder:rbac:groups="",resources=nodes,verbs=get;list;watch

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
	logger := logf.FromContext(ctx)

	// ------------------------------------------------------------------
	// 1. INPUT: FederatedPlacement (The Request)
	// ------------------------------------------------------------------
	var placement optimizerv1.FederatedPlacement
	if err := r.Get(ctx, req.NamespacedName, &placement); err != nil {
		return ctrl.Result{}, client.IgnoreNotFound(err)
	}
	logger.Info("Successfully fetched FederatedPlacement", "Target", placement.Spec.TargetWorkload)

	// ------------------------------------------------------------------
	// 2. INPUT: Target Deployment (Observed Demand Ri)
	// ------------------------------------------------------------------
	var targetDep appsv1.Deployment
	depName := types.NamespacedName{Namespace: placement.Namespace, Name: placement.Spec.TargetWorkload}
	if err := r.Get(ctx, depName, &targetDep); err != nil {
		logger.Error(err, "Target Deployment not found", "name", depName)
		return ctrl.Result{RequeueAfter: time.Minute}, nil
	}

	ri := int32(0)
	if targetDep.Spec.Replicas != nil {
		ri = *targetDep.Spec.Replicas
	}
	logger.Info("Input Detected", "Ri_Demand", ri)

	// ------------------------------------------------------------------
	// 3. INPUT: Global Config (Budget B and Alpha)
	// ------------------------------------------------------------------
	var configList optimizerv1.FederatedOperatorConfigList
	if err := r.List(ctx, &configList); err != nil {
		return ctrl.Result{}, err
	}

	// Assuming only one global config exists
	// TODO: Implement Singleton pattern or use a specific name to fetch the config directly
	var b_budget float64
	var alpha float64
	if len(configList.Items) > 0 {
		conf := configList.Items[0].Spec

		// Converter TotalBudget (string -> float64)
		bVal, err := strconv.ParseFloat(conf.TotalBudget, 64)
		if err != nil {
			logger.Error(err, "Erro ao converter TotalBudget para número", "valor", conf.TotalBudget)
			b_budget = 0 // ou um valor padrão
		} else {
			b_budget = bVal
		}

		// Converter OptimizationWeight (string -> float64)
		aVal, err := strconv.ParseFloat(conf.OptimizationWeight, 64)
		if err != nil {
			logger.Error(err, "Erro ao converter Alpha para número", "valor", conf.OptimizationWeight)
			alpha = 0.5 // valor padrão de exemplo
		} else {
			alpha = aVal
		}

		logger.Info("Input Detected", "B_Budget", b_budget, "Alpha", alpha)
	}

	// ------------------------------------------------------------------
	// 4. INPUT: Federated Clusters (Costs cij)
	// ------------------------------------------------------------------
	var clusters optimizerv1.FederatedClusterList
	if err := r.List(ctx, &clusters); err != nil {
		return ctrl.Result{}, err
	}
	logger.Info("Input Detected", "ActiveClustersCount", len(clusters.Items))

	// Example: iterating to see costs
	// for _, cluster := range clusters.Items {
	// 	logger.Info("Cluster Info", "Name", cluster.Name, "Cij_Cost", cluster.Status.UnitCost)
	// }

	// ------------------------------------------------------------------
	// 5. INPUT: Infrastructure Nodes (Real Capacity Capacityj)
	// ------------------------------------------------------------------
	var nodes corev1.NodeList
	if err := r.List(ctx, &nodes); err != nil {
		return ctrl.Result{}, err
	}

	for _, node := range nodes.Items {
		// Identifying Liqo virtual nodes usually by labels or names
		capacity := node.Status.Allocatable.Cpu().AsApproximateFloat64()
		logger.Info("Infrastructure Detected", "Node", node.Name, "CapacityJ_CPU", capacity)
	}

	logger.Info(">>> All inputs collected. Ready for Heuristic Calculation <<<")

	return ctrl.Result{}, nil
}

// SetupWithManager sets up the controller with the Manager.
func (r *FederatedPlacementReconciler) SetupWithManager(mgr ctrl.Manager) error {
	return ctrl.NewControllerManagedBy(mgr).
		For(&optimizerv1.FederatedPlacement{}).
		Named("federatedplacement").
		Complete(r)
}
