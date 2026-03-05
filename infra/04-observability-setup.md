# Configuração da Camada de Observabilidade

Este documento detalha a instalação da *stack* de monitorização necessária para fornecer dados em tempo real ao Operador de Otimização. Estas ferramentas permitem o cálculo dos coeficientes financeiros e a monitorização do desempenho da federação.

---

## 1. Instalação do Helm

O **Helm** é o gestor de pacotes essencial para instalar e gerir a complexidade das ferramentas de observabilidade em ambiente Kubernetes. Deve ser instalado em todos os nós **Control Plane**.

```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4 | bash

```

---

## 2. Configuração do OpenCost (Nos Member Clusters)

O **OpenCost** é o componente responsável por detetar os tipos de instâncias e gerar os custos unitários ($c_{ij}$) por CPU e RAM por hora. Estes dados são críticos para a função objetivo do teu modelo matemático.

```bash
# Adicionar o repositório oficial
helm repo add opencost https://opencost.github.io/opencost/

# Instalar o OpenCost no namespace dedicado
helm install opencost opencost/opencost \
  --namespace opencost \
  --create-namespace

```

---

## 3. Configuração do Prometheus (No CMCcluster)

O **Prometheus Central** atuará como o "cérebro" de métricas, agregando os dados financeiros (vindos do OpenCost) e os dados de utilização de toda a federação.

```bash
# Adicionar o repositório da comunidade
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm update

# Instalar a stack completa (Prometheus, Grafana, AlertManager)
helm install prometheus prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --create-namespace

```

---

## 4. Metrics Server e HPA

Para que o teu Operador consiga ler o valor de $R_i$ (a âncora dinâmica de réplicas desejadas) e reagir a variações de carga, o cluster necessita do **Metrics Server**. Este componente permite que o Horizontal Pod Autoscaler (HPA) e o `kubectl top` funcionem corretamente.

```bash
# Instalação do Metrics Server via Helm
helm install metrics-server bitnami/metrics-server \
  --namespace kube-system \
  --set apiService.create=true \
  --set extraArgs.kubelet-insecure-tls=true

```

> **Nota:** O argumento `kubelet-insecure-tls` é frequentemente necessário em ambientes de laboratório/Kubeadm onde os certificados do Kubelet são self-signed.

---

## 5. Verificação da Camada de Dados

Após a instalação, podes validar se as métricas estão a ser expostas corretamente:

* **Verificar Métricas de Nós/Pods:** `kubectl top nodes`
* **Verificar API de Métricas:** `kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes`

---