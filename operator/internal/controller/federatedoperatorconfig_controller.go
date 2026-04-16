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
	"math"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"

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

	// DECISION LAYER: Execute the Gurobi ILP Solver
	err := r.calculatePlacement(config, clusterList.Items, placementList.Items)
	if err != nil {
		// If solving fails (e.g., infeasible budget), we keep the "Last Known Good State"
		logger.Info("Optimization failed or model is infeasible. Preserving current distribution.", "reason", err.Error())
	} else {
		// ACTUATION LAYER: Persist the calculated distribution to Kubernetes
		for _, p := range placementList.Items {
			if err := r.Status().Update(ctx, &p); err != nil {
				logger.Error(err, "Failed to update placement status for workload", "name", p.Name)
			}
		}
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
			mapToSingleton,
			builder.WithPredicates(predicate.GenerationChangedPredicate{}),
		).
		Watches(
			&optimizerv1.FederatedPlacement{},
			mapToSingleton,
			builder.WithPredicates(predicate.GenerationChangedPredicate{}),
		).
		Named("federatedoperatorconfig").
		Complete(r)
}

// calculatePlacement handles the I/O communication with the Gurobi Optimizer
func (r *FederatedOperatorConfigReconciler) calculatePlacement(config *optimizerv1.FederatedOperatorConfig, clusters []optimizerv1.FederatedCluster, placements []optimizerv1.FederatedPlacement) error {
	modelPath := filepath.Join(os.TempDir(), "model.lp")
	solutionPath := filepath.Join(os.TempDir(), "solution.sol")

	// Clean up artifacts from previous reconciliation cycles
	os.Remove(modelPath)
	os.Remove(solutionPath)

	// Translate cluster state into a mathematical .lp string
	lpContent := generateLPFileContent(config, clusters, placements)
	if err := os.WriteFile(modelPath, []byte(lpContent), 0644); err != nil {
		return err
	}

	// Invoke Gurobi CLI with a 50s TimeLimit (Best-effort solution if optimal is not reached)
	cmd := exec.Command("gurobi_cl", "TimeLimit=50", "LogFile=", "ResultFile="+solutionPath, modelPath)
	_ = cmd.Run() // Exit code is ignored because Gurobi returns 1 on TimeLimit triggers

	// Verify if a feasible solution file was generated
	if _, err := os.Stat(solutionPath); os.IsNotExist(err) {
		return fmt.Errorf("infeasible model: gurobi could not find a valid distribution")
	}

	// Parse the .sol file and update the in-memory objects
	return applySolutionToPlacements(solutionPath, placements, clusters)
}

