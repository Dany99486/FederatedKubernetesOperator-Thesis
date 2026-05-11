Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 1000.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 0.1118
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 0.9366
  lat_lin_w0_c2: x_w0_c2 + y_w0_c2 >= 3.0822
  lat_lin_w0_c3: x_w0_c3 + y_w0_c3 >= 3.0323
  lat_lin_w0_c4: x_w0_c4 + y_w0_c4 >= 1.8371
  demand_w0: x_w0_c0 + x_w0_c1 + x_w0_c2 + x_w0_c3 + x_w0_c4 = 9
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 4.8996
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 2.3205
  lat_lin_w1_c2: x_w1_c2 + y_w1_c2 >= 4.9604
  lat_lin_w1_c3: x_w1_c3 + y_w1_c3 >= 0.1856
  lat_lin_w1_c4: x_w1_c4 + y_w1_c4 >= 2.6339
  demand_w1: x_w1_c0 + x_w1_c1 + x_w1_c2 + x_w1_c3 + x_w1_c4 = 15
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 2.7045
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 0.2649
  lat_lin_w2_c2: x_w2_c2 + y_w2_c2 >= 0.7985
  lat_lin_w2_c3: x_w2_c3 + y_w2_c3 >= 5.0403
  lat_lin_w2_c4: x_w2_c4 + y_w2_c4 >= 3.1917
  demand_w2: x_w2_c0 + x_w2_c1 + x_w2_c2 + x_w2_c3 + x_w2_c4 = 12
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 1.0784
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 1.4837
  lat_lin_w3_c2: x_w3_c2 + y_w3_c2 >= 1.3110
  lat_lin_w3_c3: x_w3_c3 + y_w3_c3 >= 1.5599
  lat_lin_w3_c4: x_w3_c4 + y_w3_c4 >= 0.5670
  demand_w3: x_w3_c0 + x_w3_c1 + x_w3_c2 + x_w3_c3 + x_w3_c4 = 6
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 0.7353
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 0.3016
  lat_lin_w4_c2: x_w4_c2 + y_w4_c2 >= 1.6769
  lat_lin_w4_c3: x_w4_c3 + y_w4_c3 >= 1.3039
  lat_lin_w4_c4: x_w4_c4 + y_w4_c4 >= 0.9823
  demand_w4: x_w4_c0 + x_w4_c1 + x_w4_c2 + x_w4_c3 + x_w4_c4 = 5
  lat_lin_w5_c0: x_w5_c0 + y_w5_c0 >= 3.6824
  lat_lin_w5_c1: x_w5_c1 + y_w5_c1 >= 3.2494
  lat_lin_w5_c2: x_w5_c2 + y_w5_c2 >= 2.4735
  lat_lin_w5_c3: x_w5_c3 + y_w5_c3 >= 1.3259
  lat_lin_w5_c4: x_w5_c4 + y_w5_c4 >= 1.2688
  demand_w5: x_w5_c0 + x_w5_c1 + x_w5_c2 + x_w5_c3 + x_w5_c4 = 12
  lat_lin_w6_c0: x_w6_c0 + y_w6_c0 >= 0.6542
  lat_lin_w6_c1: x_w6_c1 + y_w6_c1 >= 0.7423
  lat_lin_w6_c2: x_w6_c2 + y_w6_c2 >= 1.6495
  lat_lin_w6_c3: x_w6_c3 + y_w6_c3 >= 1.7603
  lat_lin_w6_c4: x_w6_c4 + y_w6_c4 >= 0.1936
  demand_w6: x_w6_c0 + x_w6_c1 + x_w6_c2 + x_w6_c3 + x_w6_c4 = 5
  lat_lin_w7_c0: x_w7_c0 + y_w7_c0 >= 1.4251
  lat_lin_w7_c1: x_w7_c1 + y_w7_c1 >= 0.9245
  lat_lin_w7_c2: x_w7_c2 + y_w7_c2 >= 3.0931
  lat_lin_w7_c3: x_w7_c3 + y_w7_c3 >= 3.4269
  lat_lin_w7_c4: x_w7_c4 + y_w7_c4 >= 2.1304
  demand_w7: x_w7_c0 + x_w7_c1 + x_w7_c2 + x_w7_c3 + x_w7_c4 = 11
  lat_lin_w8_c0: x_w8_c0 + y_w8_c0 >= 0.4384
  lat_lin_w8_c1: x_w8_c1 + y_w8_c1 >= 0.6064
  lat_lin_w8_c2: x_w8_c2 + y_w8_c2 >= 1.2827
  lat_lin_w8_c3: x_w8_c3 + y_w8_c3 >= 0.6926
  lat_lin_w8_c4: x_w8_c4 + y_w8_c4 >= 0.9799
  demand_w8: x_w8_c0 + x_w8_c1 + x_w8_c2 + x_w8_c3 + x_w8_c4 = 4
  lat_lin_w9_c0: x_w9_c0 + y_w9_c0 >= 2.8022
  lat_lin_w9_c1: x_w9_c1 + y_w9_c1 >= 2.1275
  lat_lin_w9_c2: x_w9_c2 + y_w9_c2 >= 2.6180
  lat_lin_w9_c3: x_w9_c3 + y_w9_c3 >= 3.0661
  lat_lin_w9_c4: x_w9_c4 + y_w9_c4 >= 0.3861
  demand_w9: x_w9_c0 + x_w9_c1 + x_w9_c2 + x_w9_c3 + x_w9_c4 = 11
  lat_lin_w10_c0: x_w10_c0 + y_w10_c0 >= 1.1892
  lat_lin_w10_c1: x_w10_c1 + y_w10_c1 >= 1.1742
  lat_lin_w10_c2: x_w10_c2 + y_w10_c2 >= 0.2217
  lat_lin_w10_c3: x_w10_c3 + y_w10_c3 >= 1.3203
  lat_lin_w10_c4: x_w10_c4 + y_w10_c4 >= 0.0947
  demand_w10: x_w10_c0 + x_w10_c1 + x_w10_c2 + x_w10_c3 + x_w10_c4 = 4
  lat_lin_w11_c0: x_w11_c0 + y_w11_c0 >= 1.1982
  lat_lin_w11_c1: x_w11_c1 + y_w11_c1 >= 1.2069
  lat_lin_w11_c2: x_w11_c2 + y_w11_c2 >= 0.1940
  lat_lin_w11_c3: x_w11_c3 + y_w11_c3 >= 0.6923
  lat_lin_w11_c4: x_w11_c4 + y_w11_c4 >= 0.7087
  demand_w11: x_w11_c0 + x_w11_c1 + x_w11_c2 + x_w11_c3 + x_w11_c4 = 4
  lat_lin_w12_c0: x_w12_c0 + y_w12_c0 >= 2.0056
  lat_lin_w12_c1: x_w12_c1 + y_w12_c1 >= 0.7897
  lat_lin_w12_c2: x_w12_c2 + y_w12_c2 >= 1.5151
  lat_lin_w12_c3: x_w12_c3 + y_w12_c3 >= 2.2745
  lat_lin_w12_c4: x_w12_c4 + y_w12_c4 >= 0.4150
  demand_w12: x_w12_c0 + x_w12_c1 + x_w12_c2 + x_w12_c3 + x_w12_c4 = 7
  lat_lin_w13_c0: x_w13_c0 + y_w13_c0 >= 3.7755
  lat_lin_w13_c1: x_w13_c1 + y_w13_c1 >= 2.9755
  lat_lin_w13_c2: x_w13_c2 + y_w13_c2 >= 2.4326
  lat_lin_w13_c3: x_w13_c3 + y_w13_c3 >= 3.6923
  lat_lin_w13_c4: x_w13_c4 + y_w13_c4 >= 2.1241
  demand_w13: x_w13_c0 + x_w13_c1 + x_w13_c2 + x_w13_c3 + x_w13_c4 = 15
  lat_lin_w14_c0: x_w14_c0 + y_w14_c0 >= 3.5449
  lat_lin_w14_c1: x_w14_c1 + y_w14_c1 >= 0.1902
  lat_lin_w14_c2: x_w14_c2 + y_w14_c2 >= 0.2448
  lat_lin_w14_c3: x_w14_c3 + y_w14_c3 >= 1.4967
  lat_lin_w14_c4: x_w14_c4 + y_w14_c4 >= 4.5233
  demand_w14: x_w14_c0 + x_w14_c1 + x_w14_c2 + x_w14_c3 + x_w14_c4 = 10
  lat_lin_w15_c0: x_w15_c0 + y_w15_c0 >= 0.1725
  lat_lin_w15_c1: x_w15_c1 + y_w15_c1 >= 1.9480
  lat_lin_w15_c2: x_w15_c2 + y_w15_c2 >= 1.4009
  lat_lin_w15_c3: x_w15_c3 + y_w15_c3 >= 1.3428
  lat_lin_w15_c4: x_w15_c4 + y_w15_c4 >= 0.1358
  demand_w15: x_w15_c0 + x_w15_c1 + x_w15_c2 + x_w15_c3 + x_w15_c4 = 5
  lat_lin_w16_c0: x_w16_c0 + y_w16_c0 >= 2.7684
  lat_lin_w16_c1: x_w16_c1 + y_w16_c1 >= 0.3557
  lat_lin_w16_c2: x_w16_c2 + y_w16_c2 >= 0.9266
  lat_lin_w16_c3: x_w16_c3 + y_w16_c3 >= 0.8300
  lat_lin_w16_c4: x_w16_c4 + y_w16_c4 >= 0.1193
  demand_w16: x_w16_c0 + x_w16_c1 + x_w16_c2 + x_w16_c3 + x_w16_c4 = 5
  lat_lin_w17_c0: x_w17_c0 + y_w17_c0 >= 2.6361
  lat_lin_w17_c1: x_w17_c1 + y_w17_c1 >= 2.2473
  lat_lin_w17_c2: x_w17_c2 + y_w17_c2 >= 1.0650
  lat_lin_w17_c3: x_w17_c3 + y_w17_c3 >= 2.3954
  lat_lin_w17_c4: x_w17_c4 + y_w17_c4 >= 2.6561
  demand_w17: x_w17_c0 + x_w17_c1 + x_w17_c2 + x_w17_c3 + x_w17_c4 = 11
  lat_lin_w18_c0: x_w18_c0 + y_w18_c0 >= 0.7840
  lat_lin_w18_c1: x_w18_c1 + y_w18_c1 >= 0.2563
  lat_lin_w18_c2: x_w18_c2 + y_w18_c2 >= 0.5474
  lat_lin_w18_c3: x_w18_c3 + y_w18_c3 >= 1.2001
  lat_lin_w18_c4: x_w18_c4 + y_w18_c4 >= 0.2121
  demand_w18: x_w18_c0 + x_w18_c1 + x_w18_c2 + x_w18_c3 + x_w18_c4 = 3
  lat_lin_w19_c0: x_w19_c0 + y_w19_c0 >= 3.3886
  lat_lin_w19_c1: x_w19_c1 + y_w19_c1 >= 2.6629
  lat_lin_w19_c2: x_w19_c2 + y_w19_c2 >= 0.7070
  lat_lin_w19_c3: x_w19_c3 + y_w19_c3 >= 1.6991
  lat_lin_w19_c4: x_w19_c4 + y_w19_c4 >= 0.5424
  demand_w19: x_w19_c0 + x_w19_c1 + x_w19_c2 + x_w19_c3 + x_w19_c4 = 9
  sum_cost: 0.5096 x_w0_c0 + 6.3928 x_w0_c1 + 5.4095 x_w0_c2 + 4.8635 x_w0_c3 + 3.3394 x_w0_c4 + 0.8799 x_w1_c0 + 7.6718 x_w1_c1 + 6.4339 x_w1_c2 + 5.2547 x_w1_c3 + 4.9310 x_w1_c4 + 1.5030 x_w2_c0 + 4.2311 x_w2_c1 + 4.0272 x_w2_c2 + 6.9596 x_w2_c3 + 4.0443 x_w2_c4 + 1.5655 x_w3_c0 + 3.4655 x_w3_c1 + 7.9458 x_w3_c2 + 5.9272 x_w3_c3 + 7.2568 x_w3_c4 + 0.8099 x_w4_c0 + 7.9143 x_w4_c1 + 5.1238 x_w4_c2 + 6.1887 x_w4_c3 + 6.5035 x_w4_c4 + 1.1467 x_w5_c0 + 5.3640 x_w5_c1 + 5.6426 x_w5_c2 + 6.7977 x_w5_c3 + 6.5953 x_w5_c4 + 0.9794 x_w6_c0 + 5.0815 x_w6_c1 + 3.0803 x_w6_c2 + 7.7505 x_w6_c3 + 7.5211 x_w6_c4 + 1.7564 x_w7_c0 + 6.0451 x_w7_c1 + 3.4845 x_w7_c2 + 3.4784 x_w7_c3 + 6.0621 x_w7_c4 + 1.1623 x_w8_c0 + 7.0844 x_w8_c1 + 5.6643 x_w8_c2 + 4.9933 x_w8_c3 + 3.4040 x_w8_c4 + 1.6561 x_w9_c0 + 7.7700 x_w9_c1 + 7.2734 x_w9_c2 + 4.1940 x_w9_c3 + 5.7074 x_w9_c4 + 1.6188 x_w10_c0 + 6.4537 x_w10_c1 + 3.5141 x_w10_c2 + 5.4102 x_w10_c3 + 7.1909 x_w10_c4 + 1.1561 x_w11_c0 + 3.9295 x_w11_c1 + 3.4604 x_w11_c2 + 4.3125 x_w11_c3 + 5.9264 x_w11_c4 + 1.5007 x_w12_c0 + 6.8595 x_w12_c1 + 3.0859 x_w12_c2 + 6.4748 x_w12_c3 + 5.7853 x_w12_c4 + 0.5775 x_w13_c0 + 5.0224 x_w13_c1 + 5.6913 x_w13_c2 + 7.1823 x_w13_c3 + 7.2751 x_w13_c4 + 1.5000 x_w14_c0 + 3.3072 x_w14_c1 + 6.6955 x_w14_c2 + 4.7828 x_w14_c3 + 3.7202 x_w14_c4 + 0.6520 x_w15_c0 + 5.3268 x_w15_c1 + 3.6097 x_w15_c2 + 5.7625 x_w15_c3 + 4.3561 x_w15_c4 + 0.8700 x_w16_c0 + 7.9910 x_w16_c1 + 7.1224 x_w16_c2 + 6.3428 x_w16_c3 + 5.5057 x_w16_c4 + 0.9327 x_w17_c0 + 6.0509 x_w17_c1 + 4.7832 x_w17_c2 + 3.0794 x_w17_c3 + 7.7717 x_w17_c4 + 0.7555 x_w18_c0 + 7.2767 x_w18_c1 + 3.4820 x_w18_c2 + 7.7311 x_w18_c3 + 4.0252 x_w18_c4 + 1.3136 x_w19_c0 + 7.7372 x_w19_c1 + 7.5130 x_w19_c2 + 3.8769 x_w19_c3 + 3.0326 x_w19_c4 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w0_c2 + y_w0_c3 + y_w0_c4 + y_w1_c0 + y_w1_c1 + y_w1_c2 + y_w1_c3 + y_w1_c4 + y_w2_c0 + y_w2_c1 + y_w2_c2 + y_w2_c3 + y_w2_c4 + y_w3_c0 + y_w3_c1 + y_w3_c2 + y_w3_c3 + y_w3_c4 + y_w4_c0 + y_w4_c1 + y_w4_c2 + y_w4_c3 + y_w4_c4 + y_w5_c0 + y_w5_c1 + y_w5_c2 + y_w5_c3 + y_w5_c4 + y_w6_c0 + y_w6_c1 + y_w6_c2 + y_w6_c3 + y_w6_c4 + y_w7_c0 + y_w7_c1 + y_w7_c2 + y_w7_c3 + y_w7_c4 + y_w8_c0 + y_w8_c1 + y_w8_c2 + y_w8_c3 + y_w8_c4 + y_w9_c0 + y_w9_c1 + y_w9_c2 + y_w9_c3 + y_w9_c4 + y_w10_c0 + y_w10_c1 + y_w10_c2 + y_w10_c3 + y_w10_c4 + y_w11_c0 + y_w11_c1 + y_w11_c2 + y_w11_c3 + y_w11_c4 + y_w12_c0 + y_w12_c1 + y_w12_c2 + y_w12_c3 + y_w12_c4 + y_w13_c0 + y_w13_c1 + y_w13_c2 + y_w13_c3 + y_w13_c4 + y_w14_c0 + y_w14_c1 + y_w14_c2 + y_w14_c3 + y_w14_c4 + y_w15_c0 + y_w15_c1 + y_w15_c2 + y_w15_c3 + y_w15_c4 + y_w16_c0 + y_w16_c1 + y_w16_c2 + y_w16_c3 + y_w16_c4 + y_w17_c0 + y_w17_c1 + y_w17_c2 + y_w17_c3 + y_w17_c4 + y_w18_c0 + y_w18_c1 + y_w18_c2 + y_w18_c3 + y_w18_c4 + y_w19_c0 + y_w19_c1 + y_w19_c2 + y_w19_c3 + y_w19_c4 - TotalLatency = 0
  cap_cpu_c0: 0.23 x_w0_c0 + 0.45 x_w1_c0 + 0.17 x_w2_c0 + 0.36 x_w3_c0 + 0.44 x_w4_c0 + 0.19 x_w5_c0 + 0.48 x_w6_c0 + 0.16 x_w7_c0 + 0.45 x_w8_c0 + 0.18 x_w9_c0 + 0.14 x_w10_c0 + 0.18 x_w11_c0 + 0.26 x_w12_c0 + 0.40 x_w13_c0 + 0.16 x_w14_c0 + 0.18 x_w15_c0 + 0.39 x_w16_c0 + 0.18 x_w17_c0 + 0.33 x_w18_c0 + 0.32 x_w19_c0 <= 50

