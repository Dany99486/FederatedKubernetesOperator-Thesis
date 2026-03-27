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

// FederatedClusterSpec defines the infrastructure configuration.
type FederatedClusterSpec struct {
	// Zone: Geographic identifier to match $h_{ij}$ targets
	// +kubebuilder:validation:MinLength=1
	// +kubebuilder:validation:Required
	Zone string `json:"zone"`

	// IsOnPremise: If true, triggers physical capacity constraints ($Capacity_j$)
	IsOnPremise bool `json:"isOnPremise"`
}

// ClusterResources represents the physical/virtual limits of a cluster (When empty)
type ClusterResources struct {
	// CPU ($Capacity_j$): Max millicores available (e.g., 4000)
	CPU resource.Quantity `json:"cpu"`

	// Memory ($Capacity_j$): Max MiB available (e.g., 8192)
	Memory resource.Quantity `json:"memory"`
}

// ResourceCosts represents the hourly pricing from OpenCost
type ResourceCosts struct {
	// CPU ($c_{cpu}$): Hourly cost per millicore
	CPU string `json:"cpu"`

	// Memory ($c_{mem}$): Hourly cost per MiB
	Memory string `json:"memory"`
}

// FederatedClusterStatus defines observed infrastructure metrics.
type FederatedClusterStatus struct {
	// Capacity defines the total resources of the cluster
	Capacity ClusterResources `json:"capacity,omitempty"`

	// UnitCosts defines the real-time pricing for those resources
	UnitCosts ResourceCosts `json:"unitCosts,omitempty"`

	// Conditions represent the health of the cluster connection
	Conditions []metav1.Condition `json:"conditions,omitempty"` // TODO: Implement
}

// +kubebuilder:object:root=true
// +kubebuilder:subresource:status

// FederatedCluster is the Schema for the federatedclusters API.
type FederatedCluster struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   FederatedClusterSpec   `json:"spec,omitempty"`
	Status FederatedClusterStatus `json:"status,omitempty"`
}

// +kubebuilder:object:root=true

// FederatedClusterList contains a list of FederatedCluster.
type FederatedClusterList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []FederatedCluster `json:"items"`
}

func init() {
	SchemeBuilder.Register(&FederatedCluster{}, &FederatedClusterList{})
}
