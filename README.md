# FederatedKubernetesOperator

## Contexto Académico
Este repositório contém o desenvolvimento prático da dissertação **"A FEDERATED OPERATOR FOR KUBERNETES"**, apresentada no âmbito do Mestrado em Engenharia Informática (Especialização em Engenharia de Software) da Faculdade de Ciências e Tecnologia da Universidade de Coimbra.

## Resumo do Projeto
O objetivo central é enfrentar a complexidade da gestão de cargas de trabalho em infraestruturas multi-cloud distribuídas. Propõe-se o desenvolvimento de um **Operador Federado** que automatiza a colocação de réplicas através de um ambiente multi-cluster, utilizando um modelo de otimização multiobjetivo.

## Arquitetura do Sistema
O sistema adota uma arquitetura de **Plano de Controlo Centralizado (CMC)**, estruturada em três camadas lógicas fundamentais:

1.  **Camada de Observação**: Responsável pela recolha de telemetria em tempo real, incluindo custos de infraestrutura e distribuição de réplicas.
2.  **Camada de Decisão**: Onde o Operador executa a heurística de otimização para reconciliar o estado desejado com o observado.
3.  **Camada de Atuação**: Utiliza os clusters membros como camada de execução, abstraídos como **Virtual Nodes** para permitir o agendamento via primitivas nativas do Kubernetes.



## Modelo de Otimização
A solução visa minimizar um score global $$Z$$, equilibrando a eficiência financeira e a performance geográfica:

$$min_{x}Z = \alpha \cdot \mathcal{C}(x) + (1 - \alpha) \cdot \mathcal{L}(x)$$

* **$\mathcal{C}(x)$ (Custo)**: Função linear baseada no custo unitário por réplica em cada cluster.
* **$\mathcal{L}(x)$ (Latência)**: Penalização baseada no desalinhamento entre a distribuição real de réplicas e as "Zonas de Latência" (alvos de tráfego de utilizadores).
* **$\alpha$**: Fator de ponderação entre gasto financeiro e latência de rede.
* **Restrições**: O modelo respeita um orçamento total $$B$$ e os limites físicos de capacidade de cada cluster.

## Stack Tecnológica
* **Desenvolvimento**: Go e Operator SDK.
* **Federação**: Liqo (abstração de Virtual Nodes).
* **Observabilidade**: Prometheus (métricas de utilização) e Kubecost/OpenCost (dados financeiros).
* **Escalonamento**: Integração com o Horizontal Pod Autoscaler (HPA) para definir o número total de réplicas necessárias ($R_i$).

### Organização de Namespaces

Para garantir o isolamento e a gestão eficiente dos recursos, o projeto utiliza os seguintes namespaces:


**`monitoring`**: Aloja a stack central do Prometheus e Grafana para a recolha de telemetria global.


**`opencost`**: Destinado exclusivamente aos agentes de recolha de métricas financeiras ($c_{ij}$) nos clusters.


**`liqo`**: Onde residem os componentes da infraestrutura de rede e os Virtual Nodes para a federação.

 
**`federation-system`**: Namespace dedicado à execução do **Federated Operator** (Control Plane).


## Estrutura do Repositório
* `/infra`: Scripts e configurações para o laboratório multi-cluster e peering do Liqo.
* `/charts`: Ficheiros `values.yaml` personalizados para Helm (Prometheus, OpenCost).
* `/operator`: Código-fonte do Federated Operator gerado pelo Operator SDK.
    * `/api`: Definições do Custom Resource (CRD) `FederatedPlacement`.
    * `/controllers`: Lógica do loop de reconciliação e implementação da heurística.
* `/deploy`: Manifestos para workloads de teste e políticas de colocação.

## Planeamento (2º Semestre)
De acordo com o cronograma definido na dissertação:
* **Mês 1**: Configuração do Ambiente e Peering (Tarefa 1).
* **Mês 2**: Implementação base do Operador e CRDs (Tarefa 2).
* **Mês 3**: Integração da Lógica Heurística (Tarefa 3).
* **Mês 4**: Testes e Validação em cenários reais (Tarefa 4).
* **Mês 5**: Escrita final e análise de resultados (Tarefa 5).