Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 1000.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 3.9756
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 1.0244
  demand_w0: x_w0_c0 + x_w0_c1 = 5
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 2.5661
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 1.4339
  demand_w1: x_w1_c0 + x_w1_c1 = 4
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 1.6299
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 12.3701
  demand_w2: x_w2_c0 + x_w2_c1 = 14
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 5.2960
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 9.7040
  demand_w3: x_w3_c0 + x_w3_c1 = 15
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 6.3141
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 4.6859
  demand_w4: x_w4_c0 + x_w4_c1 = 11
  sum_cost: 1.3678 x_w0_c0 + 6.6023 x_w0_c1 + 1.8549 x_w1_c0 + 4.2619 x_w1_c1 + 1.1992 x_w2_c0 + 7.7361 x_w2_c1 + 1.7039 x_w3_c0 + 5.1641 x_w3_c1 + 1.2527 x_w4_c0 + 3.9542 x_w4_c1 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w1_c0 + y_w1_c1 + y_w2_c0 + y_w2_c1 + y_w3_c0 + y_w3_c1 + y_w4_c0 + y_w4_c1 - TotalLatency = 0
  cap_cpu_c0: 0.33 x_w0_c0 + 0.42 x_w1_c0 + 0.16 x_w2_c0 + 0.48 x_w3_c0 + 0.26 x_w4_c0 <= 20

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