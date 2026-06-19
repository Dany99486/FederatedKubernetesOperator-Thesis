#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
INSTANCES_DIR="$BASE_DIR/instances_pareto"
RESULTS_DIR="$BASE_DIR/results_pareto"

mkdir -p "$RESULTS_DIR"

if [ -z "$(ls -A "$INSTANCES_DIR"/*.lp 2>/dev/null)" ]; then
    echo "Erro: Nenhum ficheiro .lp encontrado em $INSTANCES_DIR"
    echo "Por favor, corre o gerador de instâncias Python primeiro."
    exit 1
fi

echo "--------------------------------------------------------"
echo "A iniciar os Benchmarks do Cenário II (Gurobi CLI)..."
echo "Varrimento de Alpha: 0.0 a 1.0 (Passo 0.1)"
echo "--------------------------------------------------------"

rm -f "$RESULTS_DIR"/*.sol "$RESULTS_DIR"/*.log

for model_file in "$INSTANCES_DIR"/*.lp; do
    filename=$(basename -- "$model_file")
    basename_no_ext="${filename%.*}"
    
    echo "[$(date +'%H:%M:%S')] A calcular Ótimo para: $filename"
    
    /usr/bin/time -v gurobi_cl TimeLimit=50 \
        ResultFile="$RESULTS_DIR/${basename_no_ext}.sol" \
        "$model_file" > "$RESULTS_DIR/${basename_no_ext}.log" 2>&1
done

echo "--------------------------------------------------------"
echo "✅ Todos os 11 pontos de trade-off foram mapeados!"
echo "--------------------------------------------------------"