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

package v1

import (
	"k8s.io/apimachinery/pkg/api/resource"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// EDIT THIS FILE!  THIS IS SCAFFOLDING FOR YOU TO OWN!
// NOTE: json tags are required.  Any new fields you add must have json tags for the fields to be serialized.

// --- AUXILIARY STRUCTS (Place them here) ---

// AutoScalingSpec defines the parameters for the native HPA creation
type AutoScalingSpec struct {
	// MinReplicas is the lower limit for the number of replicas
	// +kubebuilder:validation:Minimum=1
	MinReplicas *int32 `json:"minReplicas,omitempty"` // Pointer to distinguish between zero and not specified.
	//														 int32 defaults to 0, so we use a pointer to allow nil (not specified).

	// MaxReplicas is the upper limit for the number of replicas
	// +kubebuilder:validation:Minimum=1
	// +kubebuilder:validation:Required
	MaxReplicas int32 `json:"maxReplicas"`

	// TargetCPUUtilization is the average CPU utilization percentage target
	// +kubebuilder:validation:Minimum=1
	// +kubebuilder:validation:Maximum=100
	TargetCPUUtilization *int32 `json:"targetCPUUtilization,omitempty"`
}

// ResourceStats represents the actual CPU and RAM consumption per replica (di)
type ResourceStats struct {
	// CPU is the average CPU usage discovered via Prometheus
	CPU resource.Quantity `json:"cpu,omitempty"`

	// Memory is the average RAM usage discovered via Prometheus
	Memory resource.Quantity `json:"memory,omitempty"`
}

// --- MAIN CRD STRUCTS ---

// FederatedPlacementSpec defines the distribution strategy for a workload.
type FederatedPlacementSpec struct {
	// TargetWorkload: Reference to the existing Deployment in the CMC
	// that the operator will manage
	// +kubebuilder:validation:MinLength=1
	// +kubebuilder:validation:Required
	TargetWorkload string `json:"targetWorkload"`

	// AutoScaling: Parameters for the automatic creation of the
	// native HPA (e.g., min/max replicas, target CPU)
	// +kubebuilder:validation:Required
	AutoScaling AutoScalingSpec `json:"autoScaling"`

	// LatencyZones ($h_{ij}$): Map of traffic fraction targets per
	// geographic zone (e.g., coimbra: 0.7)
	// +kubebuilder:validation:Required
	LatencyZones map[string]string `json:"latencyZones"`

	// Replicas is where the HPA will write its recommendation ($R_i$)
	// +kubebuilder:default=1
	Replicas *int32 `json:"replicas,omitempty"`
}

// FederatedPlacementStatus defines the data observed for this workload.
type FederatedPlacementStatus struct {
	// ObservedDemand ($R_i$): Total number of replicas requested by the HPA
	ObservedDemand int32 `json:"observedDemand,omitempty"`

	// ResourceDemand ($d_i$): Real resource consumption (CPU/RAM) per replica
	// discovered via Prometheus
	ResourceDemand ResourceStats `json:"resourceDemand,omitempty"`

	// PlacementMap ($x_{ij}$): Final calculated distribution of replicas
	// across federated clusters
	PlacementMap map[string]int32 `json:"placementMap,omitempty"`

	// Conditions represent the current state of the placement logic.
	Conditions []metav1.Condition `json:"conditions,omitempty"`

	// AllowedReplicas is the number of replicas approved by the global controller
	AllowedReplicas int32 `json:"allowedReplicas,omitempty"`

	// HPARecommendation is the last recommendation from the HPA
	HPARecommendation int32 `json:"hpaRecommendation,omitempty"`

	// --- Required for HPA to work ---
	// Replicas tracks the actual pods running in the target deployment
	Replicas int32 `json:"replicas,omitempty"`

	// Selector tells the HPA which pods to monitor for CPU/RAM
	Selector string `json:"selector,omitempty"`
}

// +kubebuilder:object:root=true
// +kubebuilder:subresource:status
// This marker enables the HPA to treat our CR as a scalable object
// +kubebuilder:subresource:scale:specpath=.spec.replicas,statuspath=.status.replicas,selectorpath=.status.selector

// FederatedPlacement is the Schema for the federatedplacements API.
type FederatedPlacement struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   FederatedPlacementSpec   `json:"spec,omitempty"`
	Status FederatedPlacementStatus `json:"status,omitempty"`
}

// +kubebuilder:object:root=true

// FederatedPlacementList contains a list of FederatedPlacement.
type FederatedPlacementList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []FederatedPlacement `json:"items"`
}

func init() {
	SchemeBuilder.Register(&FederatedPlacement{}, &FederatedPlacementList{})
}
