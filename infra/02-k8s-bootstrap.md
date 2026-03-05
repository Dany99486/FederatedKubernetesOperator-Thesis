# Inicialização dos Clusters e Rede (Flannel)

Este guia descreve os comandos a executar nos nós **Master** e **Worker** de cada cluster após a execução do script inicial de configuração (`01-setup-base.sh`).

---

## 1. Configuração do Cluster CMC (Consumidor)
**Nós:** `CMCcluster` (10.3.3.138) e `cmc-worker1` (10.3.3.156)

### No CMCcluster (Master):

1.  **Inicializar o Control Plane:**
    ```bash
    sudo kubeadm init --pod-network-cidr=10.244.0.0/16
    ```

2.  **Configurar o acesso ao kubectl:**
    ```bash
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    ```

3.  **Instalar o Plugin de Rede Flannel:**
    ```bash
    kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
    ```

### No cmc-worker1 (Worker):

1.  **Juntar ao cluster:**
    Utilize o comando `kubeadm join` que foi gerado no ecrã do **CMCcluster** após o `init`. O comando terá este formato:
    ```bash
    sudo kubeadm join 10.3.3.138:6443 --token <TOKEN_DO_CMC> \
        --discovery-token-ca-cert-hash sha256:<HASH_DO_CMC>
    ```

---

## 2. Configuração do Cluster Member (Fornecedor)
**Nós:** `membercluster` (10.3.3.74) e `memberworker` (10.3.1.38)

### No membercluster (Master):

1.  **Inicializar o Control Plane:**
    ```bash
    sudo kubeadm init --pod-network-cidr=10.244.0.0/16
    ```

2.  **Configurar o acesso ao kubectl:**
    ```bash
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    ```

3.  **Instalar o Plugin de Rede Flannel:**
    ```bash
    kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
    ```

### No memberworker (Worker):

1.  **Juntar ao cluster:**
    Utilize o comando `kubeadm join` gerado no ecrã do **membercluster**:
    ```bash
    sudo kubeadm join 10.3.3.74:6443 --token <TOKEN_DO_MEMBER> \
        --discovery-token-ca-cert-hash sha256:<HASH_DO_MEMBER>
    ```

---

> [!IMPORTANT]
> Se perderes o comando de join, podes gerar um novo no Master com: `kubeadm token create --print-join-command`