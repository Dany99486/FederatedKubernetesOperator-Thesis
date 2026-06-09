#!/bin/bash

# ==============================================================================
# Gurobi Pareto Runner for Federated Kubernetes Operator
# This script executes .lp instances generated for the Pareto Front analysis
# (Cost vs Latency) across multiple scenarios and alpha weights.
# ==============================================================================

# Obter o diretório base onde o script se encontra
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
INSTANCES_DIR="$BASE_DIR/instances_pareto"
RESULTS_DIR="$BASE_DIR/results_pareto"

# Garantir que a pasta de resultados existe
mkdir -p "$RESULTS_DIR"

# Verificar se existem ficheiros .lp na pasta (gerados pelo script Python)
if [ -z "$(ls -A "$INSTANCES_DIR"/*.lp 2>/dev/null)" ]; then
    echo "Erro: Nenhum ficheiro .lp encontrado em $INSTANCES_DIR"
    echo "Por favor, corre o gerador de instâncias Pareto em Python primeiro."
    exit 1
fi

echo "--------------------------------------------------------"
echo "A iniciar os Benchmarks de Pareto (Gurobi)..."
echo "Pasta de Instâncias: $INSTANCES_DIR"
echo "Pasta de Resultados: $RESULTS_DIR"
echo "Tempo Limite p/ teste: 60 segundos"
echo "--------------------------------------------------------"

# Limpar ficheiros antigos para não misturar execuções de gráficos anteriores
rm -f "$RESULTS_DIR"/*.sol "$RESULTS_DIR"/*.log

# Iterar sobre todas as instâncias (ex: pareto_run_1_alpha_0.5.lp)
for model_file in "$INSTANCES_DIR"/*.lp; do
    filename=$(basename -- "$model_file")
    basename_no_ext="${filename%.*}"
    
    echo "[$(date +'%H:%M:%S')] A executar: $filename"
    
    # Executar o Gurobi CLI e medir recursos com o /usr/bin/time -v
    # TimeLimit=60: Impede que o Gurobi fique horas num cenário muito complexo
    # Guarda as variáveis no ficheiro .sol e todo o output do terminal no ficheiro .log
    /usr/bin/time -v gurobi_cl TimeLimit=60 \
              ResultFile="$RESULTS_DIR/${basename_no_ext}.sol" \
              "$model_file" > "$RESULTS_DIR/${basename_no_ext}.log" 2>&1
done

echo "--------------------------------------------------------"
echo "✅ Todos os cenários Pareto foram resolvidos com sucesso!"
echo "Dados prontos. Podes agora correr o script gerador do gráfico."
echo "--------------------------------------------------------"