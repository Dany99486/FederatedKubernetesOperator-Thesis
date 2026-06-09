import random
import os
from pathlib import Path

# Detect the directory where the script is located
BASE_DIR = Path(__file__).resolve().parent
INSTANCES_DIR = BASE_DIR / "instances_pareto"

# Ensure the instances directory exists
INSTANCES_DIR.mkdir(parents=True, exist_ok=True)

def generate_base_scenario(n_workloads, m_clusters):
    """
    Gera as variáveis do problema (tráfego, custos, réplicas) UMA VEZ.
    Isto garante que estamos a comparar "maçãs com maçãs" quando mudamos o alpha.
    """
    scenario = {
        'n_workloads': n_workloads,
        'm_clusters': m_clusters,
        'ri': [random.randint(3, 15) for _ in range(n_workloads)],
        'hij': [],
        'cij': [],
        'cpu_demand': [random.uniform(0.1, 0.5) for _ in range(n_workloads)]
    }
    
    for _ in range(n_workloads):
        raw_h = [random.random() for _ in range(m_clusters)]
        sum_h = sum(raw_h)
        scenario['hij'].append([val/sum_h for val in raw_h])
        
        # Unit costs c_ij (On-premise mais barato, Cloud mais caro)
        # Assumimos o cluster 0 como On-Premise
        costs = [random.uniform(0.5, 2.0) if j == 0 else random.uniform(3.0, 8.0) for j in range(m_clusters)]
        scenario['cij'].append(costs)
        
    return scenario

def write_pareto_lp(scenario, filename, alpha, k=2.5, budget=15000.0):
    """
    Escreve o ficheiro .lp usando um cenário fixo, mudando apenas o alpha.
    """
    file_path = INSTANCES_DIR / filename
    n = scenario['n_workloads']
    m = scenario['m_clusters']
    
    with open(file_path, 'w') as f:
        # Eq 3.4
        f.write("Minimize\n  obj: TotalCost_Weighted + TotalLatency_Weighted\n\nSubject To\n")
        f.write(f"  w_cost: TotalCost_Weighted - {alpha:.2f} TotalCost = 0\n")
        f.write(f"  w_lat: TotalLatency_Weighted - {(1-alpha)*k:.2f} TotalLatency = 0\n")
        
        # Eq 3.5
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
        
        cap_terms = [f"{scenario['cpu_demand'][i]:.2f} x_w{i}_c0" for i in range(n)]
        f.write(f"  cap_cpu_c0: {' + '.join(cap_terms)} <= {m * 10}\n")

        f.write("\nGenerals\n  " + "\n  ".join(all_x_vars) + "\nEnd")

# =====================================================================
# GERAÇÃO DO DATASET PARA A FRENTE DE PARETO
# =====================================================================
NUM_WORKLOADS = 50   # Dimensão recomendada
NUM_CLUSTERS = 20    # O cenário dos 20 clusters pedido pelos orientadores
RUNS = 3             # 3 cenários distintos para depois fazeres as médias

# Vamos varrer o alpha de 0.0 até 1.0 (de 0.1 em 0.1)
alphas_to_test = [round(a * 0.1, 1) for a in range(11)] 

print(f"A gerar instâncias para Pareto (20 Clusters)...")

for run in range(1, RUNS + 1):
    # 1. Cria a infraestrutura e os recursos "congelados" para esta execução
    print(f"-> A gerar Cenário Base {run}...")
    base_scenario = generate_base_scenario(NUM_WORKLOADS, NUM_CLUSTERS)
    
    # 2. Escreve os 11 ficheiros variando APENAS a prioridade (alpha)
    for alpha in alphas_to_test:
        filename = f"pareto_run_{run}_alpha_{alpha:.1f}.lp"
        write_pareto_lp(base_scenario, filename, alpha, budget=15000.0)

print(f"Sucesso! {RUNS * len(alphas_to_test)} ficheiros .lp criados em {INSTANCES_DIR}")