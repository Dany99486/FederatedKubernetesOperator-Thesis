import random
import os
from pathlib import Path

# Detect the directory where the script is located (e.g., .../benchmarks/)
BASE_DIR = Path(__file__).resolve().parent
INSTANCES_DIR = BASE_DIR / "instances"

# Ensure the instances directory exists within the repository
INSTANCES_DIR.mkdir(parents=True, exist_ok=True)

def generate_lp(n_workloads, m_clusters, filename, alpha=0.5, k=100.0, budget=1000.0):
    """
    Generates a .lp file for the Federated Kubernetes Operator placement problem.
    The model follows the multi-objective optimization defined in Chapter 3.
    """
    file_path = INSTANCES_DIR / filename
    
    with open(file_path, 'w') as f:
        # Equation 3.4: Minimize Z = αC(x) + (1-α)kL(x)
        f.write("Minimize\n  obj: TotalCost_Weighted + TotalLatency_Weighted\n\nSubject To\n")
        
        # Objective Function Weights (Eq. 3.4)
        f.write(f"  w_cost: TotalCost_Weighted - {alpha} TotalCost = 0\n")
        f.write(f"  w_lat: TotalLatency_Weighted - {(1-alpha)*k} TotalLatency = 0\n")
        
        # Global Budget Constraint (Eq. 3.5)
        f.write(f"  global_budget: TotalCost <= {budget}\n")
        
        all_x_vars = []
        all_y_vars = []
        cost_terms = []
        
        for i in range(n_workloads):
            # R_i: Random HPA recommendations for workload i
            ri = random.randint(3, 15) 
            
            # h_ij: Traffic distribution targets (Ensuring sum of h_ij = 1)
            raw_h = [random.random() for _ in range(m_clusters)]
            sum_h = sum(raw_h)
            hij = [val/sum_h for val in raw_h]
            
            x_workload_terms = []
            for j in range(m_clusters):
                x_var = f"x_w{i}_c{j}" # Discrete replicas (x_ij)
                y_var = f"y_w{i}_c{j}" # Latency penalty (y_ij)
                all_x_vars.append(x_var)
                all_y_vars.append(y_var)
                x_workload_terms.append(x_var)
                
                # Unit costs c_ij (Realistic: On-prem vs Public Cloud disparity)
                cij = random.uniform(0.5, 2.0) if j == 0 else random.uniform(3.0, 8.0)
                cost_terms.append(f"{cij:.4f} {x_var}")
                
                # Latency Linearization (Eq. 3.7: x_ij + y_ij >= h_ij * R_i)
                target = hij[j] * ri
                f.write(f"  lat_lin_w{i}_c{j}: {x_var} + {y_var} >= {target:.4f}\n")
            
            # Demand Satisfaction: Sum of placements must match HPA recommendation
            f.write(f"  demand_w{i}: {' + '.join(x_workload_terms)} = {ri}\n")

        # Global Sum Definitions
        f.write(f"  sum_cost: {' + '.join(cost_terms)} - TotalCost = 0\n")
        f.write(f"  sum_lat: {' + '.join(all_y_vars)} - TotalLatency = 0\n")
        
        # On-Premise Capacity Constraints (Eq. 3.6)
        # d_i: Resource demand per single replica
        cpu_demand = [random.uniform(0.1, 0.5) for _ in range(n_workloads)]
        cap_terms = [f"{cpu_demand[i]:.2f} x_w{i}_c0" for i in range(n_workloads)]
        # Maximum allocatable resources in cluster j
        f.write(f"  cap_cpu_c0: {' + '.join(cap_terms)} <= {m_clusters * 10}\n")

        # Constraint 3.9: Discrete decision variables for allocated replicas 
        f.write("\nGenerals\n  " + "\n  ".join(all_x_vars) + "\nEnd")

# Generate the 4 tiers for Table 7.1 (Scalability Analysis)
generate_lp(5, 2, "micro.lp")
generate_lp(20, 5, "small.lp")
generate_lp(50, 10, "medium.lp", budget=2500.0)
generate_lp(250, 25, "large.lp", budget=4750.0)

print(f"Success: .lp instances created in {INSTANCES_DIR}")