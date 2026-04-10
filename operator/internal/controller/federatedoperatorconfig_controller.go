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

	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/types"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/builder"
	"sigs.k8s.io/controller-runtime/pkg/client"
	"sigs.k8s.io/controller-runtime/pkg/handler"
	logf "sigs.k8s.io/controller-runtime/pkg/log"
	"sigs.k8s.io/controller-runtime/pkg/predicate"
	"sigs.k8s.io/controller-runtime/pkg/reconcile"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
)

// FederatedOperatorConfigReconciler reconciles a FederatedOperatorConfig object
type FederatedOperatorConfigReconciler struct {
	client.Client
	Scheme *runtime.Scheme
}

const (
	// Constants used to implement Singleton
	SingletonName      = "global-config"
	SingletonNamespace = "federation-system"
)

// --- 1. SDK DEFAULTS ---
// Standard permissions to manage the global optimization settings (B, alpha, k).
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedoperatorconfigs,verbs=get;list;watch;create;update;patch;delete
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedoperatorconfigs/status,verbs=get;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedoperatorconfigs/finalizers,verbs=update

// --- GLOBAL BRAIN PERMISSIONS ---
// The controller needs read/write access to the config,
// but also needs to list Clusters and update Placements.
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedclusters,verbs=get;list;watch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements,verbs=get;list;watch;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedplacements/status,verbs=get;update;patch

// Reconcile is part of the main kubernetes reconciliation loop which aims to
// move the current state of the cluster closer to the desired state.
// TODO(user): Modify the Reconcile function to compare the state specified by
// the FederatedOperatorConfig object against the actual cluster state, and then
// perform operations to make the cluster state reflect the state specified by
// the user.
//
// For more details, check Reconcile and its Result here:
// - https://pkg.go.dev/sigs.k8s.io/controller-runtime@v0.21.0/pkg/reconcile
func (r *FederatedOperatorConfigReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {
	logger := logf.FromContext(ctx)

	// Enforce Singleton: Only process the resource with the predefined name and namespace.
	if req.Name != SingletonName || req.Namespace != SingletonNamespace {
		logger.Info("Ignoring unofficial configuration", "Name", req.Name)
		return ctrl.Result{}, nil
	}

	// FETCH THE GLOBAL CONFIG (Budget B, weights, etc.)
	config := &optimizerv1.FederatedOperatorConfig{}
	if err := r.Get(ctx, req.NamespacedName, config); err != nil {
		return ctrl.Result{}, client.IgnoreNotFound(err)
	}

	// FETCH ALL CLUSTERS (Infrastructure Capacity)
	var clusterList optimizerv1.FederatedClusterList
	if err := r.List(ctx, &clusterList); err != nil {
		logger.Error(err, "Failed to list FederatedClusters")
		return ctrl.Result{}, err
	}

	// FETCH ALL WORKLOADS (Demand / Placements)
	var placementList optimizerv1.FederatedPlacementList
	if err := r.List(ctx, &placementList); err != nil {
		logger.Error(err, "Failed to list FederatedPlacements")
		return ctrl.Result{}, err
	}

	logger.Info("Global State Loaded",
		"TotalClusters", len(clusterList.Items),
		"TotalWorkloads", len(placementList.Items))

	// --- GLOBAL OPTIMIZATION ZONE ---
	// TODO: Your heuristic/linear optimization math goes here

	// DUMMY UPDATE FOR PHASE 1: Just to prove the Status is writable
	config.Status.TotalCurrentCost = "0.00"
	config.Status.GlobalMisalignmentScore = "0.00"

	// UPDATE GLOBAL STATUS
	if err := r.Status().Update(ctx, config); err != nil {
		logger.Error(err, "Failed to update FederatedOperatorConfig status")
		return ctrl.Result{}, err
	}

	return ctrl.Result{}, nil
}

// SetupWithManager sets up the controller with the Manager.
func (r *FederatedOperatorConfigReconciler) SetupWithManager(mgr ctrl.Manager) error {

	// MAP FUNC: A "switchboard" that translates any event on Clusters or Placements
	// into a wakeup call specifically for our Singleton object.
	mapToSingleton := handler.EnqueueRequestsFromMapFunc(func(ctx context.Context, obj client.Object) []reconcile.Request {
		return []reconcile.Request{
			{NamespacedName: types.NamespacedName{
				Name:      SingletonName,
				Namespace: SingletonNamespace,
			}},
		}
	})

	return ctrl.NewControllerManagedBy(mgr).
		For(&optimizerv1.FederatedOperatorConfig{}, builder.WithPredicates(predicate.GenerationChangedPredicate{})).
		Watches(
			&optimizerv1.FederatedCluster{},
			mapToSingleton, // Uses the MapFunc instead of EnqueueRequestForObject
			builder.WithPredicates(predicate.GenerationChangedPredicate{}),
		).
		Watches(
			&optimizerv1.FederatedPlacement{},
			mapToSingleton, // Uses the MapFunc here too
			builder.WithPredicates(predicate.GenerationChangedPredicate{}),
		).
		Named("federatedoperatorconfig").
		Complete(r)
}
