# Liqo Installation and Peering (v1.1.0)

This guide describes the process of installing Liqo and establishing peering between the **CMCcluster** (Consumer) and the **membercluster** (Provider).

---

## 1. Installing Liqo on Clusters

Liqo must be installed on the **Master** nodes of both clusters. The installer will automatically detect available Worker nodes to host the infrastructure components.

### On CMCcluster (Consumer):

```bash
liqoctl install kubeadm --cluster-id cmccluster

```

### On membercluster (Provider):

```bash
liqoctl install kubeadm --cluster-id membercluster

```

---

## 2. Peering Procedure (v1.1.0)

In version 1.1.0, Liqo uses the remote cluster's configuration file to establish trust. Due to laboratory network restrictions (absence of an external LoadBalancer), we use the NodePort service type for the Gateway.

### Step A: Obtain credentials on Member

In the **membercluster** terminal, display the contents of the configuration file:

```bash
cat ~/.kube/config

```

### Step B: Configure credentials on CMC

In the **CMCcluster** terminal, create a file to store the remote cluster keys:

```bash
nano ~/member-kubeconfig.yaml

```

### Step C: Execute Peering

In the **CMCcluster** terminal, run the join command pointing to the created file:

```bash
liqoctl peer --remote-kubeconfig ~/member-kubeconfig.yaml --gw-server-service-type NodePort

```

---

## 3. Selective Offloading (Target Configuration)

To allow the Operator to decide which cluster to send the workload to (variable j), we use "offloaded" namespaces with specific selectors.

### Configure the `member-ns` Namespace:

On the **CMCcluster**, run the following commands to ensure the workload is sent exclusively to the remote cluster:

```bash

# 1. Create the namespace
kubectl create namespace member-ns

# 2. Enable offloading, forcing remote execution on the specific ID
liqoctl offload namespace member-ns \
  --pod-offloading-strategy Remote \
  --selector 'liqo.io/remote-cluster-id=membercluster'

```



---

## 4. Status Verification

To confirm if the connection and offload were successfully established:

```bash
# View general peering info
liqoctl info

```

---
