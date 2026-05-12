import pandas as pd
import re
import matplotlib.pyplot as plt
from pathlib import Path

# Setup directories
BASE_DIR = Path(__file__).resolve().parent
RESULTS_DIR = BASE_DIR / "results"
OUTPUT_DIR = BASE_DIR / "exports"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def parse_gurobi_logs(results_path):
    data = []
    for log_file in results_path.glob("*.log"):
        with open(log_file, 'r') as f:
            content = f.read()
            
            # Extract Metrics using RegEx
            size_match = re.search(r"Optimize a model with (\d+) rows, (\d+) columns", content)
            runtime_match = re.search(r"Explored \d+ nodes .* in ([\d\.]+) seconds", content)
            gap_match = re.search(r"gap ([\d\.]+)%", content)
            obj_match = re.search(r"Best objective ([\d\.\+e\-]+)", content)

            # Mapping tiers for logical ordering in charts
            tier_order = {"Micro": 1, "Small": 2, "Medium": 3, "Large": 4}
            tier = log_file.stem.capitalize()

            data.append({
                "Tier": tier,
                "Order": tier_order.get(tier, 5),
                "Constraints": int(size_match.group(1)) if size_match else 0,
                "Variables": int(size_match.group(2)) if size_match else 0,
                "Runtime_s": float(runtime_match.group(1)) if runtime_match else 0.0,
                "Gap_percent": float(gap_match.group(1)) if gap_match else 0.0,
                "Objective_Z": float(obj_match.group(1)) if obj_match else 0.0
            })
    return pd.DataFrame(data).sort_values("Order")

def generate_visualizations(df):
    # Create a Scalability Plot: Runtime vs Tier
    plt.figure(figsize=(10, 6))
    plt.plot(df['Tier'], df['Runtime_s'], marker='o', linestyle='-', color='b')
    plt.title('Gurobi Solver Scalability - Runtime per Tier')
    plt.xlabel('Test Tier (Problem Scale)')
    plt.ylabel('Runtime (seconds)')
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.savefig(OUTPUT_DIR / "scalability_chart.png")
    print(f"Chart saved: {OUTPUT_DIR}/scalability_chart.png")

if __name__ == "__main__":
    if RESULTS_DIR.exists():
        df = parse_gurobi_logs(RESULTS_DIR)
        
        generate_visualizations(df)
        
        print(f"Analysis complete! Check the '{OUTPUT_DIR.name}' folder for Excel, LaTeX, and Charts.")
    else:
        print("Results directory not found.")