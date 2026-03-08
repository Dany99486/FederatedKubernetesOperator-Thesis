# Observability Layer Configuration

This document details the installation of the monitoring stack required to provide real-time data to the Optimization Operator. These tools enable the calculation of financial coefficients and the monitoring of federation performance.

---

## 1. Helm Installation

**Helm** is the essential package manager for installing and managing the complexity of observability tools in a Kubernetes environment. It must be installed on all **Control Plane** nodes.

```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4 | bash

```

---

## 2. OpenCost Configuration (Member Clusters)

**OpenCost** is the component responsible for detecting instance types and generating unit costs (c_ij​) per CPU and RAM per hour. This data is critical for your mathematical model's objective function.

```bash
# Add the official repository
helm repo add opencost https://opencost.github.io/opencost-helm-chart

# Install OpenCost in the dedicated namespace
helm install opencost opencost/opencost -f opencostOnPremise-values.yaml -n opencost --create-namespace

```

---

## 3. Prometheus Configuration (CMCcluster)

**Prometheus Central** will act as the metrics "brain," aggregating financial data (from OpenCost) and utilization data from the entire federation.

```bash
# Add the community repository
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm update

# Install the full stack (Prometheus, Grafana, AlertManager)
helm install prometheus prometheus-community/kube-prometheus-stack -f prometheus-values.yaml -n monitoring --create-namespace

```

---

## 4. Metrics Server and HPA

For your Operator to read the value of Ri​ (the dynamic anchor of desired replicas) and react to load variations, the cluster requires the **Metrics Server**. This component allows the Horizontal Pod Autoscaler (HPA) and `kubectl top` to function correctly.

```bash
# Add the community repository
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/

# Install Metrics Server via Helm
helm install metrics-server metrics-server/metrics-server \
  -f metrics-values.yaml \
  -n kube-system
```

> **Note:** The `kubelet-insecure-tls` argument is often required in lab/Kubeadm environments where Kubelet certificates are self-signed.

---

## 5. Data Layer Verification

After installation, you can validate if metrics are being exposed correctly:

* **Check Node/Pod Metrics:** `kubectl top nodes`
* **Check Metrics API:** `kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes`

---