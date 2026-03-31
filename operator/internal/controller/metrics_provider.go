package controller

import (
	"context"
	"fmt"
	"time"

	"k8s.io/apimachinery/pkg/api/resource"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
	prometheusv1 "github.com/prometheus/client_golang/api/prometheus/v1"
	"github.com/prometheus/common/model"
)

// GetNodeCostsFromPrometheus returns the ResourceCosts struct
func GetNodeCostsFromPrometheus(ctx context.Context, api prometheusv1.API, nodeName string) (optimizerv1.ResourceCosts, prometheusv1.Warnings, error) {
	costs := optimizerv1.ResourceCosts{CPU: "0.0000", Memory: "0.0000"}
	var allWarnings prometheusv1.Warnings

	// CPU Query
	valCPU, warnCPU, err := api.Query(ctx, fmt.Sprintf("node_cpu_hourly_cost{node='%s'}", nodeName), time.Now())
	if err != nil {
		return costs, warnCPU, err
	}
	allWarnings = append(allWarnings, warnCPU...)

	if vector, ok := valCPU.(model.Vector); ok && len(vector) > 0 {
		costs.CPU = fmt.Sprintf("%.8f", float64(vector[0].Value))
	}

	// Memory Query
	valMem, warnMem, err := api.Query(ctx, fmt.Sprintf("node_ram_hourly_cost{node='%s'}", nodeName), time.Now())
	if err != nil {
		return costs, append(allWarnings, warnMem...), err
	}
	allWarnings = append(allWarnings, warnMem...)

	if vector, ok := valMem.(model.Vector); ok && len(vector) > 0 {
		costs.Memory = fmt.Sprintf("%.8f", float64(vector[0].Value))
	}

	return costs, allWarnings, nil
}

// GetWorkloadMetricsFromPrometheus returns the ResourceStats ($d_i$) for a specific deployment,
// metrics are averaged over a 2-minute window to smooth out fluctuations.
// It queries both CPU usage (in millicores) and Memory usage (in bytes).
func GetWorkloadMetricsFromPrometheus(ctx context.Context, api prometheusv1.API, namespace string, deploymentName string) (optimizerv1.ResourceStats, error) {
	stats := optimizerv1.ResourceStats{}

	// --- CPU Demand (d_i_cpu) Calculation ---
	// Uses 'sum by (pod)' to capture the total CPU footprint of each replica (ignoring no containers).
	// Aggregated over a 2-minute window to smooth out transient spikes.
	cpuQuery := fmt.Sprintf("avg(sum by (pod) (rate(container_cpu_usage_seconds_total{namespace='%s', pod=~'%s-.*', container!=''}[2m])))",
		namespace, deploymentName)

	valCPU, _, err := api.Query(ctx, cpuQuery, time.Now())
	if err != nil {
		return stats, err
	}

	if vector, ok := valCPU.(model.Vector); ok && len(vector) > 0 {
		// Direct assignment using NewMilliQuantity (converts cores to millicores)
		stats.CPU = *resource.NewMilliQuantity(int64(float64(vector[0].Value)*1000), resource.DecimalSI)
		fmt.Printf("DEBUG: CPU d_i calculated for %s, %f\n", deploymentName, (vector[0].Value)*1e9)
	}

	// --- Memory Demand (d_i_mem) Calculation ---
	// Aggregates 'working_set_bytes' for all containers per Pod, then averages across replicas.
	// This captures the total memory pressure, including the 'pause' container overhead.
	memQuery := fmt.Sprintf("avg(sum by (pod) (avg_over_time(container_memory_working_set_bytes{namespace='%s', pod=~'%s-.*', container!=''}[2m])))",
		namespace, deploymentName)

	valMem, _, err := api.Query(ctx, memQuery, time.Now())
	if err != nil {
		return stats, err
	}

	if vector, ok := valMem.(model.Vector); ok && len(vector) > 0 {
		memBytes := float64(vector[0].Value)

		memKi := int64(memBytes / 1024)

		parsedMem, err := resource.ParseQuantity(fmt.Sprintf("%dKi", memKi))
		if err == nil {
			stats.Memory = parsedMem
			fmt.Printf("DEBUG: Memory d_i calculated for %s: %s\n", deploymentName, stats.Memory.String())
		}
	}

	return stats, nil
}
