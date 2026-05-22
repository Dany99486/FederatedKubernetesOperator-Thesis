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

# Clear old consolidated logs to avoid accumulating data from previous sessions
rm -f "$RESULTS_DIR"/micro.log "$RESULTS_DIR"/small.log "$RESULTS_DIR"/medium.log "$RESULTS_DIR"/large.log

# Loop through all generated instances (e.g., large_run_1.lp, large_run_2.lp, etc.)
for model_file in "$INSTANCES_DIR"/*.lp; do
    filename=$(basename -- "$model_file")
    
    # Extract the Tier prefix (Micro, Small, Medium, Large) based on the filename
    tier_prefix=$(echo "$filename" | cut -d'_' -f1)
    
    echo "[$(date +'%H:%M:%S')] Executing: $filename -> Appending to results/${tier_prefix}.log"
    
    # Execute Gurobi CLI. Also logs time and memory usage with /usr/bin/time -v
    # TimeLimit=10: Best-effort solution if optimal is not reached (Task 4)
    # NOTE: Using '>>' to append and group all runs of the same Tier into a single consolidated log file
    /usr/bin/time -v gurobi_cl TimeLimit=10 \
              ResultFile="$RESULTS_DIR/${filename%.*}.sol" \
              "$model_file" >> "$RESULTS_DIR/${tier_prefix}.log" 2>&1
done

echo "--------------------------------------------------------"
echo "All independent batches completed. Data ready for Pandas analysis."
echo "--------------------------------------------------------"