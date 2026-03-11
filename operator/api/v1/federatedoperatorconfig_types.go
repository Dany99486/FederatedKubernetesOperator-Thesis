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

// FederatedOperatorConfigSpec defines the global policy parameters.
type FederatedOperatorConfigSpec struct {
	// TotalBudget ($B$): Maximum financial limit for the operation cost 
	// of all federated workloads
	TotalBudget string `json:"totalBudget"`

	// OptimizationWeight ($\alpha$): Balance between infrastructure cost 
	// and latency penalty between 0 and 1, where 0 means only latency is considered and 1 means only cost is considered
	OptimizationWeight string `json:"optimizationWeight"`

	// NormalizationConstant ($k$): Scale used to normalize latency 
	// values against monetary values
	NormalizationConstant string `json:"normalizationConstant"`
}

// FederatedOperatorConfigStatus defines the observed global metrics.
type FederatedOperatorConfigStatus struct {
	// TotalCurrentCost ($\mathcal{C}(x)$): Current total cluster cost detected 
	// via Prometheus and OpenCost in the CMC
	TotalCurrentCost string `json:"totalCurrentCost,omitempty"`

	// GlobalMisalignmentScore ($\mathcal{L}(x)$): Global cluster latency score 
	// based on geographical targets
	GlobalMisalignmentScore string `json:"globalMisalignmentScore,omitempty"`

	// Conditions represent the latest available observations of the config state.
	Conditions []metav1.Condition `json:"conditions,omitempty"`
}

// +kubebuilder:object:root=true
// +kubebuilder:subresource:status

// FederatedOperatorConfig is the Schema for the federatedoperatorconfigs API.
type FederatedOperatorConfig struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   FederatedOperatorConfigSpec   `json:"spec,omitempty"`
	Status FederatedOperatorConfigStatus `json:"status,omitempty"`
}

// +kubebuilder:object:root=true

// FederatedOperatorConfigList contains a list of FederatedOperatorConfig.
type FederatedOperatorConfigList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []FederatedOperatorConfig `json:"items"`
}

func init() {
	SchemeBuilder.Register(&FederatedOperatorConfig{}, &FederatedOperatorConfigList{})
}
