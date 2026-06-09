import pandas as pd
import re
import matplotlib.pyplot as plt
from pathlib import Path
from adjustText import adjust_text

# Configuração de diretórios
BASE_DIR = Path(__file__).resolve().parent
RESULTS_DIR = BASE_DIR / "results_pareto"  
OUTPUT_DIR = BASE_DIR / "exports"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def extrair_dados_pareto(results_path):
    data = []
    
    # LER APENAS OS FICHEIROS .sol (para não duplicar com os .log)
    for log_file in results_path.glob("*.sol"):
        # NOVA REGEX: Exige que seja dígito + ponto + dígito (ex: 0.4), ignorando o ".sol"
        alpha_match = re.search(r"alpha_(\d+\.\d+)", log_file.name)
        if not alpha_match:
            continue
            
        alpha_val = float(alpha_match.group(1))
        
        with open(log_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # Extrai Custo Total e Latência Total das variáveis do Gurobi
        cost_match = re.search(r"TotalCost\s+([\d\.\+e\-]+)", content)
        latency_match = re.search(r"TotalLatency\s+([\d\.\+e\-]+)", content)
        
        if cost_match and latency_match:
            data.append({
                "Alpha": alpha_val,
                "Run": log_file.name,
                "Custo": float(cost_match.group(1)),
                "Latencia": float(latency_match.group(1))
            })
            
    df = pd.DataFrame(data)
    
    if not df.empty:
        # Agrupar pelo Alpha e calcular as médias
        df_medias = df.groupby('Alpha').agg({
            'Custo': 'mean',
            'Latencia': 'mean'
        }).reset_index()
        
        print("\n📊 Tabela de Médias Calculadas (Pronta para a Tese):")
        print(df_medias.to_string(index=False))
        return df_medias
    else:
        print("⚠️ Aviso: Não foram encontrados valores de TotalCost e TotalLatency nos ficheiros .sol.")
        return pd.DataFrame()

def desenhar_frente_pareto(df):
    if df.empty:
        print("Erro: Sem dados para desenhar o gráfico.")
        return

    plt.figure(figsize=(10, 7))
    
    # Ordenar obrigatoriamente pelo custo
    df_sorted = df.sort_values(by='Custo')
    
    # Desenhar a Linha
    plt.plot(df_sorted['Custo'], df_sorted['Latencia'], 
             color='#d32f2f', linestyle='-', linewidth=2.5, zorder=1, label='Frente de Pareto')
    
    # Desenhar os Pontos
    plt.scatter(df_sorted['Custo'], df_sorted['Latencia'], 
                color='#1976d2', s=120, edgecolor='black', zorder=2, label='Configuração Avaliada')
    
    # ==========================================
    # 4. PREPARAR OS TEXTOS PARA O adjustText
    # ==========================================
    textos = []
    for idx, row in df_sorted.iterrows():
        alpha_texto = f"\u03B1={row['Alpha']:.1f}"
        
        # Guardamos cada objeto de texto numa lista (exatamente na posição do ponto)
        t = plt.text(row['Custo'], row['Latencia'], alpha_texto, 
                     fontsize=10, fontweight='bold', color='#333333')
        textos.append(t)

    # ==========================================
    # 5. APLICAR A MAGIA DO adjustText
    # ==========================================
    # Isto vai afastar os textos uns dos outros e desenhar as setas cinzentas
    adjust_text(textos, 
                arrowprops=dict(arrowstyle='->', color='gray', lw=1.0),
                expand_points=(1.5, 1.5),
                expand_text=(1.2, 1.2))

    plt.title('Trade-off entre Custo de Infraestrutura e Latência da Federação\n(Média de 3 Execuções - 20 Clusters)', 
              fontsize=13, fontweight='bold', pad=15)
    plt.xlabel('Custo Total Médio da Infraestrutura ($ / Unidade)', fontsize=11)
    plt.ylabel('Latência Total Média da Federação (ms)', fontsize=11)
    
    plt.grid(True, linestyle='--', alpha=0.7, zorder=0)
    plt.legend(loc='upper right', frameon=True, fontsize=10)
    
    plt.tight_layout()
    
    ficheiro_saida = OUTPUT_DIR / "frente_pareto_final.png"
    plt.savefig(ficheiro_saida, dpi=300)
    plt.close()
    print(f"\n✅ Gráfico de Pareto exportado com sucesso para: {ficheiro_saida}")

if __name__ == "__main__":
    if RESULTS_DIR.exists():
        print("A processar os resultados...")
        df_medias = extrair_dados_pareto(RESULTS_DIR)
        desenhar_frente_pareto(df_medias)
    else:
        print(f"❌ Erro: Diretório '{RESULTS_DIR}' não encontrado.")