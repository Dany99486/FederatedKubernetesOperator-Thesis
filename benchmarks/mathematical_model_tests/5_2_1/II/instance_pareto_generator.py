import random
import os
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent
INSTANCES_DIR = BASE_DIR / "instances_pareto"
INSTANCES_DIR.mkdir(parents=True, exist_ok=True)

def generate_base_scenario(n_workloads, m_clusters, total_replicas=100):
    """
    Cenário II: 20 Workloads Cloud-Native.
    Soma exatamente 100 réplicas totais (média de 5 réplicas por workload).
    """
    # Garante que existem exatamente 100 réplicas no total distribuídas pelos 20 workloads
    base_replicas = [1] * n_workloads  # Pelo menos 1 réplica por serviço
    for _ in range(total_replicas - n_workloads):
        base_replicas[random.randint(0, n_workloads - 1)] += 1
        
    scenario = {
        'n_workloads': n_workloads,
        'm_clusters': m_clusters,
        'ri': base_replicas,
        'hij': [],
        'cij': [],
        'cpu_demand': [random.uniform(0.1, 0.5) for _ in range(n_workloads)]
    }
    
    for _ in range(n_workloads):
        # Cada microsserviço tem uma distribuição geográfica única
        raw_h = [random.random() for _ in range(m_clusters)]
        sum_h = sum(raw_h)
        scenario['hij'].append([val/sum_h for val in raw_h])
        
        # Clusters 0 e 1 (Económicos) ~ $2 | Clusters 2 e 3 (Premium) ~ $5
        costs = [
            random.uniform(1.8, 2.2) if j < 2 else random.uniform(4.8, 5.2) 
            for j in range(m_clusters)
        ]
        scenario['cij'].append(costs)
        
    return scenario

def write_pareto_lp(scenario, filename, alpha, k=3.0, budget=2000.0):
    file_path = INSTANCES_DIR / filename
    n = scenario['n_workloads']
    m = scenario['m_clusters']
    
    with open(file_path, 'w') as f:
        f.write("Minimize\n  obj: TotalCost_Weighted + TotalLatency_Weighted\n\nSubject To\n")
        f.write(f"  w_cost: TotalCost_Weighted - {alpha:.2f} TotalCost = 0\n")
        f.write(f"  w_lat: TotalLatency_Weighted - {(1-alpha)*k:.2f} TotalLatency = 0\n")
        
        f.write(f"  global_budget: TotalCost <= {budget}\n")
        
        all_x_vars, all_y_vars, cost_terms = [], [], []
        
        for i in range(n):
            ri = scenario['ri'][i]
            x_workload_terms = []
            
            for j in range(m):
                x_var = f"x_w{i}_c{j}"
                y_var = f"y_w{i}_c{j}"
                all_x_vars.append(x_var)
                all_y_vars.append(y_var)
                x_workload_terms.append(x_var)
                
                cij = scenario['cij'][i][j]
                cost_terms.append(f"{cij:.4f} {x_var}")
                
                target = scenario['hij'][i][j] * ri
                f.write(f"  lat_lin_w{i}_c{j}: {x_var} + {y_var} >= {target:.4f}\n")
            
            f.write(f"  demand_w{i}: {' + '.join(x_workload_terms)} = {ri}\n")

        f.write(f"  sum_cost: {' + '.join(cost_terms)} - TotalCost = 0\n")
        f.write(f"  sum_lat: {' + '.join(all_y_vars)} - TotalLatency = 0\n")
        
        for j in range(m):
            cap_terms = [f"{scenario['cpu_demand'][i]:.2f} x_w{i}_c{j}" for i in range(n)]
            f.write(f"  cap_cpu_c{j}: {' + '.join(cap_terms)} <= 500.0\n")

        f.write("\nGenerals\n  " + "\n  ".join(all_x_vars) + "\nEnd")

# ==========================================================
# PARÂMETROS: 20 Workloads, 100 Réplicas Totais
# ==========================================================
NUM_WORKLOADS = 20   
NUM_CLUSTERS = 4     
RUNS = 3             

# Diferença média de custo é $5 - $2 = 3
K_FACTOR = 3.0

alphas_to_test = [round(a * 0.1, 1) for a in range(11)] 

print(f"A gerar instâncias para o Cenário II (20 Workloads / 100 Réplicas / k={K_FACTOR})...")

for run in range(1, RUNS + 1):
    base_scenario = generate_base_scenario(NUM_WORKLOADS, NUM_CLUSTERS, total_replicas=100)
    
    for alpha in alphas_to_test:
        filename = f"pareto_run_{run}_alpha_{alpha:.1f}.lp"
        write_pareto_lp(base_scenario, filename, alpha, k=K_FACTOR, budget=2000.0)

print(f"Sucesso! {RUNS * len(alphas_to_test)} ficheiros .lp gerados em {INSTANCES_DIR}")