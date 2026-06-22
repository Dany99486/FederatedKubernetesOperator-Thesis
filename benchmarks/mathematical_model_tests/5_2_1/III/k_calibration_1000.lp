Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 500.0 TotalLatency = 0
  
  global_budget: TotalCost <= 30000.0
  
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 0.0
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 10.0
  
  demand_w0: x_w0_c0 + x_w0_c1 = 10
  
  sum_cost: 2000.0 x_w0_c0 + 2500.0 x_w0_c1 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 - TotalLatency = 0
  
  cap_cpu_c0: 0.5 x_w0_c0 <= 500.0
  cap_cpu_c1: 0.5 x_w0_c1 <= 500.0

Generals
  x_w0_c0
  x_w0_c1
End