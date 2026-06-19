Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 2.5 TotalLatency = 0  

  global_budget: TotalCost <= 2000

  lat_lin_workload_cluster1: x_workload__cluster1 + y_workload__cluster1 >= 0
  lat_lin_workload_cluster2: x_workload__cluster2 + y_workload__cluster2 >= 0
  lat_lin_workload_cluster3: x_workload__cluster3 + y_workload__cluster3 >= 0
  lat_lin_workload_cluster4: x_workload__cluster4 + y_workload__cluster4 >= 50

  demand_satisfaction_workload: x_workload__cluster1 + x_workload__cluster2 + x_workload__cluster3 + x_workload__cluster4 = 50

  sum_total_cost: 2 x_workload__cluster1 + 20 x_workload__cluster2 + 20 x_workload__cluster3 + 20 x_workload__cluster4 - TotalCost = 0
  sum_total_lat: y_workload__cluster1 + y_workload__cluster2 + y_workload__cluster3 + y_workload__cluster4 - TotalLatency = 0

  cap_cpu_cluster1: 2 x_workload__cluster1 <= 40
  cap_cpu_cluster2: 2 x_workload__cluster2 <= 100
  cap_cpu_cluster3: 2 x_workload__cluster3 <= 100
  cap_cpu_cluster4: 2 x_workload__cluster4 <= 100

Generals
  x_workload__cluster1 x_workload__cluster2 x_workload__cluster3 x_workload__cluster4
End