// generateLPFileContent builds the ILP model using the thesis' formal notation
func generateLPFileContent(config *optimizerv1.FederatedOperatorConfig, clusters []optimizerv1.FederatedCluster, placements []optimizerv1.FederatedPlacement) string {
	var lp strings.Builder

	// Model input parameters
	alpha, _ := strconv.ParseFloat(config.Spec.OptimizationWeight, 64)     // α trade-off
	kConst, _ := strconv.ParseFloat(config.Spec.NormalizationConstant, 64) // k scaling factor
	budgetB, _ := strconv.ParseFloat(config.Spec.TotalBudget, 64)          // B budget constraint

	var allVars []string
	var costTerms []string
	var latencyTerms []string

	// SECTION 1: Objective Function (Equation 3.4: min Z = αC(x) + (1-α)kL(x))
	lp.WriteString("Minimize\n  obj: TotalCost_Weighted + TotalLatency_Weighted\n\n")

	lp.WriteString("Subject To\n")
	// Weight definitions for the multi-objective score
	lp.WriteString(fmt.Sprintf("  w_cost: TotalCost_Weighted - %f TotalCost = 0\n", alpha))
	lp.WriteString(fmt.Sprintf("  w_lat: TotalLatency_Weighted - %f TotalLatency = 0\n", (1.0-alpha)*kConst))

	// Constraint 3.5: Total operation cost must not exceed Budget B
	lp.WriteString(fmt.Sprintf("  global_budget: TotalCost <= %f\n", budgetB))

	for _, p := range placements {
		wName := strings.ReplaceAll(p.Name, "-", "_") // Sanitize names for variable naming
		ri := p.Status.HPARecommendation              // R_i: required replicas
		if ri <= 0 {
			continue
		}

		// d_i: Resource demand per replica (CPU/RAM)
		diCPU := p.Status.ResourceDemand.CPU.AsApproximateFloat64()     // In Cores
		rawMem := p.Status.ResourceDemand.Memory.AsApproximateFloat64() // In Bytes

		// Convert Bytes to GiB to match OpenCost pricing (1 GiB = 1024^3 Bytes)
		diMem := rawMem / (1024 * 1024 * 1024)

		// Cold Start fallback using DefaultEstimates
		if diCPU <= 0 || diMem <= 0 {
			diCPU = config.Spec.DefaultEstimates.CPU.AsApproximateFloat64()
			// Ensure the default estimate is also converted to GiB if stored in Bytes
			diMem = config.Spec.DefaultEstimates.Memory.AsApproximateFloat64() / (1024 * 1024 * 1024)
		}

		var xTerms []string
		for _, c := range clusters {
			cName := strings.ReplaceAll(c.Name, "-", "_")
			xVar := fmt.Sprintf("x_%s_%s", wName, cName) // x_ij
			yVar := fmt.Sprintf("y_%s_%s", wName, cName) // y_ij (unmet demand)
			allVars = append(allVars, xVar)
			xTerms = append(xTerms, xVar)

			// Unit cost c_ij = (CPU_demand * CPU_price) + (RAM_demand * RAM_price)
			cpuPrice, _ := strconv.ParseFloat(c.Status.UnitCosts.CPU, 64)
			memPrice, _ := strconv.ParseFloat(c.Status.UnitCosts.Memory, 64)
			cij := (diCPU * cpuPrice) + (diMem * memPrice)
			costTerms = append(costTerms, fmt.Sprintf("%f %s", cij, xVar))

			// Latency Misalignment Penalty (Constraint 3.7: y_ij >= h_ij * R_i - x_ij)
			hij := 0.0 // Target Traffic Fraction
			if val, ok := p.Spec.LatencyZones[c.Spec.Zone]; ok {
				hij, _ = strconv.ParseFloat(val, 64)
			}
			lp.WriteString(fmt.Sprintf("  lat_lin_%s_%s: %s + %s >= %f\n", wName, cName, xVar, yVar, hij*float64(ri)))
			latencyTerms = append(latencyTerms, yVar)
		}
		// Workload Demand Constraint: sum of placements must match HPA recommendation
		lp.WriteString(fmt.Sprintf("  demand_satisfaction_%s: %s = %d\n", wName, strings.Join(xTerms, " + "), ri))
	}

	// Summation of global cost and latency components
	lp.WriteString(fmt.Sprintf("  sum_total_cost: %s - TotalCost = 0\n", strings.Join(costTerms, " + ")))
	lp.WriteString(fmt.Sprintf("  sum_total_lat: %s - TotalLatency = 0\n", strings.Join(latencyTerms, " + ")))

	// Constraint 3.6: Hard physical capacity limits (On-Premise clusters only)
	for _, c := range clusters {
		if c.Spec.IsOnPremise {
			cName := strings.ReplaceAll(c.Name, "-", "_")
			var cpuTerms []string
			var memTerms []string

			for _, p := range placements {
				wVar := fmt.Sprintf("x_%s_%s", strings.ReplaceAll(p.Name, "-", "_"), cName)
				dCPU := p.Status.ResourceDemand.CPU.AsApproximateFloat64()
				dMem := p.Status.ResourceDemand.Memory.AsApproximateFloat64()
				if dCPU <= 0 {
					dCPU = config.Spec.DefaultEstimates.CPU.AsApproximateFloat64()
				}
				if dMem <= 0 {
					dMem = config.Spec.DefaultEstimates.Memory.AsApproximateFloat64()
				}

				cpuTerms = append(cpuTerms, fmt.Sprintf("%f %s", dCPU, wVar))
				memTerms = append(memTerms, fmt.Sprintf("%f %s", dMem, wVar))
			}

			// CPU and Memory limits must be respected independently
			lp.WriteString(fmt.Sprintf("  cap_cpu_%s: %s <= %f\n", cName, strings.Join(cpuTerms, " + "), c.Status.Capacity.CPU.AsApproximateFloat64()))
			lp.WriteString(fmt.Sprintf("  cap_mem_%s: %s <= %f\n", cName, strings.Join(memTerms, " + "), c.Status.Capacity.Memory.AsApproximateFloat64()))
		}
	}

	// Section Generals: Force variables to be Integers (Constraint 3.9)
	lp.WriteString("\nGenerals\n")
	for _, v := range allVars {
		lp.WriteString(fmt.Sprintf("  %s\n", v))
	}
	lp.WriteString("End\n")

	return lp.String()
}

// applySolutionToPlacements parses the .sol file to extract x_ij values
func applySolutionToPlacements(solutionPath string, placements []optimizerv1.FederatedPlacement, clusters []optimizerv1.FederatedCluster) error {
	content, _ := os.ReadFile(solutionPath)
	lines := strings.Split(string(content), "\n")
	resets := make(map[string]bool)

	for _, line := range lines {
		parts := strings.Fields(line)
		// Only parse lines starting with the decision variable prefix 'x_'
		if len(parts) < 2 || !strings.HasPrefix(parts[0], "x_") {
			continue
		}

		val, _ := strconv.ParseFloat(parts[1], 64)
		if val < 0.5 {
			continue
		} // Variable was assigned 0 replicas

		// Split variable name back into workload and cluster components
		nameParts := strings.Split(parts[0], "_") // index 0='x', 1=workload, 2=cluster
		wName, cName := nameParts[1], nameParts[2]

		for i := range placements {
			if strings.ReplaceAll(placements[i].Name, "-", "_") == wName {
				// Reset the placement map upon first discovery in the solution file
				if !resets[wName] {
					placements[i].Status.PlacementMap = make(map[string]int32)
					resets[wName] = true
				}
				// Re-match underscored name to the actual Kubernetes cluster object
				for _, cl := range clusters {
					if strings.ReplaceAll(cl.Name, "-", "_") == cName {
						placements[i].Status.PlacementMap[cl.Name] = int32(math.Round(val))
					}
				}
			}
		}
	}
	return nil
}
