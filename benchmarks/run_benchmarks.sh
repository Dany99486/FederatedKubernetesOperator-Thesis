#!/bin/bash

# ==============================================================================
# Gurobi Benchmark Runner for Federated Kubernetes Operator
# This script executes .lp instances generated for the dissertation research.
# Reference: Chapter 7.2.1 - Scalability and Solver Stress Analysis
# ==============================================================================

# Get the directory where the script is located
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
INSTANCES_DIR="$BASE_DIR/instances"
RESULTS_DIR="$BASE_DIR/results"

# Ensure the results directory exists
mkdir -p "$RESULTS_DIR"

# Check if there are any .lp files
if [ -z "$(ls -A "$INSTANCES_DIR"/*.lp 2>/dev/null)" ]; then
    echo "Error: No .lp files found in $INSTANCES_DIR"
    exit 1
fi

echo "--------------------------------------------------------"
echo "Starting Gurobi Benchmarks..."
echo "Instances folder: $INSTANCES_DIR"
echo "Results folder:   $RESULTS_DIR"
echo "Time Limit per test: 10 seconds"
echo "--------------------------------------------------------"

# Loop through all .lp instances
for model_file in "$INSTANCES_DIR"/*.lp; do
    filename=$(basename -- "$model_file")
    case_name="${filename%.*}"
    
    echo "[$(date +'%H:%M:%S')] Testing instance: $case_name"
    
    # Execute Gurobi CLI. Also logs time and memory usage with /usr/bin/time -v
    # TimeLimit=10: Best-effort solution if optimal is not reached (Task 4)
    # ResultFile: Exports variables x_ij and y_ij to .sol format
    /usr/bin/time -v gurobi_cl TimeLimit=10 \
              ResultFile="$RESULTS_DIR/${case_name}.sol" \
              "$model_file" > "$RESULTS_DIR/${case_name}.log" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "  -> Finished. Log and solution saved."
    else
        echo "  -> Finished (Time Limit reached or error). Check log for details."
    fi
done

echo "--------------------------------------------------------"
echo "All tests completed. Data ready for Pandas analysis."
echo "--------------------------------------------------------"