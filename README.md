# FederatedKubernetesOperator

## Contexto Académico
[cite_start]Este repositório contém o desenvolvimento prático da dissertação **"A FEDERATED OPERATOR FOR KUBERNETES"** [cite: 5][cite_start], apresentada no âmbito do Mestrado em Engenharia Informática (Especialização em Engenharia de Software) da Faculdade de Ciências e Tecnologia da Universidade de Coimbra[cite: 6].

## Resumo do Projeto
[cite_start]O objetivo central é enfrentar a complexidade da gestão de cargas de trabalho em infraestruturas multi-cloud distribuídas[cite: 33]. [cite_start]Propõe-se o desenvolvimento de um **Operador Federado** que automatiza a colocação de réplicas através de um ambiente multi-cluster, utilizando um modelo de otimização multiobjetivo[cite: 35, 36].

## 🏗️ Arquitetura do Sistema
[cite_start]O sistema adota uma arquitetura de **Plano de Controlo Centralizado (CMC)** [cite: 461, 539][cite_start], estruturada em três camadas lógicas fundamentais[cite: 484, 540]:

1.  [cite_start]**Camada de Observação**: Responsável pela recolha de telemetria em tempo real, incluindo custos de infraestrutura e distribuição de réplicas[cite: 492, 493].
2.  [cite_start]**Camada de Decisão**: Onde o Operador executa a heurística de otimização para reconciliar o estado desejado com o observado[cite: 494, 495].
3.  [cite_start]**Camada de Atuação**: Utiliza os clusters membros como camada de execução, abstraídos como **Virtual Nodes** para permitir o agendamento via primitivas nativas do Kubernetes[cite: 496, 497].



## 🧠 Modelo de Otimização
[cite_start]A solução visa minimizar um score global $$Z$$, equilibrando a eficiência financeira e a performance geográfica[cite: 368, 422]:

$$min_{x}Z = \alpha \cdot \mathcal{C}(x) + (1 - \alpha) \cdot \mathcal{L}(x)$$

* [cite_start]**$\mathcal{C}(x)$ (Custo)**: Função linear baseada no custo unitário por réplica em cada cluster[cite: 393, 396].
* [cite_start]**$\mathcal{L}(x)$ (Latência)**: Penalização baseada no desalinhamento entre a distribuição real de réplicas e as "Zonas de Latência" (alvos de tráfego de utilizadores)[cite: 398, 415].
* [cite_start]**$\alpha$**: Fator de ponderação entre gasto financeiro e latência de rede[cite: 421].
* [cite_start]**Restrições**: O modelo respeita um orçamento total $$B$$ e os limites físicos de capacidade de cada cluster[cite: 425, 426].

## 🛠️ Stack Tecnológica
* [cite_start]**Desenvolvimento**: Go e Operator SDK[cite: 37, 118, 504].
* [cite_start]**Federação**: Liqo (abstração de Virtual Nodes)[cite: 37, 304, 508].
* [cite_start]**Observabilidade**: Prometheus (métricas de utilização) e Kubecost/OpenCost (dados financeiros)[cite: 38, 511].
* [cite_start]**Escalonamento**: Integração com o Horizontal Pod Autoscaler (HPA) para definir o número total de réplicas necessárias ($R_i$)[cite: 668, 675].

## 📂 Estrutura do Repositório
* `/infra`: Scripts e configurações para o laboratório multi-cluster e peering do Liqo.
* `/charts`: Ficheiros `values.yaml` personalizados para Helm (Prometheus, OpenCost).
* `/operator`: Código-fonte do Federated Operator gerado pelo Operator SDK.
    * `/api`: Definições do Custom Resource (CRD) `FederatedPlacement`.
    * `/controllers`: Lógica do loop de reconciliação e implementação da heurística.
* `/deploy`: Manifestos para workloads de teste e políticas de colocação.

## 📅 Planeamento (2º Semestre)
[cite_start]De acordo com o cronograma definido na dissertação[cite: 576, 584]:
* **Mês 1**: Configuração do Ambiente e Peering (Tarefa 1).
* **Mês 2**: Implementação base do Operador e CRDs (Tarefa 2).
* **Mês 3**: Integração da Lógica Heurística (Tarefa 3).
* **Mês 4**: Testes e Validação em cenários reais (Tarefa 4).
* **Mês 5**: Escrita final e análise de resultados (Tarefa 5).
