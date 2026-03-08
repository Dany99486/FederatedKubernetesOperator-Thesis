# Cluster and Network Initialization (Flannel)

This guide describes the commands to be executed on the **Master** and **Worker** nodes of each cluster after running the initial configuration script (`01-setup-base.sh`).

---

## 1. CMC Cluster Configuration (Consumer)
**Nodes:** `CMCcluster` (10.3.3.138) and `cmc-worker1` (10.3.3.156)

### On CMCcluster (Master):

1.  **Initialize the Control Plane:**
    ```bash
    sudo kubeadm init --pod-network-cidr=10.244.0.0/16
    ```

2.  **Configure kubectl access:**
    ```bash
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    ```

3.  **Install the Flannel Network Plugin:**
    ```bash
    kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
    ```



### On cmc-worker1 (Worker):

1.  **Join the cluster:**
    Use the `kubeadm join` command that was generated on the **CMCcluster** screen after the `init`. The command will look like this:
    ```bash
    sudo kubeadm join 10.3.3.138:6443 --token <CMC_TOKEN> \
        --discovery-token-ca-cert-hash sha256:<CMC_HASH>
    ```

---

## 2. Member Cluster Configuration (Provider)
**Nodes:** `membercluster` (10.3.3.74) and `memberworker` (10.3.1.38)

### On membercluster (Master):

1.  **Initialize the Control Plane:**
    ```bash
    sudo kubeadm init --pod-network-cidr=10.244.0.0/16
    ```

2.  **Configure kubectl access:**
    ```bash
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    ```

3.  **Install the Flannel Network Plugin:**
    ```bash
        kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
    ```

### On memberworker (Worker):

1.  **Join the cluster:**
    Use the `kubeadm join` command generated on the **membercluster** screen:
    ```bash
    sudo kubeadm join 10.3.3.74:6443 --token <MEMBER_TOKEN> \
        --discovery-token-ca-cert-hash sha256:<MEMBER_HASH>
    ```

---

> [!IMPORTANT]
> If you lose the join command, you can generate a new one on the Master using: `kubeadm token create --print-join-command`