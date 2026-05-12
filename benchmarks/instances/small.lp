Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 1000.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 1.3001
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 0.6038
  lat_lin_w0_c2: x_w0_c2 + y_w0_c2 >= 3.5027
  lat_lin_w0_c3: x_w0_c3 + y_w0_c3 >= 3.6481
  lat_lin_w0_c4: x_w0_c4 + y_w0_c4 >= 3.9453
  demand_w0: x_w0_c0 + x_w0_c1 + x_w0_c2 + x_w0_c3 + x_w0_c4 = 13
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 1.6179
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 3.2910
  lat_lin_w1_c2: x_w1_c2 + y_w1_c2 >= 1.5944
  lat_lin_w1_c3: x_w1_c3 + y_w1_c3 >= 1.7187
  lat_lin_w1_c4: x_w1_c4 + y_w1_c4 >= 1.7781
  demand_w1: x_w1_c0 + x_w1_c1 + x_w1_c2 + x_w1_c3 + x_w1_c4 = 10
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 0.8157
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 5.6043
  lat_lin_w2_c2: x_w2_c2 + y_w2_c2 >= 6.3789
  lat_lin_w2_c3: x_w2_c3 + y_w2_c3 >= 0.8323
  lat_lin_w2_c4: x_w2_c4 + y_w2_c4 >= 1.3688
  demand_w2: x_w2_c0 + x_w2_c1 + x_w2_c2 + x_w2_c3 + x_w2_c4 = 15
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 1.8336
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 1.1661
  lat_lin_w3_c2: x_w3_c2 + y_w3_c2 >= 1.4200
  lat_lin_w3_c3: x_w3_c3 + y_w3_c3 >= 2.1425
  lat_lin_w3_c4: x_w3_c4 + y_w3_c4 >= 0.4378
  demand_w3: x_w3_c0 + x_w3_c1 + x_w3_c2 + x_w3_c3 + x_w3_c4 = 7
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 4.7776
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 0.4804
  lat_lin_w4_c2: x_w4_c2 + y_w4_c2 >= 1.5222
  lat_lin_w4_c3: x_w4_c3 + y_w4_c3 >= 1.3640
  lat_lin_w4_c4: x_w4_c4 + y_w4_c4 >= 4.8557
  demand_w4: x_w4_c0 + x_w4_c1 + x_w4_c2 + x_w4_c3 + x_w4_c4 = 13
  lat_lin_w5_c0: x_w5_c0 + y_w5_c0 >= 0.6456
  lat_lin_w5_c1: x_w5_c1 + y_w5_c1 >= 3.2179
  lat_lin_w5_c2: x_w5_c2 + y_w5_c2 >= 0.8207
  lat_lin_w5_c3: x_w5_c3 + y_w5_c3 >= 2.3947
  lat_lin_w5_c4: x_w5_c4 + y_w5_c4 >= 2.9211
  demand_w5: x_w5_c0 + x_w5_c1 + x_w5_c2 + x_w5_c3 + x_w5_c4 = 10
  lat_lin_w6_c0: x_w6_c0 + y_w6_c0 >= 2.2739
  lat_lin_w6_c1: x_w6_c1 + y_w6_c1 >= 1.8310
  lat_lin_w6_c2: x_w6_c2 + y_w6_c2 >= 3.6606
  lat_lin_w6_c3: x_w6_c3 + y_w6_c3 >= 0.9784
  lat_lin_w6_c4: x_w6_c4 + y_w6_c4 >= 3.2561
  demand_w6: x_w6_c0 + x_w6_c1 + x_w6_c2 + x_w6_c3 + x_w6_c4 = 12
  lat_lin_w7_c0: x_w7_c0 + y_w7_c0 >= 0.0752
  lat_lin_w7_c1: x_w7_c1 + y_w7_c1 >= 0.7184
  lat_lin_w7_c2: x_w7_c2 + y_w7_c2 >= 3.3179
  lat_lin_w7_c3: x_w7_c3 + y_w7_c3 >= 3.1279
  lat_lin_w7_c4: x_w7_c4 + y_w7_c4 >= 0.7607
  demand_w7: x_w7_c0 + x_w7_c1 + x_w7_c2 + x_w7_c3 + x_w7_c4 = 8
  lat_lin_w8_c0: x_w8_c0 + y_w8_c0 >= 3.1992
  lat_lin_w8_c1: x_w8_c1 + y_w8_c1 >= 3.6234
  lat_lin_w8_c2: x_w8_c2 + y_w8_c2 >= 3.4624
  lat_lin_w8_c3: x_w8_c3 + y_w8_c3 >= 1.3304
  lat_lin_w8_c4: x_w8_c4 + y_w8_c4 >= 2.3846
  demand_w8: x_w8_c0 + x_w8_c1 + x_w8_c2 + x_w8_c3 + x_w8_c4 = 14
  lat_lin_w9_c0: x_w9_c0 + y_w9_c0 >= 0.8761
  lat_lin_w9_c1: x_w9_c1 + y_w9_c1 >= 1.6545
  lat_lin_w9_c2: x_w9_c2 + y_w9_c2 >= 1.6309
  lat_lin_w9_c3: x_w9_c3 + y_w9_c3 >= 1.6888
  lat_lin_w9_c4: x_w9_c4 + y_w9_c4 >= 3.1497
  demand_w9: x_w9_c0 + x_w9_c1 + x_w9_c2 + x_w9_c3 + x_w9_c4 = 9
  lat_lin_w10_c0: x_w10_c0 + y_w10_c0 >= 1.3386
  lat_lin_w10_c1: x_w10_c1 + y_w10_c1 >= 3.3433
  lat_lin_w10_c2: x_w10_c2 + y_w10_c2 >= 0.2457
  lat_lin_w10_c3: x_w10_c3 + y_w10_c3 >= 3.5265
  lat_lin_w10_c4: x_w10_c4 + y_w10_c4 >= 2.5459
  demand_w10: x_w10_c0 + x_w10_c1 + x_w10_c2 + x_w10_c3 + x_w10_c4 = 11
  lat_lin_w11_c0: x_w11_c0 + y_w11_c0 >= 3.6900
  lat_lin_w11_c1: x_w11_c1 + y_w11_c1 >= 0.9812
  lat_lin_w11_c2: x_w11_c2 + y_w11_c2 >= 1.5838
  lat_lin_w11_c3: x_w11_c3 + y_w11_c3 >= 0.5006
  lat_lin_w11_c4: x_w11_c4 + y_w11_c4 >= 1.2444
  demand_w11: x_w11_c0 + x_w11_c1 + x_w11_c2 + x_w11_c3 + x_w11_c4 = 8
  lat_lin_w12_c0: x_w12_c0 + y_w12_c0 >= 0.9494
  lat_lin_w12_c1: x_w12_c1 + y_w12_c1 >= 0.2606
  lat_lin_w12_c2: x_w12_c2 + y_w12_c2 >= 0.7409
  lat_lin_w12_c3: x_w12_c3 + y_w12_c3 >= 0.9580
  lat_lin_w12_c4: x_w12_c4 + y_w12_c4 >= 0.0911
  demand_w12: x_w12_c0 + x_w12_c1 + x_w12_c2 + x_w12_c3 + x_w12_c4 = 3
  lat_lin_w13_c0: x_w13_c0 + y_w13_c0 >= 0.9257
  lat_lin_w13_c1: x_w13_c1 + y_w13_c1 >= 0.8514
  lat_lin_w13_c2: x_w13_c2 + y_w13_c2 >= 0.9691
  lat_lin_w13_c3: x_w13_c3 + y_w13_c3 >= 0.1631
  lat_lin_w13_c4: x_w13_c4 + y_w13_c4 >= 1.0907
  demand_w13: x_w13_c0 + x_w13_c1 + x_w13_c2 + x_w13_c3 + x_w13_c4 = 4
  lat_lin_w14_c0: x_w14_c0 + y_w14_c0 >= 3.0283
  lat_lin_w14_c1: x_w14_c1 + y_w14_c1 >= 2.1866
  lat_lin_w14_c2: x_w14_c2 + y_w14_c2 >= 2.8864
  lat_lin_w14_c3: x_w14_c3 + y_w14_c3 >= 2.5408
  lat_lin_w14_c4: x_w14_c4 + y_w14_c4 >= 0.3579
  demand_w14: x_w14_c0 + x_w14_c1 + x_w14_c2 + x_w14_c3 + x_w14_c4 = 11
  lat_lin_w15_c0: x_w15_c0 + y_w15_c0 >= 0.9827
  lat_lin_w15_c1: x_w15_c1 + y_w15_c1 >= 0.7255
  lat_lin_w15_c2: x_w15_c2 + y_w15_c2 >= 0.8051
  lat_lin_w15_c3: x_w15_c3 + y_w15_c3 >= 1.0172
  lat_lin_w15_c4: x_w15_c4 + y_w15_c4 >= 0.4694
  demand_w15: x_w15_c0 + x_w15_c1 + x_w15_c2 + x_w15_c3 + x_w15_c4 = 4
  lat_lin_w16_c0: x_w16_c0 + y_w16_c0 >= 2.4738
  lat_lin_w16_c1: x_w16_c1 + y_w16_c1 >= 1.4006
  lat_lin_w16_c2: x_w16_c2 + y_w16_c2 >= 1.0056
  lat_lin_w16_c3: x_w16_c3 + y_w16_c3 >= 2.1820
  lat_lin_w16_c4: x_w16_c4 + y_w16_c4 >= 1.9380
  demand_w16: x_w16_c0 + x_w16_c1 + x_w16_c2 + x_w16_c3 + x_w16_c4 = 9
  lat_lin_w17_c0: x_w17_c0 + y_w17_c0 >= 3.9516
  lat_lin_w17_c1: x_w17_c1 + y_w17_c1 >= 2.9116
  lat_lin_w17_c2: x_w17_c2 + y_w17_c2 >= 0.0128
  lat_lin_w17_c3: x_w17_c3 + y_w17_c3 >= 0.1525
  lat_lin_w17_c4: x_w17_c4 + y_w17_c4 >= 2.9715
  demand_w17: x_w17_c0 + x_w17_c1 + x_w17_c2 + x_w17_c3 + x_w17_c4 = 10
  lat_lin_w18_c0: x_w18_c0 + y_w18_c0 >= 1.9514
  lat_lin_w18_c1: x_w18_c1 + y_w18_c1 >= 1.7167
  lat_lin_w18_c2: x_w18_c2 + y_w18_c2 >= 2.3875
  lat_lin_w18_c3: x_w18_c3 + y_w18_c3 >= 1.8806
  lat_lin_w18_c4: x_w18_c4 + y_w18_c4 >= 6.0637
  demand_w18: x_w18_c0 + x_w18_c1 + x_w18_c2 + x_w18_c3 + x_w18_c4 = 14
  lat_lin_w19_c0: x_w19_c0 + y_w19_c0 >= 1.1532
  lat_lin_w19_c1: x_w19_c1 + y_w19_c1 >= 0.7290
  lat_lin_w19_c2: x_w19_c2 + y_w19_c2 >= 1.1366
  lat_lin_w19_c3: x_w19_c3 + y_w19_c3 >= 0.8749
  lat_lin_w19_c4: x_w19_c4 + y_w19_c4 >= 0.1063
  demand_w19: x_w19_c0 + x_w19_c1 + x_w19_c2 + x_w19_c3 + x_w19_c4 = 4
  sum_cost: 1.0348 x_w0_c0 + 6.6401 x_w0_c1 + 5.1886 x_w0_c2 + 6.8183 x_w0_c3 + 5.7444 x_w0_c4 + 1.4551 x_w1_c0 + 7.3553 x_w1_c1 + 7.6976 x_w1_c2 + 4.7348 x_w1_c3 + 5.0208 x_w1_c4 + 1.1198 x_w2_c0 + 6.2249 x_w2_c1 + 3.2677 x_w2_c2 + 3.6371 x_w2_c3 + 3.6397 x_w2_c4 + 0.6898 x_w3_c0 + 6.6191 x_w3_c1 + 5.3675 x_w3_c2 + 4.5587 x_w3_c3 + 3.9674 x_w3_c4 + 1.4472 x_w4_c0 + 4.2350 x_w4_c1 + 5.9029 x_w4_c2 + 5.8638 x_w4_c3 + 4.3053 x_w4_c4 + 0.9381 x_w5_c0 + 4.2383 x_w5_c1 + 7.1316 x_w5_c2 + 6.9526 x_w5_c3 + 3.2605 x_w5_c4 + 1.4677 x_w6_c0 + 3.2122 x_w6_c1 + 3.6722 x_w6_c2 + 4.2425 x_w6_c3 + 7.6346 x_w6_c4 + 1.7518 x_w7_c0 + 6.2393 x_w7_c1 + 3.3847 x_w7_c2 + 6.0029 x_w7_c3 + 3.1489 x_w7_c4 + 0.6249 x_w8_c0 + 7.1034 x_w8_c1 + 3.5071 x_w8_c2 + 4.2313 x_w8_c3 + 7.4065 x_w8_c4 + 0.9338 x_w9_c0 + 4.8197 x_w9_c1 + 7.2751 x_w9_c2 + 4.4925 x_w9_c3 + 6.4807 x_w9_c4 + 1.2771 x_w10_c0 + 5.3954 x_w10_c1 + 5.5508 x_w10_c2 + 6.8964 x_w10_c3 + 6.8599 x_w10_c4 + 1.2856 x_w11_c0 + 4.4885 x_w11_c1 + 7.6592 x_w11_c2 + 6.6870 x_w11_c3 + 3.6766 x_w11_c4 + 0.6041 x_w12_c0 + 5.9415 x_w12_c1 + 4.4280 x_w12_c2 + 6.3031 x_w12_c3 + 4.9115 x_w12_c4 + 1.9157 x_w13_c0 + 5.8898 x_w13_c1 + 3.6846 x_w13_c2 + 7.4732 x_w13_c3 + 4.6149 x_w13_c4 + 1.1313 x_w14_c0 + 4.9309 x_w14_c1 + 6.9662 x_w14_c2 + 3.5608 x_w14_c3 + 5.6037 x_w14_c4 + 1.4670 x_w15_c0 + 4.9913 x_w15_c1 + 5.5544 x_w15_c2 + 5.2954 x_w15_c3 + 5.6348 x_w15_c4 + 0.6313 x_w16_c0 + 7.2126 x_w16_c1 + 5.6362 x_w16_c2 + 7.5087 x_w16_c3 + 7.8676 x_w16_c4 + 1.8499 x_w17_c0 + 5.9401 x_w17_c1 + 4.1761 x_w17_c2 + 3.0140 x_w17_c3 + 7.9046 x_w17_c4 + 1.3734 x_w18_c0 + 4.0160 x_w18_c1 + 4.9655 x_w18_c2 + 5.1840 x_w18_c3 + 3.6934 x_w18_c4 + 1.4777 x_w19_c0 + 6.5931 x_w19_c1 + 3.6281 x_w19_c2 + 5.9164 x_w19_c3 + 4.9092 x_w19_c4 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w0_c2 + y_w0_c3 + y_w0_c4 + y_w1_c0 + y_w1_c1 + y_w1_c2 + y_w1_c3 + y_w1_c4 + y_w2_c0 + y_w2_c1 + y_w2_c2 + y_w2_c3 + y_w2_c4 + y_w3_c0 + y_w3_c1 + y_w3_c2 + y_w3_c3 + y_w3_c4 + y_w4_c0 + y_w4_c1 + y_w4_c2 + y_w4_c3 + y_w4_c4 + y_w5_c0 + y_w5_c1 + y_w5_c2 + y_w5_c3 + y_w5_c4 + y_w6_c0 + y_w6_c1 + y_w6_c2 + y_w6_c3 + y_w6_c4 + y_w7_c0 + y_w7_c1 + y_w7_c2 + y_w7_c3 + y_w7_c4 + y_w8_c0 + y_w8_c1 + y_w8_c2 + y_w8_c3 + y_w8_c4 + y_w9_c0 + y_w9_c1 + y_w9_c2 + y_w9_c3 + y_w9_c4 + y_w10_c0 + y_w10_c1 + y_w10_c2 + y_w10_c3 + y_w10_c4 + y_w11_c0 + y_w11_c1 + y_w11_c2 + y_w11_c3 + y_w11_c4 + y_w12_c0 + y_w12_c1 + y_w12_c2 + y_w12_c3 + y_w12_c4 + y_w13_c0 + y_w13_c1 + y_w13_c2 + y_w13_c3 + y_w13_c4 + y_w14_c0 + y_w14_c1 + y_w14_c2 + y_w14_c3 + y_w14_c4 + y_w15_c0 + y_w15_c1 + y_w15_c2 + y_w15_c3 + y_w15_c4 + y_w16_c0 + y_w16_c1 + y_w16_c2 + y_w16_c3 + y_w16_c4 + y_w17_c0 + y_w17_c1 + y_w17_c2 + y_w17_c3 + y_w17_c4 + y_w18_c0 + y_w18_c1 + y_w18_c2 + y_w18_c3 + y_w18_c4 + y_w19_c0 + y_w19_c1 + y_w19_c2 + y_w19_c3 + y_w19_c4 - TotalLatency = 0
  cap_cpu_c0: 0.47 x_w0_c0 + 0.10 x_w1_c0 + 0.44 x_w2_c0 + 0.22 x_w3_c0 + 0.24 x_w4_c0 + 0.32 x_w5_c0 + 0.19 x_w6_c0 + 0.27 x_w7_c0 + 0.13 x_w8_c0 + 0.13 x_w9_c0 + 0.35 x_w10_c0 + 0.25 x_w11_c0 + 0.48 x_w12_c0 + 0.32 x_w13_c0 + 0.14 x_w14_c0 + 0.38 x_w15_c0 + 0.31 x_w16_c0 + 0.31 x_w17_c0 + 0.24 x_w18_c0 + 0.19 x_w19_c0 <= 50

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