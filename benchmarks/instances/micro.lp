Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 1000.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 5.5248
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 8.4752
  demand_w0: x_w0_c0 + x_w0_c1 = 14
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 0.0467
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 2.9533
  demand_w1: x_w1_c0 + x_w1_c1 = 3
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 6.1355
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 1.8645
  demand_w2: x_w2_c0 + x_w2_c1 = 8
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 3.7246
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 6.2754
  demand_w3: x_w3_c0 + x_w3_c1 = 10
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 4.8390
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 0.1610
  demand_w4: x_w4_c0 + x_w4_c1 = 5
  sum_cost: 1.7070 x_w0_c0 + 3.7369 x_w0_c1 + 0.9473 x_w1_c0 + 7.6489 x_w1_c1 + 0.6537 x_w2_c0 + 4.6999 x_w2_c1 + 1.2806 x_w3_c0 + 3.6270 x_w3_c1 + 1.6169 x_w4_c0 + 3.9543 x_w4_c1 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w1_c0 + y_w1_c1 + y_w2_c0 + y_w2_c1 + y_w3_c0 + y_w3_c1 + y_w4_c0 + y_w4_c1 - TotalLatency = 0
  cap_cpu_c0: 0.10 x_w0_c0 + 0.42 x_w1_c0 + 0.39 x_w2_c0 + 0.20 x_w3_c0 + 0.25 x_w4_c0 <= 20

Generals
  x_w0_c0
  x_w0_c1
  x_w1_c0
  x_w1_c1
  x_w2_c0
  x_w2_c1
  x_w3_c0
  x_w3_c1
  x_w4_c0
  x_w4_c1
End