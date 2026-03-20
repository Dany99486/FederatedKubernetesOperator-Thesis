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

// FederatedClusterStatus defines observed infrastructure metrics.
type FederatedClusterStatus struct {
	// UnitCost ($c_{ij}$): Current cost per replica obtained via OpenCost
	// +kubebuilder:validation:Pattern=`^([0-9]+(\.[0-9]+)?)$`
	UnitCost string `json:"unitCost,omitempty"`

	// CurrentCapacity ($Capacity_j$): Available capacity read from the
	// virtual node's allocatable field in the CMC
	// +kubebuilder:validation:Minimum=0
	CurrentCapacity int32 `json:"currentCapacity,omitempty"`

	// Conditions represent the health and connection status of the cluster.
	Conditions []metav1.Condition `json:"conditions,omitempty"`
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