Generals
  x_w0_c0
  x_w0_c1
  x_w0_c2
  x_w0_c3
  x_w0_c4
  x_w1_c0
  x_w1_c1
  x_w1_c2
  x_w1_c3
  x_w1_c4
  x_w2_c0
  x_w2_c1
  x_w2_c2
  x_w2_c3
  x_w2_c4
  x_w3_c0
  x_w3_c1
  x_w3_c2
  x_w3_c3
  x_w3_c4
  x_w4_c0
  x_w4_c1
  x_w4_c2
  x_w4_c3
  x_w4_c4
  x_w5_c0
  x_w5_c1
  x_w5_c2
  x_w5_c3
  x_w5_c4
  x_w6_c0
  x_w6_c1
  x_w6_c2
  x_w6_c3
  x_w6_c4
  x_w7_c0
  x_w7_c1
  x_w7_c2
  x_w7_c3
  x_w7_c4
  x_w8_c0
  x_w8_c1
  x_w8_c2
  x_w8_c3
  x_w8_c4
  x_w9_c0
  x_w9_c1
  x_w9_c2
  x_w9_c3
  x_w9_c4
  x_w10_c0
  x_w10_c1
  x_w10_c2
  x_w10_c3
  x_w10_c4
  x_w11_c0
  x_w11_c1
  x_w11_c2
  x_w11_c3
  x_w11_c4
  x_w12_c0
  x_w12_c1
  x_w12_c2
  x_w12_c3
  x_w12_c4
  x_w13_c0
  x_w13_c1
  x_w13_c2
  x_w13_c3
  x_w13_c4
  x_w14_c0
  x_w14_c1
  x_w14_c2
  x_w14_c3
  x_w14_c4
  x_w15_c0
  x_w15_c1
  x_w15_c2
  x_w15_c3
  x_w15_c4
  x_w16_c0
  x_w16_c1
  x_w16_c2
  x_w16_c3
  x_w16_c4
  x_w17_c0
  x_w17_c1
  x_w17_c2
  x_w17_c3
  x_w17_c4
  x_w18_c0
  x_w18_c1
  x_w18_c2
  x_w18_c3
  x_w18_c4
  x_w19_c0
  x_w19_c1
  x_w19_c2
  x_w19_c3
  x_w19_c4
End