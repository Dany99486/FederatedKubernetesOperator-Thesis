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
	"time"

	corev1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/types"
	ctrl "sigs.k8s.io/controller-runtime"
	"sigs.k8s.io/controller-runtime/pkg/client"
	logf "sigs.k8s.io/controller-runtime/pkg/log"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
)

// FederatedClusterReconciler reconciles a FederatedCluster object
type FederatedClusterReconciler struct {
	client.Client
	Scheme *runtime.Scheme
}

// --- 1. SDK DEFAULTS ---
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedclusters,verbs=get;list;watch;create;update;patch;delete
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedclusters/status,verbs=get;update;patch
// +kubebuilder:rbac:groups=optimizer.uc.pt,resources=federatedclusters/finalizers,verbs=update

// --- 2. INFRASTRUCTURE CROSS-REFERENCE ---
// Needed to map this Custom Resource to an actual Kubernetes Node (Liqo Virtual Node).
// +kubebuilder:rbac:groups="",resources=nodes,verbs=get;list;watch

// Reconcile is part of the main kubernetes reconciliation loop which aims to
// move the current state of the cluster closer to the desired state.
// TODO(user): Modify the Reconcile function to compare the state specified by
// the FederatedCluster object against the actual cluster state, and then
// perform operations to make the cluster state reflect the state specified by
// the user.
//
// For more details, check Reconcile and its Result here:
// - https://pkg.go.dev/sigs.k8s.io/controller-runtime@v0.21.0/pkg/reconcile
func (r *FederatedClusterReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {
	logger := logf.FromContext(ctx)

	// Fetch the FederatedCluster
	fedCluster := optimizerv1.FederatedCluster{}
	if err := r.Get(ctx, req.NamespacedName, &fedCluster); err != nil {
		return ctrl.Result{}, client.IgnoreNotFound(err)
	}

	// Find the Virtual Node in the CMC
	node := corev1.Node{}
	if err := r.Get(ctx, types.NamespacedName{Name: fedCluster.Name}, &node); err != nil {
		logger.Error(err, "Virtual Node not found", "Node", fedCluster.Name, "Zone", fedCluster.Spec.Zone)
		return ctrl.Result{RequeueAfter: time.Minute}, nil
	}

	// Extract Multi-Resource Capacity (CPU in m, RAM in MiB)
	newCPU := int32(node.Status.Allocatable.Cpu().MilliValue())
	newMem := int32(node.Status.Allocatable.Memory().Value() / (1024 * 1024))

	// Update Status if infrastructure changes
	if fedCluster.Status.TotalCPU != newCPU || fedCluster.Status.TotalMemory != newMem {
		logger.Info("Infrastructure resources updated",
			"Cluster", fedCluster.Name,
			"CPU_m", newCPU,
			"Mem_MiB", newMem)

		fedCluster.Status.TotalCPU = newCPU
		fedCluster.Status.TotalMemory = newMem

		// Aqui o if curto brilha novamente!
		if err := r.Status().Update(ctx, &fedCluster); err != nil {
			logger.Error(err, "Failed to update status")
			return ctrl.Result{}, err
		}
	}

	return ctrl.Result{RequeueAfter: time.Minute * 5}, nil
}

// SetupWithManager sets up the controller with the Manager.
func (r *FederatedClusterReconciler) SetupWithManager(mgr ctrl.Manager) error {
	return ctrl.NewControllerManagedBy(mgr).
		For(&optimizerv1.FederatedCluster{}).
		Named("federatedcluster").
		Complete(r)
}
