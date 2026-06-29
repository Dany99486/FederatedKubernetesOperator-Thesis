# Liqo Installation and Peering (v1.1.1)

This guide describes the process of installing Liqo and establishing peering between the **CMCcluster** (Consumer) and the **membercluster** (Provider).

---

## 1. Installing Liqo on Clusters

Liqo must be installed on the **Master** nodes of both clusters. The installer will automatically detect available Worker nodes to host the infrastructure components.

To install the Liqo CLI, run the following commands:

```bash
curl --fail -LS "https://github.com/liqotech/liqo/releases/download/v1.1.1/liqoctl-linux-amd64.tar.gz" | tar -xz
sudo install -o root -g root -m 0755 liqoctl /usr/local/bin/liqoctl

```

### On CMCcluster (Consumer):

```bash
liqoctl install kubeadm --cluster-id cmccluster

```

### On membercluster (Provider):

```bash
liqoctl install kubeadm --cluster-id membercluster

```

---

## 2. Peering Procedure (v1.1.1)

In version 1.1.1, Liqo uses the remote cluster's configuration file to establish trust. Due to laboratory network restrictions (absence of an external LoadBalancer), we use the NodePort service type for the Gateway.

### Step A: Obtain credentials on Member

In the **membercluster** terminal, display the contents of the configuration file and copy it:

```bash
cat ~/.kube/config

```

### Step B: Configure credentials on CMC

In the **CMCcluster** terminal, create a file to store the remote cluster keys:

```bash
nano ~/member-kubeconfig.yaml

```

*(Paste the contents copied from Step A and save the file)*

### Step C: Execute Peering

In the **CMCcluster** terminal, run the join command pointing to the created file:

```bash
liqoctl peer --remote-kubeconfig ~/member-kubeconfig.yaml --gw-server-service-type NodePort --cpu="1000m" --memory="2Gi"

```

---

## 3. Hybrid Offloading (Operator Target Configuration)

To allow the Custom Operator to decide the exact mathematical distribution of replicas across local and remote clusters (the $x_{ij}$ placement map), the namespace must permit hybrid execution. The Operator will then enforce strict placement by injecting `NodeSelectors` into dynamically generated Shadow Deployments.

### Configure the `federated-workloads` Namespace:

On the **CMCcluster**, run the following commands to enable hybrid offloading for all connected clusters:

```bash
# 1. Create the unified namespace
kubectl create namespace federated-workloads

# 2. Enable offloading, permitting execution on both local and remote environments
liqoctl offload namespace federated-workloads \
  --pod-offloading-strategy LocalAndRemote

```

> **Note:** The restrictive `--selector` flag is intentionally omitted here. This allows the unified `federated-workloads` namespace to utilize any peered member clusters dynamically. The Custom Operator handles the specific target routing using the `liqo.io/remote-cluster-id` labels.

---

## 4. Status Verification

To confirm if the connection and offload were successfully established:

```bash
# View general peering info
liqoctl info

```