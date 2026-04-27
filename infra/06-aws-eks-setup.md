# AWS EKS Cluster Setup (Provider)

This guide documents the provisioning of a managed cluster on AWS for Kubernetes federation expansion, using `eksctl` to automate the infrastructure and identity configuration.

---

## 1. Cluster Creation
The cluster is created in the `eu-west-1` region (Ireland). The `--with-oidc` flag is crucial as it enables **IAM Roles for Service Accounts (IRSA)**, which is necessary for this project for the following reasons:

* **Secure Tool Integration:** It allows **OpenCost** to securely access AWS billing APIs and **Liqo** to manage cross-cluster networking without requiring static Access Keys.
* **Least Privilege Security:** Permissions are granted directly to specific Pods (Service Accounts) rather than the entire worker node, minimizing the blast radius.
* **Credential Automation:** It eliminates the need to manually manage or rotate Kubernetes Secrets for AWS authentication by using temporary, scoped-down credentials.

```bash
eksctl create cluster \
  --name member-aws \
  --region eu-west-1 \
  --nodegroup-name standard-nodes \
  --node-type t3.medium \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed \
  --with-oidc
```

> **Note on Permissions (IAM):**
> In environments with restricted privileges, the user must ensure they have the minimum permissions for `eksctl` to provision resources. This includes managing **CloudFormation** stacks and IAM permissions for creating **Service-Linked Roles** (such as `iam:CreateServiceLinkedRole`), which are necessary for EKS to manage network resources and nodes on the user's behalf.

---

## 2. Readiness Verification
After provisioning, validate that the control plane and worker nodes are operational:

```bash
# List cluster nodes and check 'Ready' status
kubectl get nodes

# Check system pods across all namespaces
kubectl get pods -A
```

---

## 3. Next Steps
With the AWS infrastructure operational, proceed with the federation integration. Note that certain commands in subsequent guides (e.g., Liqo and Observability setup) must be adapted to account for the EKS managed environment instead of the local Kubeadm setup:
1.  Liqo installation (refer to `03-liqo-setup.md`).
2.  Observability layer configuration (refer to `04-observability-setup.md`).
