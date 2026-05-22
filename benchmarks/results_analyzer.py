import pandas as pd
import re
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

# Setup directories
BASE_DIR = Path(__file__).resolve().parent
RESULTS_DIR = BASE_DIR / "results"
OUTPUT_DIR = BASE_DIR / "exports"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def parse_gurobi_logs(results_path):
    data = []
    tier_order = {"Micro": 1, "Small": 2, "Medium": 3, "Large": 4}
    
    for log_file in results_path.glob("*.log"):
        # The filename matches the Tier name directly (e.g., micro.log, large.log)
        tier = log_file.stem.capitalize()
        if tier not in tier_order:
            continue
            
        with open(log_file, 'r') as f:
            content = f.read()
            
            # Extract Model Dimensions (static configuration, pull first match safely)
            size_match = re.search(r"Optimize a model with (\d+) rows, (\d+) columns", content)
            constraints = int(size_match.group(1)) if size_match else 0
            variables = int(size_match.group(2)) if size_match else 0
            
            # Extract ALL runs from the consolidated log using re.findall
            runtimes = [float(t) for t in re.findall(r"Explored \d+ nodes .* in ([\d\.]+) seconds", content)]
            nodes = [int(n) for n in re.findall(r"Explored (\d+) nodes", content)]
            gaps = [float(g) for g in re.findall(r"gap ([\d\.]+)%", content)]
            objs = [float(o) for o in re.findall(r"Best objective ([\d\.\+e\-]+)", content)]
            
            # Extract system RAM measurements from /usr/bin/time -v for all runs
            ram_kbytes = [int(r) for r in re.findall(r"Maximum resident set size \(kbytes\):\s+(\d+)", content)]
            ram_mbytes = [k / 1024.0 for k in ram_kbytes]

            if runtimes:
                print(f"Tier {tier}: Found and processing {len(runtimes)} independent instances.")
                
                data.append({
                    "Tier": tier,
                    "Order": tier_order.get(tier, 5),
                    "Constraints": constraints,
                    "Variables": variables,
                    # Statistical Metrics (Mean and Median)
                    "Runtime_s": np.mean(runtimes),
                    "Nodes_Explored": int(np.round(np.mean(nodes))),
                    "Gap_mean": np.mean(gaps),
                    "Gap_median": np.median(gaps),
                    "Memory_MB": np.mean(ram_mbytes),
                    "Objective_Z": np.mean(objs)
                })
                
    return pd.DataFrame(data).sort_values("Order")

def generate_visualizations(df):
    if df.empty:
        print("Error: DataFrame is empty. Please verify your consolidated .log files in results/")
        return

    # Graph 1: Runtime vs Tier
    plt.figure(figsize=(8, 5))
    plt.plot(df['Tier'], df['Runtime_s'], marker='o', linestyle='-', color='b', linewidth=2)
    plt.title('Optimization Model Scalability - Average Resolution Time')
    plt.xlabel('Test Tier (Problem Scale)')
    plt.ylabel('Resolution Time (seconds)')
    plt.grid(True, linestyle='--', alpha=0.5)
    plt.savefig(OUTPUT_DIR / "solver_runtime_chart.png", dpi=300)
    plt.close()
    print(f"Chart saved: {OUTPUT_DIR}/solver_runtime_chart.png")

    # Graph 2: Optimality Gap vs Tier
    plt.figure(figsize=(8, 5))
    # Main Bars representing the Mean
    plt.bar(df['Tier'], df['Gap_mean'], color='r', alpha=0.6, width=0.4, label='Mean Gap')
    # Line overlay representing the Median
    plt.plot(df['Tier'], df['Gap_median'], marker='X', linestyle='--', color='black', 
             linewidth=2, markersize=10, label='Median Gap')
    
    plt.title('Optimization Model Convergence - Optimality Gap')
    plt.xlabel('Test Tier (Problem Scale)')
    plt.ylabel('Optimality Gap (%)')
    plt.ylim(-5, 105)
    plt.legend(loc='upper left')
    plt.grid(axis='y', linestyle='--', alpha=0.5)
    plt.savefig(OUTPUT_DIR / "solver_gap_chart.png", dpi=300)
    plt.close()
    print(f"Chart saved: {OUTPUT_DIR}/solver_gap_chart.png")

    # Graph 3: Nodes Explored vs Tier
    plt.figure(figsize=(8, 5))
    plt.plot(df['Tier'], df['Nodes_Explored'], marker='s', linestyle='-', color='g', linewidth=2)
    plt.title('Optimization Model Complexity - Average Search Space (Nodes Explored)')
    plt.xlabel('Test Tier (Problem Scale)')
    plt.ylabel('Nodes Count')
    plt.grid(True, linestyle='--', alpha=0.5)
    plt.savefig(OUTPUT_DIR / "solver_nodes_chart.png", dpi=300)
    plt.close()
    print(f"Chart saved: {OUTPUT_DIR}/solver_nodes_chart.png")

    # Graph 4: Peak Memory Footprint Real vs Tier
    plt.figure(figsize=(8, 5))
    plt.plot(df['Tier'], df['Memory_MB'], marker='^', linestyle='-', color='m', linewidth=2)
    plt.title('Optimization Model Resource Demand - Average Peak Memory Footprint')
    plt.xlabel('Test Tier (Problem Scale)')
    plt.ylabel('Peak RAM Usage (MB)')
    plt.grid(True, linestyle='--', alpha=0.5)
    plt.savefig(OUTPUT_DIR / "solver_memory_chart.png", dpi=300)
    plt.close()
    print(f"Chart saved: {OUTPUT_DIR}/solver_memory_chart.png")

if __name__ == "__main__":
    if RESULTS_DIR.exists():
        df = parse_gurobi_logs(RESULTS_DIR)
        generate_visualizations(df)
        print(f"\nStatistical pipeline complete. Charts and CSV summary exported to '{OUTPUT_DIR.name}'.")
    else:
        print("Results directory not found.")