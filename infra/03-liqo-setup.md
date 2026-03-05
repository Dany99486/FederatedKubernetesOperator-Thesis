# Instalação e Peering do Liqo (v1.1.0)

Este guia descreve o processo de instalação do Liqo e o estabelecimento do emparelhamento (*peering*) entre o **CMCcluster** (Consumidor) e o **membercluster** (Fornecedor).

---

## 1. Instalação do Liqo nos Clusters

O Liqo deve ser instalado nos nós **Master** de ambos os clusters. O instalador detetará automaticamente os nós Worker disponíveis para alojar os componentes da infraestrutura.

### No CMCcluster (Consumidor):

```bash
liqoctl install kubeadm --cluster-id cmc-cluster

```

### No membercluster (Fornecedor):

```bash
liqoctl install kubeadm --cluster-id member-cluster

```

---

## 2. Procedimento de Peering (v1.1.0)

Na versão 1.1.0, o Liqo utiliza o ficheiro de configuração do cluster remoto para estabelecer a confiança. Devido às restrições de rede do laboratório (ausência de LoadBalancer externo), utilizamos o tipo de serviço **NodePort** para a Gateway.

### Passo A: Obter credenciais no Member

No terminal do **membercluster**, exibe o conteúdo do ficheiro de configuração:

```bash
cat ~/.kube/config

```

### Passo B: Configurar credenciais no CMC

No terminal do **CMCcluster**, cria um ficheiro para armazenar as chaves do cluster remoto:

```bash
nano ~/member-kubeconfig.yaml

```

### Passo C: Executar o Peering

No terminal do **CMCcluster**, executa o comando de união apontando para o ficheiro criado:

```bash
liqoctl peer --remote-kubeconfig ~/member-kubeconfig.yaml --gw-server-service-type NodePort

```

---

## 3. Offloading Seletivo (Configuração de Alvo)

Para que o Operador possa decidir para qual cluster enviar o trabalho (variável $j$), utilizamos namespaces "offloaded" com seletores específicos.

### Configurar o Namespace `member-ns`:

No **CMCcluster**, executa os seguintes comandos para garantir que o trabalho é enviado exclusivamente para o cluster remoto:

```bash
# 1. Limpar configurações anteriores (opcional)
kubectl delete namespace member-ns --ignore-not-found

# 2. Criar o namespace
kubectl create namespace member-ns

# 3. Ativar o offload forçando a execução remota no ID específico
liqoctl offload namespace member-ns \
  --pod-offloading-strategy Remote \
  --selector 'liqo.io/remote-cluster-id=member-cluster'

```



---

## 4. Verificação do Estado

Para confirmar se a ligação e o offload foram estabelecidos com sucesso:

```bash
# Ver info geral do peering
liqoctl info

# Verificar se o namespace gémeo foi criado no membercluster
kubectl get namespaces --context member-context # Substituir pelo contexto correto se necessário

```

---
