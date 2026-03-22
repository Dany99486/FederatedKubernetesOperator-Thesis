package controller

import (
	"context"
	"fmt"
	"time"

	optimizerv1 "github.com/Dany99486/FederatedKubernetesOperator-Thesis/operator/api/v1"
	prometheusv1 "github.com/prometheus/client_golang/api/prometheus/v1"
	"github.com/prometheus/common/model"
)

// NodeCosts stores hourly cost data for both CPU and RAM
type NodeCosts struct {
	CPU string
	RAM string
}

// GetNodeCostsFromPrometheus returns the ResourceCosts struct directly
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
		costs.CPU = fmt.Sprintf("%.4f", float64(vector[0].Value))
	}

	// Memory Query
	valMem, warnMem, err := api.Query(ctx, fmt.Sprintf("node_ram_hourly_cost{node='%s'}", nodeName), time.Now())
	if err != nil {
		return costs, append(allWarnings, warnMem...), err
	}
	allWarnings = append(allWarnings, warnMem...)

	if vector, ok := valMem.(model.Vector); ok && len(vector) > 0 {
		costs.Memory = fmt.Sprintf("%.4f", float64(vector[0].Value))
	}

	return costs, allWarnings, nil
}
