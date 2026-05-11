Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 5000.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 0.0863
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 0.5025
  lat_lin_w0_c2: x_w0_c2 + y_w0_c2 >= 0.8848
  lat_lin_w0_c3: x_w0_c3 + y_w0_c3 >= 0.6851
  lat_lin_w0_c4: x_w0_c4 + y_w0_c4 >= 0.1137
  lat_lin_w0_c5: x_w0_c5 + y_w0_c5 >= 0.1618
  lat_lin_w0_c6: x_w0_c6 + y_w0_c6 >= 0.2779
  lat_lin_w0_c7: x_w0_c7 + y_w0_c7 >= 0.1338
  lat_lin_w0_c8: x_w0_c8 + y_w0_c8 >= 0.7928
  lat_lin_w0_c9: x_w0_c9 + y_w0_c9 >= 0.1791
  lat_lin_w0_c10: x_w0_c10 + y_w0_c10 >= 0.4037
  lat_lin_w0_c11: x_w0_c11 + y_w0_c11 >= 0.9448
  lat_lin_w0_c12: x_w0_c12 + y_w0_c12 >= 0.3601
  lat_lin_w0_c13: x_w0_c13 + y_w0_c13 >= 0.8997
  lat_lin_w0_c14: x_w0_c14 + y_w0_c14 >= 0.5604
  lat_lin_w0_c15: x_w0_c15 + y_w0_c15 >= 0.1098
  lat_lin_w0_c16: x_w0_c16 + y_w0_c16 >= 0.1727
  lat_lin_w0_c17: x_w0_c17 + y_w0_c17 >= 0.0894
  lat_lin_w0_c18: x_w0_c18 + y_w0_c18 >= 0.4489
  lat_lin_w0_c19: x_w0_c19 + y_w0_c19 >= 0.1926
  demand_w0: x_w0_c0 + x_w0_c1 + x_w0_c2 + x_w0_c3 + x_w0_c4 + x_w0_c5 + x_w0_c6 + x_w0_c7 + x_w0_c8 + x_w0_c9 + x_w0_c10 + x_w0_c11 + x_w0_c12 + x_w0_c13 + x_w0_c14 + x_w0_c15 + x_w0_c16 + x_w0_c17 + x_w0_c18 + x_w0_c19 = 8
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 0.1176
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 0.3883
  lat_lin_w1_c2: x_w1_c2 + y_w1_c2 >= 0.3322
  lat_lin_w1_c3: x_w1_c3 + y_w1_c3 >= 0.9282
  lat_lin_w1_c4: x_w1_c4 + y_w1_c4 >= 0.1799
  lat_lin_w1_c5: x_w1_c5 + y_w1_c5 >= 1.2287
  lat_lin_w1_c6: x_w1_c6 + y_w1_c6 >= 0.6711
  lat_lin_w1_c7: x_w1_c7 + y_w1_c7 >= 1.1265
  lat_lin_w1_c8: x_w1_c8 + y_w1_c8 >= 0.1176
  lat_lin_w1_c9: x_w1_c9 + y_w1_c9 >= 0.2317
  lat_lin_w1_c10: x_w1_c10 + y_w1_c10 >= 1.1551
  lat_lin_w1_c11: x_w1_c11 + y_w1_c11 >= 0.6841
  lat_lin_w1_c12: x_w1_c12 + y_w1_c12 >= 0.3952
  lat_lin_w1_c13: x_w1_c13 + y_w1_c13 >= 0.7322
  lat_lin_w1_c14: x_w1_c14 + y_w1_c14 >= 0.1082
  lat_lin_w1_c15: x_w1_c15 + y_w1_c15 >= 0.0581
  lat_lin_w1_c16: x_w1_c16 + y_w1_c16 >= 0.0520
  lat_lin_w1_c17: x_w1_c17 + y_w1_c17 >= 1.1672
  lat_lin_w1_c18: x_w1_c18 + y_w1_c18 >= 1.2750
  lat_lin_w1_c19: x_w1_c19 + y_w1_c19 >= 1.0512
  demand_w1: x_w1_c0 + x_w1_c1 + x_w1_c2 + x_w1_c3 + x_w1_c4 + x_w1_c5 + x_w1_c6 + x_w1_c7 + x_w1_c8 + x_w1_c9 + x_w1_c10 + x_w1_c11 + x_w1_c12 + x_w1_c13 + x_w1_c14 + x_w1_c15 + x_w1_c16 + x_w1_c17 + x_w1_c18 + x_w1_c19 = 12
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 0.2999
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 0.2182
  lat_lin_w2_c2: x_w2_c2 + y_w2_c2 >= 0.2353
  lat_lin_w2_c3: x_w2_c3 + y_w2_c3 >= 0.3450
  lat_lin_w2_c4: x_w2_c4 + y_w2_c4 >= 0.3469
  lat_lin_w2_c5: x_w2_c5 + y_w2_c5 >= 0.3566
  lat_lin_w2_c6: x_w2_c6 + y_w2_c6 >= 0.0209
  lat_lin_w2_c7: x_w2_c7 + y_w2_c7 >= 0.3329
  lat_lin_w2_c8: x_w2_c8 + y_w2_c8 >= 0.0873
  lat_lin_w2_c9: x_w2_c9 + y_w2_c9 >= 0.3656
  lat_lin_w2_c10: x_w2_c10 + y_w2_c10 >= 0.2074
  lat_lin_w2_c11: x_w2_c11 + y_w2_c11 >= 0.1485
  lat_lin_w2_c12: x_w2_c12 + y_w2_c12 >= 0.0034
  lat_lin_w2_c13: x_w2_c13 + y_w2_c13 >= 0.3765
  lat_lin_w2_c14: x_w2_c14 + y_w2_c14 >= 0.3728
  lat_lin_w2_c15: x_w2_c15 + y_w2_c15 >= 0.0704
  lat_lin_w2_c16: x_w2_c16 + y_w2_c16 >= 0.2747
  lat_lin_w2_c17: x_w2_c17 + y_w2_c17 >= 0.2434
  lat_lin_w2_c18: x_w2_c18 + y_w2_c18 >= 0.3757
  lat_lin_w2_c19: x_w2_c19 + y_w2_c19 >= 0.3185
  demand_w2: x_w2_c0 + x_w2_c1 + x_w2_c2 + x_w2_c3 + x_w2_c4 + x_w2_c5 + x_w2_c6 + x_w2_c7 + x_w2_c8 + x_w2_c9 + x_w2_c10 + x_w2_c11 + x_w2_c12 + x_w2_c13 + x_w2_c14 + x_w2_c15 + x_w2_c16 + x_w2_c17 + x_w2_c18 + x_w2_c19 = 5
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 0.0576
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 0.3713
  lat_lin_w3_c2: x_w3_c2 + y_w3_c2 >= 0.5385
  lat_lin_w3_c3: x_w3_c3 + y_w3_c3 >= 0.2909
  lat_lin_w3_c4: x_w3_c4 + y_w3_c4 >= 0.2696
  lat_lin_w3_c5: x_w3_c5 + y_w3_c5 >= 0.1156
  lat_lin_w3_c6: x_w3_c6 + y_w3_c6 >= 0.4828
  lat_lin_w3_c7: x_w3_c7 + y_w3_c7 >= 0.3035
  lat_lin_w3_c8: x_w3_c8 + y_w3_c8 >= 0.4117
  lat_lin_w3_c9: x_w3_c9 + y_w3_c9 >= 0.2247
  lat_lin_w3_c10: x_w3_c10 + y_w3_c10 >= 0.0818
  lat_lin_w3_c11: x_w3_c11 + y_w3_c11 >= 0.2076
  lat_lin_w3_c12: x_w3_c12 + y_w3_c12 >= 0.4174
  lat_lin_w3_c13: x_w3_c13 + y_w3_c13 >= 0.1454
  lat_lin_w3_c14: x_w3_c14 + y_w3_c14 >= 0.5207
  lat_lin_w3_c15: x_w3_c15 + y_w3_c15 >= 0.3402
  lat_lin_w3_c16: x_w3_c16 + y_w3_c16 >= 0.1105
  lat_lin_w3_c17: x_w3_c17 + y_w3_c17 >= 0.1287
  lat_lin_w3_c18: x_w3_c18 + y_w3_c18 >= 0.3978
  lat_lin_w3_c19: x_w3_c19 + y_w3_c19 >= 0.5835
  demand_w3: x_w3_c0 + x_w3_c1 + x_w3_c2 + x_w3_c3 + x_w3_c4 + x_w3_c5 + x_w3_c6 + x_w3_c7 + x_w3_c8 + x_w3_c9 + x_w3_c10 + x_w3_c11 + x_w3_c12 + x_w3_c13 + x_w3_c14 + x_w3_c15 + x_w3_c16 + x_w3_c17 + x_w3_c18 + x_w3_c19 = 6
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 0.5186
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 0.4518
  lat_lin_w4_c2: x_w4_c2 + y_w4_c2 >= 1.2213
  lat_lin_w4_c3: x_w4_c3 + y_w4_c3 >= 0.8525
  lat_lin_w4_c4: x_w4_c4 + y_w4_c4 >= 0.0572
  lat_lin_w4_c5: x_w4_c5 + y_w4_c5 >= 1.3337
  lat_lin_w4_c6: x_w4_c6 + y_w4_c6 >= 0.0618
  lat_lin_w4_c7: x_w4_c7 + y_w4_c7 >= 0.0713
  lat_lin_w4_c8: x_w4_c8 + y_w4_c8 >= 0.0364
  lat_lin_w4_c9: x_w4_c9 + y_w4_c9 >= 0.7988
  lat_lin_w4_c10: x_w4_c10 + y_w4_c10 >= 0.2457
  lat_lin_w4_c11: x_w4_c11 + y_w4_c11 >= 0.7169
  lat_lin_w4_c12: x_w4_c12 + y_w4_c12 >= 0.2855
  lat_lin_w4_c13: x_w4_c13 + y_w4_c13 >= 0.9699
  lat_lin_w4_c14: x_w4_c14 + y_w4_c14 >= 0.5856
  lat_lin_w4_c15: x_w4_c15 + y_w4_c15 >= 0.7959
  lat_lin_w4_c16: x_w4_c16 + y_w4_c16 >= 0.5515
  lat_lin_w4_c17: x_w4_c17 + y_w4_c17 >= 0.0326
  lat_lin_w4_c18: x_w4_c18 + y_w4_c18 >= 0.9656
  lat_lin_w4_c19: x_w4_c19 + y_w4_c19 >= 0.4472
  demand_w4: x_w4_c0 + x_w4_c1 + x_w4_c2 + x_w4_c3 + x_w4_c4 + x_w4_c5 + x_w4_c6 + x_w4_c7 + x_w4_c8 + x_w4_c9 + x_w4_c10 + x_w4_c11 + x_w4_c12 + x_w4_c13 + x_w4_c14 + x_w4_c15 + x_w4_c16 + x_w4_c17 + x_w4_c18 + x_w4_c19 = 11
  lat_lin_w5_c0: x_w5_c0 + y_w5_c0 >= 1.2151
  lat_lin_w5_c1: x_w5_c1 + y_w5_c1 >= 0.9591
  lat_lin_w5_c2: x_w5_c2 + y_w5_c2 >= 0.6038
  lat_lin_w5_c3: x_w5_c3 + y_w5_c3 >= 0.1909
  lat_lin_w5_c4: x_w5_c4 + y_w5_c4 >= 0.2360
  lat_lin_w5_c5: x_w5_c5 + y_w5_c5 >= 0.9008
  lat_lin_w5_c6: x_w5_c6 + y_w5_c6 >= 0.0704
  lat_lin_w5_c7: x_w5_c7 + y_w5_c7 >= 1.1605
  lat_lin_w5_c8: x_w5_c8 + y_w5_c8 >= 0.9299
  lat_lin_w5_c9: x_w5_c9 + y_w5_c9 >= 0.8924
  lat_lin_w5_c10: x_w5_c10 + y_w5_c10 >= 0.1759
  lat_lin_w5_c11: x_w5_c11 + y_w5_c11 >= 0.0031
  lat_lin_w5_c12: x_w5_c12 + y_w5_c12 >= 0.0443
  lat_lin_w5_c13: x_w5_c13 + y_w5_c13 >= 0.5006
  lat_lin_w5_c14: x_w5_c14 + y_w5_c14 >= 1.1988
  lat_lin_w5_c15: x_w5_c15 + y_w5_c15 >= 0.8671
  lat_lin_w5_c16: x_w5_c16 + y_w5_c16 >= 1.1769
  lat_lin_w5_c17: x_w5_c17 + y_w5_c17 >= 0.4026
  lat_lin_w5_c18: x_w5_c18 + y_w5_c18 >= 1.3274
  lat_lin_w5_c19: x_w5_c19 + y_w5_c19 >= 1.1445
  demand_w5: x_w5_c0 + x_w5_c1 + x_w5_c2 + x_w5_c3 + x_w5_c4 + x_w5_c5 + x_w5_c6 + x_w5_c7 + x_w5_c8 + x_w5_c9 + x_w5_c10 + x_w5_c11 + x_w5_c12 + x_w5_c13 + x_w5_c14 + x_w5_c15 + x_w5_c16 + x_w5_c17 + x_w5_c18 + x_w5_c19 = 14
  lat_lin_w6_c0: x_w6_c0 + y_w6_c0 >= 1.0466
  lat_lin_w6_c1: x_w6_c1 + y_w6_c1 >= 0.3802
  lat_lin_w6_c2: x_w6_c2 + y_w6_c2 >= 0.5525
  lat_lin_w6_c3: x_w6_c3 + y_w6_c3 >= 1.1317
  lat_lin_w6_c4: x_w6_c4 + y_w6_c4 >= 1.3792
  lat_lin_w6_c5: x_w6_c5 + y_w6_c5 >= 0.7595
  lat_lin_w6_c6: x_w6_c6 + y_w6_c6 >= 0.1277
  lat_lin_w6_c7: x_w6_c7 + y_w6_c7 >= 0.3827
  lat_lin_w6_c8: x_w6_c8 + y_w6_c8 >= 1.2282
  lat_lin_w6_c9: x_w6_c9 + y_w6_c9 >= 1.1949
  lat_lin_w6_c10: x_w6_c10 + y_w6_c10 >= 0.1514
  lat_lin_w6_c11: x_w6_c11 + y_w6_c11 >= 0.2895
  lat_lin_w6_c12: x_w6_c12 + y_w6_c12 >= 0.4980
  lat_lin_w6_c13: x_w6_c13 + y_w6_c13 >= 0.5257
  lat_lin_w6_c14: x_w6_c14 + y_w6_c14 >= 0.0197
  lat_lin_w6_c15: x_w6_c15 + y_w6_c15 >= 0.0748
  lat_lin_w6_c16: x_w6_c16 + y_w6_c16 >= 0.8914
  lat_lin_w6_c17: x_w6_c17 + y_w6_c17 >= 1.0165
  lat_lin_w6_c18: x_w6_c18 + y_w6_c18 >= 0.1783
  lat_lin_w6_c19: x_w6_c19 + y_w6_c19 >= 0.1715
  demand_w6: x_w6_c0 + x_w6_c1 + x_w6_c2 + x_w6_c3 + x_w6_c4 + x_w6_c5 + x_w6_c6 + x_w6_c7 + x_w6_c8 + x_w6_c9 + x_w6_c10 + x_w6_c11 + x_w6_c12 + x_w6_c13 + x_w6_c14 + x_w6_c15 + x_w6_c16 + x_w6_c17 + x_w6_c18 + x_w6_c19 = 12
  lat_lin_w7_c0: x_w7_c0 + y_w7_c0 >= 1.6262
  lat_lin_w7_c1: x_w7_c1 + y_w7_c1 >= 0.6223
  lat_lin_w7_c2: x_w7_c2 + y_w7_c2 >= 0.6972
  lat_lin_w7_c3: x_w7_c3 + y_w7_c3 >= 0.3024
  lat_lin_w7_c4: x_w7_c4 + y_w7_c4 >= 0.3789
  lat_lin_w7_c5: x_w7_c5 + y_w7_c5 >= 1.8276
  lat_lin_w7_c6: x_w7_c6 + y_w7_c6 >= 0.1992
  lat_lin_w7_c7: x_w7_c7 + y_w7_c7 >= 0.0335
  lat_lin_w7_c8: x_w7_c8 + y_w7_c8 >= 1.4648
  lat_lin_w7_c9: x_w7_c9 + y_w7_c9 >= 0.0247
  lat_lin_w7_c10: x_w7_c10 + y_w7_c10 >= 0.3084
  lat_lin_w7_c11: x_w7_c11 + y_w7_c11 >= 0.7130
  lat_lin_w7_c12: x_w7_c12 + y_w7_c12 >= 0.6333
  lat_lin_w7_c13: x_w7_c13 + y_w7_c13 >= 0.1218
  lat_lin_w7_c14: x_w7_c14 + y_w7_c14 >= 1.7965
  lat_lin_w7_c15: x_w7_c15 + y_w7_c15 >= 0.0711
  lat_lin_w7_c16: x_w7_c16 + y_w7_c16 >= 0.1549
  lat_lin_w7_c17: x_w7_c17 + y_w7_c17 >= 0.7946
  lat_lin_w7_c18: x_w7_c18 + y_w7_c18 >= 0.1408
  lat_lin_w7_c19: x_w7_c19 + y_w7_c19 >= 1.0886
  demand_w7: x_w7_c0 + x_w7_c1 + x_w7_c2 + x_w7_c3 + x_w7_c4 + x_w7_c5 + x_w7_c6 + x_w7_c7 + x_w7_c8 + x_w7_c9 + x_w7_c10 + x_w7_c11 + x_w7_c12 + x_w7_c13 + x_w7_c14 + x_w7_c15 + x_w7_c16 + x_w7_c17 + x_w7_c18 + x_w7_c19 = 13
  lat_lin_w8_c0: x_w8_c0 + y_w8_c0 >= 0.4691
  lat_lin_w8_c1: x_w8_c1 + y_w8_c1 >= 0.3565
  lat_lin_w8_c2: x_w8_c2 + y_w8_c2 >= 0.0888
  lat_lin_w8_c3: x_w8_c3 + y_w8_c3 >= 0.4542
  lat_lin_w8_c4: x_w8_c4 + y_w8_c4 >= 0.1920
  lat_lin_w8_c5: x_w8_c5 + y_w8_c5 >= 0.3438
  lat_lin_w8_c6: x_w8_c6 + y_w8_c6 >= 0.1964
  lat_lin_w8_c7: x_w8_c7 + y_w8_c7 >= 0.0376
  lat_lin_w8_c8: x_w8_c8 + y_w8_c8 >= 0.1993
  lat_lin_w8_c9: x_w8_c9 + y_w8_c9 >= 0.1178
  lat_lin_w8_c10: x_w8_c10 + y_w8_c10 >= 0.0685
  lat_lin_w8_c11: x_w8_c11 + y_w8_c11 >= 0.3792
  lat_lin_w8_c12: x_w8_c12 + y_w8_c12 >= 0.1128
  lat_lin_w8_c13: x_w8_c13 + y_w8_c13 >= 0.2179
  lat_lin_w8_c14: x_w8_c14 + y_w8_c14 >= 0.3085
  lat_lin_w8_c15: x_w8_c15 + y_w8_c15 >= 0.0186
  lat_lin_w8_c16: x_w8_c16 + y_w8_c16 >= 0.1074
  lat_lin_w8_c17: x_w8_c17 + y_w8_c17 >= 0.0777
  lat_lin_w8_c18: x_w8_c18 + y_w8_c18 >= 0.0650
  lat_lin_w8_c19: x_w8_c19 + y_w8_c19 >= 0.1889
  demand_w8: x_w8_c0 + x_w8_c1 + x_w8_c2 + x_w8_c3 + x_w8_c4 + x_w8_c5 + x_w8_c6 + x_w8_c7 + x_w8_c8 + x_w8_c9 + x_w8_c10 + x_w8_c11 + x_w8_c12 + x_w8_c13 + x_w8_c14 + x_w8_c15 + x_w8_c16 + x_w8_c17 + x_w8_c18 + x_w8_c19 = 4
  lat_lin_w9_c0: x_w9_c0 + y_w9_c0 >= 0.1688
  lat_lin_w9_c1: x_w9_c1 + y_w9_c1 >= 0.4094
  lat_lin_w9_c2: x_w9_c2 + y_w9_c2 >= 0.2500
  lat_lin_w9_c3: x_w9_c3 + y_w9_c3 >= 0.1404
  lat_lin_w9_c4: x_w9_c4 + y_w9_c4 >= 0.2947
  lat_lin_w9_c5: x_w9_c5 + y_w9_c5 >= 0.4305
  lat_lin_w9_c6: x_w9_c6 + y_w9_c6 >= 0.0487
  lat_lin_w9_c7: x_w9_c7 + y_w9_c7 >= 0.4545
  lat_lin_w9_c8: x_w9_c8 + y_w9_c8 >= 0.2925
  lat_lin_w9_c9: x_w9_c9 + y_w9_c9 >= 0.2964
  lat_lin_w9_c10: x_w9_c10 + y_w9_c10 >= 0.5560
  lat_lin_w9_c11: x_w9_c11 + y_w9_c11 >= 0.5136
  lat_lin_w9_c12: x_w9_c12 + y_w9_c12 >= 0.2313
  lat_lin_w9_c13: x_w9_c13 + y_w9_c13 >= 0.3757
  lat_lin_w9_c14: x_w9_c14 + y_w9_c14 >= 0.2271
  lat_lin_w9_c15: x_w9_c15 + y_w9_c15 >= 0.2993
  lat_lin_w9_c16: x_w9_c16 + y_w9_c16 >= 0.3965
  lat_lin_w9_c17: x_w9_c17 + y_w9_c17 >= 0.5405
  lat_lin_w9_c18: x_w9_c18 + y_w9_c18 >= 0.0409
  lat_lin_w9_c19: x_w9_c19 + y_w9_c19 >= 0.0333
  demand_w9: x_w9_c0 + x_w9_c1 + x_w9_c2 + x_w9_c3 + x_w9_c4 + x_w9_c5 + x_w9_c6 + x_w9_c7 + x_w9_c8 + x_w9_c9 + x_w9_c10 + x_w9_c11 + x_w9_c12 + x_w9_c13 + x_w9_c14 + x_w9_c15 + x_w9_c16 + x_w9_c17 + x_w9_c18 + x_w9_c19 = 6
  lat_lin_w10_c0: x_w10_c0 + y_w10_c0 >= 0.1864
  lat_lin_w10_c1: x_w10_c1 + y_w10_c1 >= 0.1956
  lat_lin_w10_c2: x_w10_c2 + y_w10_c2 >= 0.2516
  lat_lin_w10_c3: x_w10_c3 + y_w10_c3 >= 0.8314
  lat_lin_w10_c4: x_w10_c4 + y_w10_c4 >= 0.8699
  lat_lin_w10_c5: x_w10_c5 + y_w10_c5 >= 0.1004
  lat_lin_w10_c6: x_w10_c6 + y_w10_c6 >= 0.4960
  lat_lin_w10_c7: x_w10_c7 + y_w10_c7 >= 0.6345
  lat_lin_w10_c8: x_w10_c8 + y_w10_c8 >= 0.8780
  lat_lin_w10_c9: x_w10_c9 + y_w10_c9 >= 0.1080
  lat_lin_w10_c10: x_w10_c10 + y_w10_c10 >= 0.4975
  lat_lin_w10_c11: x_w10_c11 + y_w10_c11 >= 0.1301
  lat_lin_w10_c12: x_w10_c12 + y_w10_c12 >= 0.5398
  lat_lin_w10_c13: x_w10_c13 + y_w10_c13 >= 0.3935
  lat_lin_w10_c14: x_w10_c14 + y_w10_c14 >= 0.3614
  lat_lin_w10_c15: x_w10_c15 + y_w10_c15 >= 0.9540
  lat_lin_w10_c16: x_w10_c16 + y_w10_c16 >= 0.3048
  lat_lin_w10_c17: x_w10_c17 + y_w10_c17 >= 0.2520
  lat_lin_w10_c18: x_w10_c18 + y_w10_c18 >= 0.7853
  lat_lin_w10_c19: x_w10_c19 + y_w10_c19 >= 0.2296
  demand_w10: x_w10_c0 + x_w10_c1 + x_w10_c2 + x_w10_c3 + x_w10_c4 + x_w10_c5 + x_w10_c6 + x_w10_c7 + x_w10_c8 + x_w10_c9 + x_w10_c10 + x_w10_c11 + x_w10_c12 + x_w10_c13 + x_w10_c14 + x_w10_c15 + x_w10_c16 + x_w10_c17 + x_w10_c18 + x_w10_c19 = 9
  lat_lin_w11_c0: x_w11_c0 + y_w11_c0 >= 0.2356
  lat_lin_w11_c1: x_w11_c1 + y_w11_c1 >= 0.1427
  lat_lin_w11_c2: x_w11_c2 + y_w11_c2 >= 0.2106
  lat_lin_w11_c3: x_w11_c3 + y_w11_c3 >= 0.1431
  lat_lin_w11_c4: x_w11_c4 + y_w11_c4 >= 0.2323
  lat_lin_w11_c5: x_w11_c5 + y_w11_c5 >= 0.0085
  lat_lin_w11_c6: x_w11_c6 + y_w11_c6 >= 0.1732
  lat_lin_w11_c7: x_w11_c7 + y_w11_c7 >= 0.0382
  lat_lin_w11_c8: x_w11_c8 + y_w11_c8 >= 0.0416
  lat_lin_w11_c9: x_w11_c9 + y_w11_c9 >= 0.2307
  lat_lin_w11_c10: x_w11_c10 + y_w11_c10 >= 0.2661
  lat_lin_w11_c11: x_w11_c11 + y_w11_c11 >= 0.1075
  lat_lin_w11_c12: x_w11_c12 + y_w11_c12 >= 0.0168
  lat_lin_w11_c13: x_w11_c13 + y_w11_c13 >= 0.2393
  lat_lin_w11_c14: x_w11_c14 + y_w11_c14 >= 0.1968
  lat_lin_w11_c15: x_w11_c15 + y_w11_c15 >= 0.1674
  lat_lin_w11_c16: x_w11_c16 + y_w11_c16 >= 0.2498
  lat_lin_w11_c17: x_w11_c17 + y_w11_c17 >= 0.0157
  lat_lin_w11_c18: x_w11_c18 + y_w11_c18 >= 0.2329
  lat_lin_w11_c19: x_w11_c19 + y_w11_c19 >= 0.0514
  demand_w11: x_w11_c0 + x_w11_c1 + x_w11_c2 + x_w11_c3 + x_w11_c4 + x_w11_c5 + x_w11_c6 + x_w11_c7 + x_w11_c8 + x_w11_c9 + x_w11_c10 + x_w11_c11 + x_w11_c12 + x_w11_c13 + x_w11_c14 + x_w11_c15 + x_w11_c16 + x_w11_c17 + x_w11_c18 + x_w11_c19 = 3
  lat_lin_w12_c0: x_w12_c0 + y_w12_c0 >= 0.8375
  lat_lin_w12_c1: x_w12_c1 + y_w12_c1 >= 0.2463
  lat_lin_w12_c2: x_w12_c2 + y_w12_c2 >= 0.2067
  lat_lin_w12_c3: x_w12_c3 + y_w12_c3 >= 0.1179
  lat_lin_w12_c4: x_w12_c4 + y_w12_c4 >= 0.4039
  lat_lin_w12_c5: x_w12_c5 + y_w12_c5 >= 0.5641
  lat_lin_w12_c6: x_w12_c6 + y_w12_c6 >= 0.4286
  lat_lin_w12_c7: x_w12_c7 + y_w12_c7 >= 0.1914
  lat_lin_w12_c8: x_w12_c8 + y_w12_c8 >= 0.4171
  lat_lin_w12_c9: x_w12_c9 + y_w12_c9 >= 0.6722
  lat_lin_w12_c10: x_w12_c10 + y_w12_c10 >= 0.7424
  lat_lin_w12_c11: x_w12_c11 + y_w12_c11 >= 0.8051
  lat_lin_w12_c12: x_w12_c12 + y_w12_c12 >= 0.6191
  lat_lin_w12_c13: x_w12_c13 + y_w12_c13 >= 0.6601
  lat_lin_w12_c14: x_w12_c14 + y_w12_c14 >= 0.7418
  lat_lin_w12_c15: x_w12_c15 + y_w12_c15 >= 0.7872
  lat_lin_w12_c16: x_w12_c16 + y_w12_c16 >= 0.4687
  lat_lin_w12_c17: x_w12_c17 + y_w12_c17 >= 0.2650
  lat_lin_w12_c18: x_w12_c18 + y_w12_c18 >= 0.1139
  lat_lin_w12_c19: x_w12_c19 + y_w12_c19 >= 0.7112
  demand_w12: x_w12_c0 + x_w12_c1 + x_w12_c2 + x_w12_c3 + x_w12_c4 + x_w12_c5 + x_w12_c6 + x_w12_c7 + x_w12_c8 + x_w12_c9 + x_w12_c10 + x_w12_c11 + x_w12_c12 + x_w12_c13 + x_w12_c14 + x_w12_c15 + x_w12_c16 + x_w12_c17 + x_w12_c18 + x_w12_c19 = 10
  lat_lin_w13_c0: x_w13_c0 + y_w13_c0 >= 0.2725
  lat_lin_w13_c1: x_w13_c1 + y_w13_c1 >= 0.2601
  lat_lin_w13_c2: x_w13_c2 + y_w13_c2 >= 0.0994
  lat_lin_w13_c3: x_w13_c3 + y_w13_c3 >= 0.4282
  lat_lin_w13_c4: x_w13_c4 + y_w13_c4 >= 0.5332
  lat_lin_w13_c5: x_w13_c5 + y_w13_c5 >= 0.4065
  lat_lin_w13_c6: x_w13_c6 + y_w13_c6 >= 0.0919
  lat_lin_w13_c7: x_w13_c7 + y_w13_c7 >= 0.5787
  lat_lin_w13_c8: x_w13_c8 + y_w13_c8 >= 0.5989
  lat_lin_w13_c9: x_w13_c9 + y_w13_c9 >= 0.5970
  lat_lin_w13_c10: x_w13_c10 + y_w13_c10 >= 0.0960
  lat_lin_w13_c11: x_w13_c11 + y_w13_c11 >= 0.4086
  lat_lin_w13_c12: x_w13_c12 + y_w13_c12 >= 0.3970
  lat_lin_w13_c13: x_w13_c13 + y_w13_c13 >= 0.0075
  lat_lin_w13_c14: x_w13_c14 + y_w13_c14 >= 0.3142
  lat_lin_w13_c15: x_w13_c15 + y_w13_c15 >= 0.0282
  lat_lin_w13_c16: x_w13_c16 + y_w13_c16 >= 0.1382
  lat_lin_w13_c17: x_w13_c17 + y_w13_c17 >= 0.5834
  lat_lin_w13_c18: x_w13_c18 + y_w13_c18 >= 0.5551
  lat_lin_w13_c19: x_w13_c19 + y_w13_c19 >= 0.6053
  demand_w13: x_w13_c0 + x_w13_c1 + x_w13_c2 + x_w13_c3 + x_w13_c4 + x_w13_c5 + x_w13_c6 + x_w13_c7 + x_w13_c8 + x_w13_c9 + x_w13_c10 + x_w13_c11 + x_w13_c12 + x_w13_c13 + x_w13_c14 + x_w13_c15 + x_w13_c16 + x_w13_c17 + x_w13_c18 + x_w13_c19 = 7
  lat_lin_w14_c0: x_w14_c0 + y_w14_c0 >= 0.0032
  lat_lin_w14_c1: x_w14_c1 + y_w14_c1 >= 0.1746
  lat_lin_w14_c2: x_w14_c2 + y_w14_c2 >= 0.0929
  lat_lin_w14_c3: x_w14_c3 + y_w14_c3 >= 0.0181
  lat_lin_w14_c4: x_w14_c4 + y_w14_c4 >= 0.1985
  lat_lin_w14_c5: x_w14_c5 + y_w14_c5 >= 0.1418
  lat_lin_w14_c6: x_w14_c6 + y_w14_c6 >= 0.2313
  lat_lin_w14_c7: x_w14_c7 + y_w14_c7 >= 0.1931
  lat_lin_w14_c8: x_w14_c8 + y_w14_c8 >= 0.0155
  lat_lin_w14_c9: x_w14_c9 + y_w14_c9 >= 0.2208
  lat_lin_w14_c10: x_w14_c10 + y_w14_c10 >= 0.1870
  lat_lin_w14_c11: x_w14_c11 + y_w14_c11 >= 0.1529
  lat_lin_w14_c12: x_w14_c12 + y_w14_c12 >= 0.0565
  lat_lin_w14_c13: x_w14_c13 + y_w14_c13 >= 0.2928
  lat_lin_w14_c14: x_w14_c14 + y_w14_c14 >= 0.1128
  lat_lin_w14_c15: x_w14_c15 + y_w14_c15 >= 0.2608
  lat_lin_w14_c16: x_w14_c16 + y_w14_c16 >= 0.0979
  lat_lin_w14_c17: x_w14_c17 + y_w14_c17 >= 0.2533
  lat_lin_w14_c18: x_w14_c18 + y_w14_c18 >= 0.2870
  lat_lin_w14_c19: x_w14_c19 + y_w14_c19 >= 0.0092
  demand_w14: x_w14_c0 + x_w14_c1 + x_w14_c2 + x_w14_c3 + x_w14_c4 + x_w14_c5 + x_w14_c6 + x_w14_c7 + x_w14_c8 + x_w14_c9 + x_w14_c10 + x_w14_c11 + x_w14_c12 + x_w14_c13 + x_w14_c14 + x_w14_c15 + x_w14_c16 + x_w14_c17 + x_w14_c18 + x_w14_c19 = 3
  lat_lin_w15_c0: x_w15_c0 + y_w15_c0 >= 0.4499
  lat_lin_w15_c1: x_w15_c1 + y_w15_c1 >= 0.5462
  lat_lin_w15_c2: x_w15_c2 + y_w15_c2 >= 0.1581
  lat_lin_w15_c3: x_w15_c3 + y_w15_c3 >= 0.1495
  lat_lin_w15_c4: x_w15_c4 + y_w15_c4 >= 0.5337
  lat_lin_w15_c5: x_w15_c5 + y_w15_c5 >= 0.3397
  lat_lin_w15_c6: x_w15_c6 + y_w15_c6 >= 0.4961
  lat_lin_w15_c7: x_w15_c7 + y_w15_c7 >= 0.7313
  lat_lin_w15_c8: x_w15_c8 + y_w15_c8 >= 0.3111
  lat_lin_w15_c9: x_w15_c9 + y_w15_c9 >= 0.4128
  lat_lin_w15_c10: x_w15_c10 + y_w15_c10 >= 0.0411
  lat_lin_w15_c11: x_w15_c11 + y_w15_c11 >= 0.9236
  lat_lin_w15_c12: x_w15_c12 + y_w15_c12 >= 0.3251
  lat_lin_w15_c13: x_w15_c13 + y_w15_c13 >= 0.9297
  lat_lin_w15_c14: x_w15_c14 + y_w15_c14 >= 0.4741
  lat_lin_w15_c15: x_w15_c15 + y_w15_c15 >= 0.8770
  lat_lin_w15_c16: x_w15_c16 + y_w15_c16 >= 0.1155
  lat_lin_w15_c17: x_w15_c17 + y_w15_c17 >= 0.6520
  lat_lin_w15_c18: x_w15_c18 + y_w15_c18 >= 0.6222
  lat_lin_w15_c19: x_w15_c19 + y_w15_c19 >= 0.9113
  demand_w15: x_w15_c0 + x_w15_c1 + x_w15_c2 + x_w15_c3 + x_w15_c4 + x_w15_c5 + x_w15_c6 + x_w15_c7 + x_w15_c8 + x_w15_c9 + x_w15_c10 + x_w15_c11 + x_w15_c12 + x_w15_c13 + x_w15_c14 + x_w15_c15 + x_w15_c16 + x_w15_c17 + x_w15_c18 + x_w15_c19 = 10
  lat_lin_w16_c0: x_w16_c0 + y_w16_c0 >= 0.3626
  lat_lin_w16_c1: x_w16_c1 + y_w16_c1 >= 1.0575
  lat_lin_w16_c2: x_w16_c2 + y_w16_c2 >= 1.2098
  lat_lin_w16_c3: x_w16_c3 + y_w16_c3 >= 1.6121
  lat_lin_w16_c4: x_w16_c4 + y_w16_c4 >= 0.4044
  lat_lin_w16_c5: x_w16_c5 + y_w16_c5 >= 0.4802
  lat_lin_w16_c6: x_w16_c6 + y_w16_c6 >= 0.8821
  lat_lin_w16_c7: x_w16_c7 + y_w16_c7 >= 0.1634
  lat_lin_w16_c8: x_w16_c8 + y_w16_c8 >= 0.3628
  lat_lin_w16_c9: x_w16_c9 + y_w16_c9 >= 1.1725
  lat_lin_w16_c10: x_w16_c10 + y_w16_c10 >= 0.8800
  lat_lin_w16_c11: x_w16_c11 + y_w16_c11 >= 0.4180
  lat_lin_w16_c12: x_w16_c12 + y_w16_c12 >= 0.4381
  lat_lin_w16_c13: x_w16_c13 + y_w16_c13 >= 0.6057
  lat_lin_w16_c14: x_w16_c14 + y_w16_c14 >= 0.4631
  lat_lin_w16_c15: x_w16_c15 + y_w16_c15 >= 0.1615
  lat_lin_w16_c16: x_w16_c16 + y_w16_c16 >= 0.2346
  lat_lin_w16_c17: x_w16_c17 + y_w16_c17 >= 1.1374
  lat_lin_w16_c18: x_w16_c18 + y_w16_c18 >= 0.2640
  lat_lin_w16_c19: x_w16_c19 + y_w16_c19 >= 0.6902
  demand_w16: x_w16_c0 + x_w16_c1 + x_w16_c2 + x_w16_c3 + x_w16_c4 + x_w16_c5 + x_w16_c6 + x_w16_c7 + x_w16_c8 + x_w16_c9 + x_w16_c10 + x_w16_c11 + x_w16_c12 + x_w16_c13 + x_w16_c14 + x_w16_c15 + x_w16_c16 + x_w16_c17 + x_w16_c18 + x_w16_c19 = 13
  lat_lin_w17_c0: x_w17_c0 + y_w17_c0 >= 1.0968
  lat_lin_w17_c1: x_w17_c1 + y_w17_c1 >= 0.7165
  lat_lin_w17_c2: x_w17_c2 + y_w17_c2 >= 0.4101
  lat_lin_w17_c3: x_w17_c3 + y_w17_c3 >= 1.3138
  lat_lin_w17_c4: x_w17_c4 + y_w17_c4 >= 0.1027
  lat_lin_w17_c5: x_w17_c5 + y_w17_c5 >= 0.8915
  lat_lin_w17_c6: x_w17_c6 + y_w17_c6 >= 0.1771
  lat_lin_w17_c7: x_w17_c7 + y_w17_c7 >= 0.4611
  lat_lin_w17_c8: x_w17_c8 + y_w17_c8 >= 0.9458
  lat_lin_w17_c9: x_w17_c9 + y_w17_c9 >= 0.0063
  lat_lin_w17_c10: x_w17_c10 + y_w17_c10 >= 0.7123
  lat_lin_w17_c11: x_w17_c11 + y_w17_c11 >= 0.5647
  lat_lin_w17_c12: x_w17_c12 + y_w17_c12 >= 0.9502
  lat_lin_w17_c13: x_w17_c13 + y_w17_c13 >= 1.0005
  lat_lin_w17_c14: x_w17_c14 + y_w17_c14 >= 0.3715
  lat_lin_w17_c15: x_w17_c15 + y_w17_c15 >= 0.2610
  lat_lin_w17_c16: x_w17_c16 + y_w17_c16 >= 1.4062
  lat_lin_w17_c17: x_w17_c17 + y_w17_c17 >= 0.1644
  lat_lin_w17_c18: x_w17_c18 + y_w17_c18 >= 0.6294
  lat_lin_w17_c19: x_w17_c19 + y_w17_c19 >= 0.8181
  demand_w17: x_w17_c0 + x_w17_c1 + x_w17_c2 + x_w17_c3 + x_w17_c4 + x_w17_c5 + x_w17_c6 + x_w17_c7 + x_w17_c8 + x_w17_c9 + x_w17_c10 + x_w17_c11 + x_w17_c12 + x_w17_c13 + x_w17_c14 + x_w17_c15 + x_w17_c16 + x_w17_c17 + x_w17_c18 + x_w17_c19 = 13
  lat_lin_w18_c0: x_w18_c0 + y_w18_c0 >= 0.6289
  lat_lin_w18_c1: x_w18_c1 + y_w18_c1 >= 0.1757
  lat_lin_w18_c2: x_w18_c2 + y_w18_c2 >= 0.5722
  lat_lin_w18_c3: x_w18_c3 + y_w18_c3 >= 0.8244
  lat_lin_w18_c4: x_w18_c4 + y_w18_c4 >= 0.7199
  lat_lin_w18_c5: x_w18_c5 + y_w18_c5 >= 0.7505
  lat_lin_w18_c6: x_w18_c6 + y_w18_c6 >= 0.9911
  lat_lin_w18_c7: x_w18_c7 + y_w18_c7 >= 0.0825
  lat_lin_w18_c8: x_w18_c8 + y_w18_c8 >= 0.4742
  lat_lin_w18_c9: x_w18_c9 + y_w18_c9 >= 1.0073
  lat_lin_w18_c10: x_w18_c10 + y_w18_c10 >= 0.8278
  lat_lin_w18_c11: x_w18_c11 + y_w18_c11 >= 0.6969
  lat_lin_w18_c12: x_w18_c12 + y_w18_c12 >= 0.8204
  lat_lin_w18_c13: x_w18_c13 + y_w18_c13 >= 0.6296
  lat_lin_w18_c14: x_w18_c14 + y_w18_c14 >= 0.0634
  lat_lin_w18_c15: x_w18_c15 + y_w18_c15 >= 1.1523
  lat_lin_w18_c16: x_w18_c16 + y_w18_c16 >= 0.6753
  lat_lin_w18_c17: x_w18_c17 + y_w18_c17 >= 1.0222
  lat_lin_w18_c18: x_w18_c18 + y_w18_c18 >= 0.3719
  lat_lin_w18_c19: x_w18_c19 + y_w18_c19 >= 0.5137
  demand_w18: x_w18_c0 + x_w18_c1 + x_w18_c2 + x_w18_c3 + x_w18_c4 + x_w18_c5 + x_w18_c6 + x_w18_c7 + x_w18_c8 + x_w18_c9 + x_w18_c10 + x_w18_c11 + x_w18_c12 + x_w18_c13 + x_w18_c14 + x_w18_c15 + x_w18_c16 + x_w18_c17 + x_w18_c18 + x_w18_c19 = 13
  lat_lin_w19_c0: x_w19_c0 + y_w19_c0 >= 0.1385
  lat_lin_w19_c1: x_w19_c1 + y_w19_c1 >= 0.0719
  lat_lin_w19_c2: x_w19_c2 + y_w19_c2 >= 1.0675
  lat_lin_w19_c3: x_w19_c3 + y_w19_c3 >= 0.5643
  lat_lin_w19_c4: x_w19_c4 + y_w19_c4 >= 1.0311
  lat_lin_w19_c5: x_w19_c5 + y_w19_c5 >= 0.1975
  lat_lin_w19_c6: x_w19_c6 + y_w19_c6 >= 0.2162
  lat_lin_w19_c7: x_w19_c7 + y_w19_c7 >= 0.2019
  lat_lin_w19_c8: x_w19_c8 + y_w19_c8 >= 0.2212
  lat_lin_w19_c9: x_w19_c9 + y_w19_c9 >= 1.0997
  lat_lin_w19_c10: x_w19_c10 + y_w19_c10 >= 1.0967
  lat_lin_w19_c11: x_w19_c11 + y_w19_c11 >= 1.0481
  lat_lin_w19_c12: x_w19_c12 + y_w19_c12 >= 0.7180
  lat_lin_w19_c13: x_w19_c13 + y_w19_c13 >= 0.6326
  lat_lin_w19_c14: x_w19_c14 + y_w19_c14 >= 0.2977
  lat_lin_w19_c15: x_w19_c15 + y_w19_c15 >= 0.7433
  lat_lin_w19_c16: x_w19_c16 + y_w19_c16 >= 0.7488
  lat_lin_w19_c17: x_w19_c17 + y_w19_c17 >= 1.0780
  lat_lin_w19_c18: x_w19_c18 + y_w19_c18 >= 0.3148
  lat_lin_w19_c19: x_w19_c19 + y_w19_c19 >= 0.5122
  demand_w19: x_w19_c0 + x_w19_c1 + x_w19_c2 + x_w19_c3 + x_w19_c4 + x_w19_c5 + x_w19_c6 + x_w19_c7 + x_w19_c8 + x_w19_c9 + x_w19_c10 + x_w19_c11 + x_w19_c12 + x_w19_c13 + x_w19_c14 + x_w19_c15 + x_w19_c16 + x_w19_c17 + x_w19_c18 + x_w19_c19 = 12
  lat_lin_w20_c0: x_w20_c0 + y_w20_c0 >= 0.0055
  lat_lin_w20_c1: x_w20_c1 + y_w20_c1 >= 1.0168
  lat_lin_w20_c2: x_w20_c2 + y_w20_c2 >= 0.0003
  lat_lin_w20_c3: x_w20_c3 + y_w20_c3 >= 0.7138
  lat_lin_w20_c4: x_w20_c4 + y_w20_c4 >= 0.6983
  lat_lin_w20_c5: x_w20_c5 + y_w20_c5 >= 0.9175
  lat_lin_w20_c6: x_w20_c6 + y_w20_c6 >= 0.8319
  lat_lin_w20_c7: x_w20_c7 + y_w20_c7 >= 0.1235
  lat_lin_w20_c8: x_w20_c8 + y_w20_c8 >= 1.5038
  lat_lin_w20_c9: x_w20_c9 + y_w20_c9 >= 1.1248
  lat_lin_w20_c10: x_w20_c10 + y_w20_c10 >= 0.4391
  lat_lin_w20_c11: x_w20_c11 + y_w20_c11 >= 1.1575
  lat_lin_w20_c12: x_w20_c12 + y_w20_c12 >= 0.7331
  lat_lin_w20_c13: x_w20_c13 + y_w20_c13 >= 0.6401
  lat_lin_w20_c14: x_w20_c14 + y_w20_c14 >= 1.5051
  lat_lin_w20_c15: x_w20_c15 + y_w20_c15 >= 1.0538
  lat_lin_w20_c16: x_w20_c16 + y_w20_c16 >= 0.5653
  lat_lin_w20_c17: x_w20_c17 + y_w20_c17 >= 0.2681
  lat_lin_w20_c18: x_w20_c18 + y_w20_c18 >= 0.2867
  lat_lin_w20_c19: x_w20_c19 + y_w20_c19 >= 1.4150
  demand_w20: x_w20_c0 + x_w20_c1 + x_w20_c2 + x_w20_c3 + x_w20_c4 + x_w20_c5 + x_w20_c6 + x_w20_c7 + x_w20_c8 + x_w20_c9 + x_w20_c10 + x_w20_c11 + x_w20_c12 + x_w20_c13 + x_w20_c14 + x_w20_c15 + x_w20_c16 + x_w20_c17 + x_w20_c18 + x_w20_c19 = 15
  lat_lin_w21_c0: x_w21_c0 + y_w21_c0 >= 0.8478
  lat_lin_w21_c1: x_w21_c1 + y_w21_c1 >= 0.2308
  lat_lin_w21_c2: x_w21_c2 + y_w21_c2 >= 0.6138
  lat_lin_w21_c3: x_w21_c3 + y_w21_c3 >= 0.4647
  lat_lin_w21_c4: x_w21_c4 + y_w21_c4 >= 0.0134
  lat_lin_w21_c5: x_w21_c5 + y_w21_c5 >= 0.4321
  lat_lin_w21_c6: x_w21_c6 + y_w21_c6 >= 0.3287
  lat_lin_w21_c7: x_w21_c7 + y_w21_c7 >= 1.0023
  lat_lin_w21_c8: x_w21_c8 + y_w21_c8 >= 0.4024
  lat_lin_w21_c9: x_w21_c9 + y_w21_c9 >= 0.7323
  lat_lin_w21_c10: x_w21_c10 + y_w21_c10 >= 0.3106
  lat_lin_w21_c11: x_w21_c11 + y_w21_c11 >= 0.0603
  lat_lin_w21_c12: x_w21_c12 + y_w21_c12 >= 0.5469
  lat_lin_w21_c13: x_w21_c13 + y_w21_c13 >= 0.9465
  lat_lin_w21_c14: x_w21_c14 + y_w21_c14 >= 0.5520
  lat_lin_w21_c15: x_w21_c15 + y_w21_c15 >= 0.2228
  lat_lin_w21_c16: x_w21_c16 + y_w21_c16 >= 0.7269
  lat_lin_w21_c17: x_w21_c17 + y_w21_c17 >= 0.5498
  lat_lin_w21_c18: x_w21_c18 + y_w21_c18 >= 0.9884
  lat_lin_w21_c19: x_w21_c19 + y_w21_c19 >= 0.0276
  demand_w21: x_w21_c0 + x_w21_c1 + x_w21_c2 + x_w21_c3 + x_w21_c4 + x_w21_c5 + x_w21_c6 + x_w21_c7 + x_w21_c8 + x_w21_c9 + x_w21_c10 + x_w21_c11 + x_w21_c12 + x_w21_c13 + x_w21_c14 + x_w21_c15 + x_w21_c16 + x_w21_c17 + x_w21_c18 + x_w21_c19 = 10
  lat_lin_w22_c0: x_w22_c0 + y_w22_c0 >= 0.2609
  lat_lin_w22_c1: x_w22_c1 + y_w22_c1 >= 0.3368
  lat_lin_w22_c2: x_w22_c2 + y_w22_c2 >= 0.6958
  lat_lin_w22_c3: x_w22_c3 + y_w22_c3 >= 0.3901
  lat_lin_w22_c4: x_w22_c4 + y_w22_c4 >= 0.0487
  lat_lin_w22_c5: x_w22_c5 + y_w22_c5 >= 0.2975
  lat_lin_w22_c6: x_w22_c6 + y_w22_c6 >= 0.1979
  lat_lin_w22_c7: x_w22_c7 + y_w22_c7 >= 0.0361
  lat_lin_w22_c8: x_w22_c8 + y_w22_c8 >= 0.8048
  lat_lin_w22_c9: x_w22_c9 + y_w22_c9 >= 0.2188
  lat_lin_w22_c10: x_w22_c10 + y_w22_c10 >= 1.1704
  lat_lin_w22_c11: x_w22_c11 + y_w22_c11 >= 0.9842
  lat_lin_w22_c12: x_w22_c12 + y_w22_c12 >= 0.6548
  lat_lin_w22_c13: x_w22_c13 + y_w22_c13 >= 0.4531
  lat_lin_w22_c14: x_w22_c14 + y_w22_c14 >= 0.2384
  lat_lin_w22_c15: x_w22_c15 + y_w22_c15 >= 0.7793
  lat_lin_w22_c16: x_w22_c16 + y_w22_c16 >= 0.1602
  lat_lin_w22_c17: x_w22_c17 + y_w22_c17 >= 0.8217
  lat_lin_w22_c18: x_w22_c18 + y_w22_c18 >= 0.2364
  lat_lin_w22_c19: x_w22_c19 + y_w22_c19 >= 0.2143
  demand_w22: x_w22_c0 + x_w22_c1 + x_w22_c2 + x_w22_c3 + x_w22_c4 + x_w22_c5 + x_w22_c6 + x_w22_c7 + x_w22_c8 + x_w22_c9 + x_w22_c10 + x_w22_c11 + x_w22_c12 + x_w22_c13 + x_w22_c14 + x_w22_c15 + x_w22_c16 + x_w22_c17 + x_w22_c18 + x_w22_c19 = 9
  lat_lin_w23_c0: x_w23_c0 + y_w23_c0 >= 0.2591
  lat_lin_w23_c1: x_w23_c1 + y_w23_c1 >= 0.0915
  lat_lin_w23_c2: x_w23_c2 + y_w23_c2 >= 0.1223
  lat_lin_w23_c3: x_w23_c3 + y_w23_c3 >= 0.1967
  lat_lin_w23_c4: x_w23_c4 + y_w23_c4 >= 0.2653
  lat_lin_w23_c5: x_w23_c5 + y_w23_c5 >= 0.0059
  lat_lin_w23_c6: x_w23_c6 + y_w23_c6 >= 0.0875
  lat_lin_w23_c7: x_w23_c7 + y_w23_c7 >= 0.1489
  lat_lin_w23_c8: x_w23_c8 + y_w23_c8 >= 0.2411
  lat_lin_w23_c9: x_w23_c9 + y_w23_c9 >= 0.3530
  lat_lin_w23_c10: x_w23_c10 + y_w23_c10 >= 0.2512
  lat_lin_w23_c11: x_w23_c11 + y_w23_c11 >= 0.0278
  lat_lin_w23_c12: x_w23_c12 + y_w23_c12 >= 0.2367
  lat_lin_w23_c13: x_w23_c13 + y_w23_c13 >= 0.0888
  lat_lin_w23_c14: x_w23_c14 + y_w23_c14 >= 0.3232
  lat_lin_w23_c15: x_w23_c15 + y_w23_c15 >= 0.3313
  lat_lin_w23_c16: x_w23_c16 + y_w23_c16 >= 0.2688
  lat_lin_w23_c17: x_w23_c17 + y_w23_c17 >= 0.1942
  lat_lin_w23_c18: x_w23_c18 + y_w23_c18 >= 0.4309
  lat_lin_w23_c19: x_w23_c19 + y_w23_c19 >= 0.0755
  demand_w23: x_w23_c0 + x_w23_c1 + x_w23_c2 + x_w23_c3 + x_w23_c4 + x_w23_c5 + x_w23_c6 + x_w23_c7 + x_w23_c8 + x_w23_c9 + x_w23_c10 + x_w23_c11 + x_w23_c12 + x_w23_c13 + x_w23_c14 + x_w23_c15 + x_w23_c16 + x_w23_c17 + x_w23_c18 + x_w23_c19 = 4
  lat_lin_w24_c0: x_w24_c0 + y_w24_c0 >= 0.0630
  lat_lin_w24_c1: x_w24_c1 + y_w24_c1 >= 0.0563
  lat_lin_w24_c2: x_w24_c2 + y_w24_c2 >= 0.0923
  lat_lin_w24_c3: x_w24_c3 + y_w24_c3 >= 0.0319
  lat_lin_w24_c4: x_w24_c4 + y_w24_c4 >= 0.2985
  lat_lin_w24_c5: x_w24_c5 + y_w24_c5 >= 0.3927
  lat_lin_w24_c6: x_w24_c6 + y_w24_c6 >= 0.0549
  lat_lin_w24_c7: x_w24_c7 + y_w24_c7 >= 0.1436
  lat_lin_w24_c8: x_w24_c8 + y_w24_c8 >= 0.1499
  lat_lin_w24_c9: x_w24_c9 + y_w24_c9 >= 0.0459
  lat_lin_w24_c10: x_w24_c10 + y_w24_c10 >= 0.4419
  lat_lin_w24_c11: x_w24_c11 + y_w24_c11 >= 0.3788
  lat_lin_w24_c12: x_w24_c12 + y_w24_c12 >= 0.4677
  lat_lin_w24_c13: x_w24_c13 + y_w24_c13 >= 0.3444
  lat_lin_w24_c14: x_w24_c14 + y_w24_c14 >= 0.2670
  lat_lin_w24_c15: x_w24_c15 + y_w24_c15 >= 0.4220
  lat_lin_w24_c16: x_w24_c16 + y_w24_c16 >= 0.3090
  lat_lin_w24_c17: x_w24_c17 + y_w24_c17 >= 0.3083
  lat_lin_w24_c18: x_w24_c18 + y_w24_c18 >= 0.3256
  lat_lin_w24_c19: x_w24_c19 + y_w24_c19 >= 0.4061
  demand_w24: x_w24_c0 + x_w24_c1 + x_w24_c2 + x_w24_c3 + x_w24_c4 + x_w24_c5 + x_w24_c6 + x_w24_c7 + x_w24_c8 + x_w24_c9 + x_w24_c10 + x_w24_c11 + x_w24_c12 + x_w24_c13 + x_w24_c14 + x_w24_c15 + x_w24_c16 + x_w24_c17 + x_w24_c18 + x_w24_c19 = 5
  lat_lin_w25_c0: x_w25_c0 + y_w25_c0 >= 0.6008
  lat_lin_w25_c1: x_w25_c1 + y_w25_c1 >= 0.5941
  lat_lin_w25_c2: x_w25_c2 + y_w25_c2 >= 1.0258
  lat_lin_w25_c3: x_w25_c3 + y_w25_c3 >= 1.0827
  lat_lin_w25_c4: x_w25_c4 + y_w25_c4 >= 0.7249
  lat_lin_w25_c5: x_w25_c5 + y_w25_c5 >= 0.1179
  lat_lin_w25_c6: x_w25_c6 + y_w25_c6 >= 0.8202
  lat_lin_w25_c7: x_w25_c7 + y_w25_c7 >= 0.3876
  lat_lin_w25_c8: x_w25_c8 + y_w25_c8 >= 0.8413
  lat_lin_w25_c9: x_w25_c9 + y_w25_c9 >= 0.9984
  lat_lin_w25_c10: x_w25_c10 + y_w25_c10 >= 0.5001
  lat_lin_w25_c11: x_w25_c11 + y_w25_c11 >= 0.8439
  lat_lin_w25_c12: x_w25_c12 + y_w25_c12 >= 0.4986
  lat_lin_w25_c13: x_w25_c13 + y_w25_c13 >= 0.1937
  lat_lin_w25_c14: x_w25_c14 + y_w25_c14 >= 0.6488
  lat_lin_w25_c15: x_w25_c15 + y_w25_c15 >= 0.3566
  lat_lin_w25_c16: x_w25_c16 + y_w25_c16 >= 0.7577
  lat_lin_w25_c17: x_w25_c17 + y_w25_c17 >= 0.1012
  lat_lin_w25_c18: x_w25_c18 + y_w25_c18 >= 0.3422
  lat_lin_w25_c19: x_w25_c19 + y_w25_c19 >= 0.5634
  demand_w25: x_w25_c0 + x_w25_c1 + x_w25_c2 + x_w25_c3 + x_w25_c4 + x_w25_c5 + x_w25_c6 + x_w25_c7 + x_w25_c8 + x_w25_c9 + x_w25_c10 + x_w25_c11 + x_w25_c12 + x_w25_c13 + x_w25_c14 + x_w25_c15 + x_w25_c16 + x_w25_c17 + x_w25_c18 + x_w25_c19 = 12
  lat_lin_w26_c0: x_w26_c0 + y_w26_c0 >= 0.3616
  lat_lin_w26_c1: x_w26_c1 + y_w26_c1 >= 0.0232
  lat_lin_w26_c2: x_w26_c2 + y_w26_c2 >= 0.5612
  lat_lin_w26_c3: x_w26_c3 + y_w26_c3 >= 0.6050
  lat_lin_w26_c4: x_w26_c4 + y_w26_c4 >= 0.3996
  lat_lin_w26_c5: x_w26_c5 + y_w26_c5 >= 0.6115
  lat_lin_w26_c6: x_w26_c6 + y_w26_c6 >= 0.2441
  lat_lin_w26_c7: x_w26_c7 + y_w26_c7 >= 0.2771
  lat_lin_w26_c8: x_w26_c8 + y_w26_c8 >= 0.3484
  lat_lin_w26_c9: x_w26_c9 + y_w26_c9 >= 0.0159
  lat_lin_w26_c10: x_w26_c10 + y_w26_c10 >= 0.5466
  lat_lin_w26_c11: x_w26_c11 + y_w26_c11 >= 0.0838
  lat_lin_w26_c12: x_w26_c12 + y_w26_c12 >= 0.4439
  lat_lin_w26_c13: x_w26_c13 + y_w26_c13 >= 0.2637
  lat_lin_w26_c14: x_w26_c14 + y_w26_c14 >= 0.4648
  lat_lin_w26_c15: x_w26_c15 + y_w26_c15 >= 0.3916
  lat_lin_w26_c16: x_w26_c16 + y_w26_c16 >= 0.2094
  lat_lin_w26_c17: x_w26_c17 + y_w26_c17 >= 0.3364
  lat_lin_w26_c18: x_w26_c18 + y_w26_c18 >= 0.5908
  lat_lin_w26_c19: x_w26_c19 + y_w26_c19 >= 0.2211
  demand_w26: x_w26_c0 + x_w26_c1 + x_w26_c2 + x_w26_c3 + x_w26_c4 + x_w26_c5 + x_w26_c6 + x_w26_c7 + x_w26_c8 + x_w26_c9 + x_w26_c10 + x_w26_c11 + x_w26_c12 + x_w26_c13 + x_w26_c14 + x_w26_c15 + x_w26_c16 + x_w26_c17 + x_w26_c18 + x_w26_c19 = 7
  lat_lin_w27_c0: x_w27_c0 + y_w27_c0 >= 0.3478
  lat_lin_w27_c1: x_w27_c1 + y_w27_c1 >= 0.2183
  lat_lin_w27_c2: x_w27_c2 + y_w27_c2 >= 0.3737
  lat_lin_w27_c3: x_w27_c3 + y_w27_c3 >= 0.4244
  lat_lin_w27_c4: x_w27_c4 + y_w27_c4 >= 0.3248
  lat_lin_w27_c5: x_w27_c5 + y_w27_c5 >= 0.1545
  lat_lin_w27_c6: x_w27_c6 + y_w27_c6 >= 0.3466
  lat_lin_w27_c7: x_w27_c7 + y_w27_c7 >= 0.3752
  lat_lin_w27_c8: x_w27_c8 + y_w27_c8 >= 0.3550
  lat_lin_w27_c9: x_w27_c9 + y_w27_c9 >= 0.0750
  lat_lin_w27_c10: x_w27_c10 + y_w27_c10 >= 0.2290
  lat_lin_w27_c11: x_w27_c11 + y_w27_c11 >= 0.1473
  lat_lin_w27_c12: x_w27_c12 + y_w27_c12 >= 0.4755
  lat_lin_w27_c13: x_w27_c13 + y_w27_c13 >= 0.0956
  lat_lin_w27_c14: x_w27_c14 + y_w27_c14 >= 0.4730
  lat_lin_w27_c15: x_w27_c15 + y_w27_c15 >= 0.4760
  lat_lin_w27_c16: x_w27_c16 + y_w27_c16 >= 0.2003
  lat_lin_w27_c17: x_w27_c17 + y_w27_c17 >= 0.4641
  lat_lin_w27_c18: x_w27_c18 + y_w27_c18 >= 0.0920
  lat_lin_w27_c19: x_w27_c19 + y_w27_c19 >= 0.3522
  demand_w27: x_w27_c0 + x_w27_c1 + x_w27_c2 + x_w27_c3 + x_w27_c4 + x_w27_c5 + x_w27_c6 + x_w27_c7 + x_w27_c8 + x_w27_c9 + x_w27_c10 + x_w27_c11 + x_w27_c12 + x_w27_c13 + x_w27_c14 + x_w27_c15 + x_w27_c16 + x_w27_c17 + x_w27_c18 + x_w27_c19 = 6
  lat_lin_w28_c0: x_w28_c0 + y_w28_c0 >= 0.4481
  lat_lin_w28_c1: x_w28_c1 + y_w28_c1 >= 0.0411
  lat_lin_w28_c2: x_w28_c2 + y_w28_c2 >= 0.0828
  lat_lin_w28_c3: x_w28_c3 + y_w28_c3 >= 0.4373
  lat_lin_w28_c4: x_w28_c4 + y_w28_c4 >= 0.4555
  lat_lin_w28_c5: x_w28_c5 + y_w28_c5 >= 0.2119
  lat_lin_w28_c6: x_w28_c6 + y_w28_c6 >= 0.1891
  lat_lin_w28_c7: x_w28_c7 + y_w28_c7 >= 0.2506
  lat_lin_w28_c8: x_w28_c8 + y_w28_c8 >= 0.4531
  lat_lin_w28_c9: x_w28_c9 + y_w28_c9 >= 0.4811
  lat_lin_w28_c10: x_w28_c10 + y_w28_c10 >= 0.3635
  lat_lin_w28_c11: x_w28_c11 + y_w28_c11 >= 0.4042
  lat_lin_w28_c12: x_w28_c12 + y_w28_c12 >= 0.0350
  lat_lin_w28_c13: x_w28_c13 + y_w28_c13 >= 0.4449
  lat_lin_w28_c14: x_w28_c14 + y_w28_c14 >= 0.2321
  lat_lin_w28_c15: x_w28_c15 + y_w28_c15 >= 0.3445
  lat_lin_w28_c16: x_w28_c16 + y_w28_c16 >= 0.1870
  lat_lin_w28_c17: x_w28_c17 + y_w28_c17 >= 0.2060
  lat_lin_w28_c18: x_w28_c18 + y_w28_c18 >= 0.4265
  lat_lin_w28_c19: x_w28_c19 + y_w28_c19 >= 0.3058
  demand_w28: x_w28_c0 + x_w28_c1 + x_w28_c2 + x_w28_c3 + x_w28_c4 + x_w28_c5 + x_w28_c6 + x_w28_c7 + x_w28_c8 + x_w28_c9 + x_w28_c10 + x_w28_c11 + x_w28_c12 + x_w28_c13 + x_w28_c14 + x_w28_c15 + x_w28_c16 + x_w28_c17 + x_w28_c18 + x_w28_c19 = 6
  lat_lin_w29_c0: x_w29_c0 + y_w29_c0 >= 0.2312
  lat_lin_w29_c1: x_w29_c1 + y_w29_c1 >= 0.3058
  lat_lin_w29_c2: x_w29_c2 + y_w29_c2 >= 1.0954
  lat_lin_w29_c3: x_w29_c3 + y_w29_c3 >= 0.7504
  lat_lin_w29_c4: x_w29_c4 + y_w29_c4 >= 0.7881
  lat_lin_w29_c5: x_w29_c5 + y_w29_c5 >= 0.1935
  lat_lin_w29_c6: x_w29_c6 + y_w29_c6 >= 0.4476
  lat_lin_w29_c7: x_w29_c7 + y_w29_c7 >= 0.4243
  lat_lin_w29_c8: x_w29_c8 + y_w29_c8 >= 0.5733
  lat_lin_w29_c9: x_w29_c9 + y_w29_c9 >= 1.0580
  lat_lin_w29_c10: x_w29_c10 + y_w29_c10 >= 0.2867
  lat_lin_w29_c11: x_w29_c11 + y_w29_c11 >= 1.0021
  lat_lin_w29_c12: x_w29_c12 + y_w29_c12 >= 1.0446
  lat_lin_w29_c13: x_w29_c13 + y_w29_c13 >= 0.9719
  lat_lin_w29_c14: x_w29_c14 + y_w29_c14 >= 0.6266
  lat_lin_w29_c15: x_w29_c15 + y_w29_c15 >= 0.2708
  lat_lin_w29_c16: x_w29_c16 + y_w29_c16 >= 0.1789
  lat_lin_w29_c17: x_w29_c17 + y_w29_c17 >= 0.8665
  lat_lin_w29_c18: x_w29_c18 + y_w29_c18 >= 0.1290
  lat_lin_w29_c19: x_w29_c19 + y_w29_c19 >= 0.7553
  demand_w29: x_w29_c0 + x_w29_c1 + x_w29_c2 + x_w29_c3 + x_w29_c4 + x_w29_c5 + x_w29_c6 + x_w29_c7 + x_w29_c8 + x_w29_c9 + x_w29_c10 + x_w29_c11 + x_w29_c12 + x_w29_c13 + x_w29_c14 + x_w29_c15 + x_w29_c16 + x_w29_c17 + x_w29_c18 + x_w29_c19 = 12
  lat_lin_w30_c0: x_w30_c0 + y_w30_c0 >= 0.2569
  lat_lin_w30_c1: x_w30_c1 + y_w30_c1 >= 0.3082
  lat_lin_w30_c2: x_w30_c2 + y_w30_c2 >= 0.0903
  lat_lin_w30_c3: x_w30_c3 + y_w30_c3 >= 0.0615
  lat_lin_w30_c4: x_w30_c4 + y_w30_c4 >= 0.3573
  lat_lin_w30_c5: x_w30_c5 + y_w30_c5 >= 0.1452
  lat_lin_w30_c6: x_w30_c6 + y_w30_c6 >= 0.2408
  lat_lin_w30_c7: x_w30_c7 + y_w30_c7 >= 0.1076
  lat_lin_w30_c8: x_w30_c8 + y_w30_c8 >= 0.3848
  lat_lin_w30_c9: x_w30_c9 + y_w30_c9 >= 0.3309
  lat_lin_w30_c10: x_w30_c10 + y_w30_c10 >= 0.0071
  lat_lin_w30_c11: x_w30_c11 + y_w30_c11 >= 0.0454
  lat_lin_w30_c12: x_w30_c12 + y_w30_c12 >= 0.0747
  lat_lin_w30_c13: x_w30_c13 + y_w30_c13 >= 0.3531
  lat_lin_w30_c14: x_w30_c14 + y_w30_c14 >= 0.3497
  lat_lin_w30_c15: x_w30_c15 + y_w30_c15 >= 0.1538
  lat_lin_w30_c16: x_w30_c16 + y_w30_c16 >= 0.1122
  lat_lin_w30_c17: x_w30_c17 + y_w30_c17 >= 0.3329
  lat_lin_w30_c18: x_w30_c18 + y_w30_c18 >= 0.0900
  lat_lin_w30_c19: x_w30_c19 + y_w30_c19 >= 0.1975
  demand_w30: x_w30_c0 + x_w30_c1 + x_w30_c2 + x_w30_c3 + x_w30_c4 + x_w30_c5 + x_w30_c6 + x_w30_c7 + x_w30_c8 + x_w30_c9 + x_w30_c10 + x_w30_c11 + x_w30_c12 + x_w30_c13 + x_w30_c14 + x_w30_c15 + x_w30_c16 + x_w30_c17 + x_w30_c18 + x_w30_c19 = 4
  lat_lin_w31_c0: x_w31_c0 + y_w31_c0 >= 0.5524
  lat_lin_w31_c1: x_w31_c1 + y_w31_c1 >= 0.9635
  lat_lin_w31_c2: x_w31_c2 + y_w31_c2 >= 0.1598
  lat_lin_w31_c3: x_w31_c3 + y_w31_c3 >= 0.1953
  lat_lin_w31_c4: x_w31_c4 + y_w31_c4 >= 0.3318
  lat_lin_w31_c5: x_w31_c5 + y_w31_c5 >= 0.7722
  lat_lin_w31_c6: x_w31_c6 + y_w31_c6 >= 0.7994
  lat_lin_w31_c7: x_w31_c7 + y_w31_c7 >= 0.1354
  lat_lin_w31_c8: x_w31_c8 + y_w31_c8 >= 0.7342
  lat_lin_w31_c9: x_w31_c9 + y_w31_c9 >= 0.4078
  lat_lin_w31_c10: x_w31_c10 + y_w31_c10 >= 0.1087
  lat_lin_w31_c11: x_w31_c11 + y_w31_c11 >= 0.9032
  lat_lin_w31_c12: x_w31_c12 + y_w31_c12 >= 0.1945
  lat_lin_w31_c13: x_w31_c13 + y_w31_c13 >= 0.2177
  lat_lin_w31_c14: x_w31_c14 + y_w31_c14 >= 0.1326
  lat_lin_w31_c15: x_w31_c15 + y_w31_c15 >= 0.7826
  lat_lin_w31_c16: x_w31_c16 + y_w31_c16 >= 0.3026
  lat_lin_w31_c17: x_w31_c17 + y_w31_c17 >= 0.6530
  lat_lin_w31_c18: x_w31_c18 + y_w31_c18 >= 0.8421
  lat_lin_w31_c19: x_w31_c19 + y_w31_c19 >= 0.8113
  demand_w31: x_w31_c0 + x_w31_c1 + x_w31_c2 + x_w31_c3 + x_w31_c4 + x_w31_c5 + x_w31_c6 + x_w31_c7 + x_w31_c8 + x_w31_c9 + x_w31_c10 + x_w31_c11 + x_w31_c12 + x_w31_c13 + x_w31_c14 + x_w31_c15 + x_w31_c16 + x_w31_c17 + x_w31_c18 + x_w31_c19 = 10
  lat_lin_w32_c0: x_w32_c0 + y_w32_c0 >= 0.0118
  lat_lin_w32_c1: x_w32_c1 + y_w32_c1 >= 0.1467
  lat_lin_w32_c2: x_w32_c2 + y_w32_c2 >= 0.1699
  lat_lin_w32_c3: x_w32_c3 + y_w32_c3 >= 0.2006
  lat_lin_w32_c4: x_w32_c4 + y_w32_c4 >= 0.3091
  lat_lin_w32_c5: x_w32_c5 + y_w32_c5 >= 0.1209
  lat_lin_w32_c6: x_w32_c6 + y_w32_c6 >= 0.2349
  lat_lin_w32_c7: x_w32_c7 + y_w32_c7 >= 0.2987
  lat_lin_w32_c8: x_w32_c8 + y_w32_c8 >= 0.2577
  lat_lin_w32_c9: x_w32_c9 + y_w32_c9 >= 0.3604
  lat_lin_w32_c10: x_w32_c10 + y_w32_c10 >= 0.1595
  lat_lin_w32_c11: x_w32_c11 + y_w32_c11 >= 0.1965
  lat_lin_w32_c12: x_w32_c12 + y_w32_c12 >= 0.2897
  lat_lin_w32_c13: x_w32_c13 + y_w32_c13 >= 0.1208
  lat_lin_w32_c14: x_w32_c14 + y_w32_c14 >= 0.1057
  lat_lin_w32_c15: x_w32_c15 + y_w32_c15 >= 0.0794
  lat_lin_w32_c16: x_w32_c16 + y_w32_c16 >= 0.3773
  lat_lin_w32_c17: x_w32_c17 + y_w32_c17 >= 0.2616
  lat_lin_w32_c18: x_w32_c18 + y_w32_c18 >= 0.1425
  lat_lin_w32_c19: x_w32_c19 + y_w32_c19 >= 0.1563
  demand_w32: x_w32_c0 + x_w32_c1 + x_w32_c2 + x_w32_c3 + x_w32_c4 + x_w32_c5 + x_w32_c6 + x_w32_c7 + x_w32_c8 + x_w32_c9 + x_w32_c10 + x_w32_c11 + x_w32_c12 + x_w32_c13 + x_w32_c14 + x_w32_c15 + x_w32_c16 + x_w32_c17 + x_w32_c18 + x_w32_c19 = 4
  lat_lin_w33_c0: x_w33_c0 + y_w33_c0 >= 0.3890
  lat_lin_w33_c1: x_w33_c1 + y_w33_c1 >= 1.1038
  lat_lin_w33_c2: x_w33_c2 + y_w33_c2 >= 0.8920
  lat_lin_w33_c3: x_w33_c3 + y_w33_c3 >= 0.3884
  lat_lin_w33_c4: x_w33_c4 + y_w33_c4 >= 1.0517
  lat_lin_w33_c5: x_w33_c5 + y_w33_c5 >= 0.8817
  lat_lin_w33_c6: x_w33_c6 + y_w33_c6 >= 0.8700
  lat_lin_w33_c7: x_w33_c7 + y_w33_c7 >= 0.6370
  lat_lin_w33_c8: x_w33_c8 + y_w33_c8 >= 0.2847
  lat_lin_w33_c9: x_w33_c9 + y_w33_c9 >= 0.3998
  lat_lin_w33_c10: x_w33_c10 + y_w33_c10 >= 0.5630
  lat_lin_w33_c11: x_w33_c11 + y_w33_c11 >= 0.9117
  lat_lin_w33_c12: x_w33_c12 + y_w33_c12 >= 1.1979
  lat_lin_w33_c13: x_w33_c13 + y_w33_c13 >= 0.2208
  lat_lin_w33_c14: x_w33_c14 + y_w33_c14 >= 1.0698
  lat_lin_w33_c15: x_w33_c15 + y_w33_c15 >= 0.8663
  lat_lin_w33_c16: x_w33_c16 + y_w33_c16 >= 0.8606
  lat_lin_w33_c17: x_w33_c17 + y_w33_c17 >= 1.0747
  lat_lin_w33_c18: x_w33_c18 + y_w33_c18 >= 1.1301
  lat_lin_w33_c19: x_w33_c19 + y_w33_c19 >= 0.2070
  demand_w33: x_w33_c0 + x_w33_c1 + x_w33_c2 + x_w33_c3 + x_w33_c4 + x_w33_c5 + x_w33_c6 + x_w33_c7 + x_w33_c8 + x_w33_c9 + x_w33_c10 + x_w33_c11 + x_w33_c12 + x_w33_c13 + x_w33_c14 + x_w33_c15 + x_w33_c16 + x_w33_c17 + x_w33_c18 + x_w33_c19 = 15
  lat_lin_w34_c0: x_w34_c0 + y_w34_c0 >= 0.3948
  lat_lin_w34_c1: x_w34_c1 + y_w34_c1 >= 1.0075
  lat_lin_w34_c2: x_w34_c2 + y_w34_c2 >= 0.6766
  lat_lin_w34_c3: x_w34_c3 + y_w34_c3 >= 1.2704
  lat_lin_w34_c4: x_w34_c4 + y_w34_c4 >= 1.2905
  lat_lin_w34_c5: x_w34_c5 + y_w34_c5 >= 0.8911
  lat_lin_w34_c6: x_w34_c6 + y_w34_c6 >= 0.6355
  lat_lin_w34_c7: x_w34_c7 + y_w34_c7 >= 0.9018
  lat_lin_w34_c8: x_w34_c8 + y_w34_c8 >= 0.2005
  lat_lin_w34_c9: x_w34_c9 + y_w34_c9 >= 0.2253
  lat_lin_w34_c10: x_w34_c10 + y_w34_c10 >= 1.3439
  lat_lin_w34_c11: x_w34_c11 + y_w34_c11 >= 0.9151
  lat_lin_w34_c12: x_w34_c12 + y_w34_c12 >= 0.1170
  lat_lin_w34_c13: x_w34_c13 + y_w34_c13 >= 0.4629
  lat_lin_w34_c14: x_w34_c14 + y_w34_c14 >= 0.6771
  lat_lin_w34_c15: x_w34_c15 + y_w34_c15 >= 0.1412
  lat_lin_w34_c16: x_w34_c16 + y_w34_c16 >= 0.4569
  lat_lin_w34_c17: x_w34_c17 + y_w34_c17 >= 1.0873
  lat_lin_w34_c18: x_w34_c18 + y_w34_c18 >= 0.1550
  lat_lin_w34_c19: x_w34_c19 + y_w34_c19 >= 1.1495
  demand_w34: x_w34_c0 + x_w34_c1 + x_w34_c2 + x_w34_c3 + x_w34_c4 + x_w34_c5 + x_w34_c6 + x_w34_c7 + x_w34_c8 + x_w34_c9 + x_w34_c10 + x_w34_c11 + x_w34_c12 + x_w34_c13 + x_w34_c14 + x_w34_c15 + x_w34_c16 + x_w34_c17 + x_w34_c18 + x_w34_c19 = 14
  lat_lin_w35_c0: x_w35_c0 + y_w35_c0 >= 0.2064
  lat_lin_w35_c1: x_w35_c1 + y_w35_c1 >= 0.4730
  lat_lin_w35_c2: x_w35_c2 + y_w35_c2 >= 0.2583
  lat_lin_w35_c3: x_w35_c3 + y_w35_c3 >= 0.0774
  lat_lin_w35_c4: x_w35_c4 + y_w35_c4 >= 0.1876
  lat_lin_w35_c5: x_w35_c5 + y_w35_c5 >= 0.0281
  lat_lin_w35_c6: x_w35_c6 + y_w35_c6 >= 0.3862
  lat_lin_w35_c7: x_w35_c7 + y_w35_c7 >= 0.0128
  lat_lin_w35_c8: x_w35_c8 + y_w35_c8 >= 0.1545
  lat_lin_w35_c9: x_w35_c9 + y_w35_c9 >= 0.3411
  lat_lin_w35_c10: x_w35_c10 + y_w35_c10 >= 0.3582
  lat_lin_w35_c11: x_w35_c11 + y_w35_c11 >= 0.0761
  lat_lin_w35_c12: x_w35_c12 + y_w35_c12 >= 0.0142
  lat_lin_w35_c13: x_w35_c13 + y_w35_c13 >= 0.4807
  lat_lin_w35_c14: x_w35_c14 + y_w35_c14 >= 0.0140
  lat_lin_w35_c15: x_w35_c15 + y_w35_c15 >= 0.0373
  lat_lin_w35_c16: x_w35_c16 + y_w35_c16 >= 0.2740
  lat_lin_w35_c17: x_w35_c17 + y_w35_c17 >= 0.3604
  lat_lin_w35_c18: x_w35_c18 + y_w35_c18 >= 0.1935
  lat_lin_w35_c19: x_w35_c19 + y_w35_c19 >= 0.0663
  demand_w35: x_w35_c0 + x_w35_c1 + x_w35_c2 + x_w35_c3 + x_w35_c4 + x_w35_c5 + x_w35_c6 + x_w35_c7 + x_w35_c8 + x_w35_c9 + x_w35_c10 + x_w35_c11 + x_w35_c12 + x_w35_c13 + x_w35_c14 + x_w35_c15 + x_w35_c16 + x_w35_c17 + x_w35_c18 + x_w35_c19 = 4
  lat_lin_w36_c0: x_w36_c0 + y_w36_c0 >= 0.1344
  lat_lin_w36_c1: x_w36_c1 + y_w36_c1 >= 0.4751
  lat_lin_w36_c2: x_w36_c2 + y_w36_c2 >= 0.1448
  lat_lin_w36_c3: x_w36_c3 + y_w36_c3 >= 0.6464
  lat_lin_w36_c4: x_w36_c4 + y_w36_c4 >= 0.1039
  lat_lin_w36_c5: x_w36_c5 + y_w36_c5 >= 0.4568
  lat_lin_w36_c6: x_w36_c6 + y_w36_c6 >= 0.4018
  lat_lin_w36_c7: x_w36_c7 + y_w36_c7 >= 0.5574
  lat_lin_w36_c8: x_w36_c8 + y_w36_c8 >= 0.3345
  lat_lin_w36_c9: x_w36_c9 + y_w36_c9 >= 0.5773
  lat_lin_w36_c10: x_w36_c10 + y_w36_c10 >= 0.1619
  lat_lin_w36_c11: x_w36_c11 + y_w36_c11 >= 0.3356
  lat_lin_w36_c12: x_w36_c12 + y_w36_c12 >= 0.3362
  lat_lin_w36_c13: x_w36_c13 + y_w36_c13 >= 0.4240
  lat_lin_w36_c14: x_w36_c14 + y_w36_c14 >= 0.5972
  lat_lin_w36_c15: x_w36_c15 + y_w36_c15 >= 0.3152
  lat_lin_w36_c16: x_w36_c16 + y_w36_c16 >= 0.6265
  lat_lin_w36_c17: x_w36_c17 + y_w36_c17 >= 0.4408
  lat_lin_w36_c18: x_w36_c18 + y_w36_c18 >= 0.5461
  lat_lin_w36_c19: x_w36_c19 + y_w36_c19 >= 0.3841
  demand_w36: x_w36_c0 + x_w36_c1 + x_w36_c2 + x_w36_c3 + x_w36_c4 + x_w36_c5 + x_w36_c6 + x_w36_c7 + x_w36_c8 + x_w36_c9 + x_w36_c10 + x_w36_c11 + x_w36_c12 + x_w36_c13 + x_w36_c14 + x_w36_c15 + x_w36_c16 + x_w36_c17 + x_w36_c18 + x_w36_c19 = 8
  lat_lin_w37_c0: x_w37_c0 + y_w37_c0 >= 0.3737
  lat_lin_w37_c1: x_w37_c1 + y_w37_c1 >= 0.8514
  lat_lin_w37_c2: x_w37_c2 + y_w37_c2 >= 1.3209
  lat_lin_w37_c3: x_w37_c3 + y_w37_c3 >= 1.1052
  lat_lin_w37_c4: x_w37_c4 + y_w37_c4 >= 0.0328
  lat_lin_w37_c5: x_w37_c5 + y_w37_c5 >= 0.2530
  lat_lin_w37_c6: x_w37_c6 + y_w37_c6 >= 0.1416
  lat_lin_w37_c7: x_w37_c7 + y_w37_c7 >= 0.8979
  lat_lin_w37_c8: x_w37_c8 + y_w37_c8 >= 0.8305
  lat_lin_w37_c9: x_w37_c9 + y_w37_c9 >= 1.3108
  lat_lin_w37_c10: x_w37_c10 + y_w37_c10 >= 0.4889
  lat_lin_w37_c11: x_w37_c11 + y_w37_c11 >= 0.5945
  lat_lin_w37_c12: x_w37_c12 + y_w37_c12 >= 1.0354
  lat_lin_w37_c13: x_w37_c13 + y_w37_c13 >= 0.2843
  lat_lin_w37_c14: x_w37_c14 + y_w37_c14 >= 0.6596
  lat_lin_w37_c15: x_w37_c15 + y_w37_c15 >= 1.3025
  lat_lin_w37_c16: x_w37_c16 + y_w37_c16 >= 1.1999
  lat_lin_w37_c17: x_w37_c17 + y_w37_c17 >= 0.2875
  lat_lin_w37_c18: x_w37_c18 + y_w37_c18 >= 0.7095
  lat_lin_w37_c19: x_w37_c19 + y_w37_c19 >= 1.3199
  demand_w37: x_w37_c0 + x_w37_c1 + x_w37_c2 + x_w37_c3 + x_w37_c4 + x_w37_c5 + x_w37_c6 + x_w37_c7 + x_w37_c8 + x_w37_c9 + x_w37_c10 + x_w37_c11 + x_w37_c12 + x_w37_c13 + x_w37_c14 + x_w37_c15 + x_w37_c16 + x_w37_c17 + x_w37_c18 + x_w37_c19 = 15
  lat_lin_w38_c0: x_w38_c0 + y_w38_c0 >= 0.5307
  lat_lin_w38_c1: x_w38_c1 + y_w38_c1 >= 0.0941
  lat_lin_w38_c2: x_w38_c2 + y_w38_c2 >= 0.4537
  lat_lin_w38_c3: x_w38_c3 + y_w38_c3 >= 0.7175
  lat_lin_w38_c4: x_w38_c4 + y_w38_c4 >= 0.3399
  lat_lin_w38_c5: x_w38_c5 + y_w38_c5 >= 0.1291
  lat_lin_w38_c6: x_w38_c6 + y_w38_c6 >= 0.1365
  lat_lin_w38_c7: x_w38_c7 + y_w38_c7 >= 0.4826
  lat_lin_w38_c8: x_w38_c8 + y_w38_c8 >= 0.5176
  lat_lin_w38_c9: x_w38_c9 + y_w38_c9 >= 0.7621
  lat_lin_w38_c10: x_w38_c10 + y_w38_c10 >= 0.2620
  lat_lin_w38_c11: x_w38_c11 + y_w38_c11 >= 0.0129
  lat_lin_w38_c12: x_w38_c12 + y_w38_c12 >= 0.2226
  lat_lin_w38_c13: x_w38_c13 + y_w38_c13 >= 0.4336
  lat_lin_w38_c14: x_w38_c14 + y_w38_c14 >= 0.0985
  lat_lin_w38_c15: x_w38_c15 + y_w38_c15 >= 0.1253
  lat_lin_w38_c16: x_w38_c16 + y_w38_c16 >= 0.6080
  lat_lin_w38_c17: x_w38_c17 + y_w38_c17 >= 0.2022
  lat_lin_w38_c18: x_w38_c18 + y_w38_c18 >= 0.2515
  lat_lin_w38_c19: x_w38_c19 + y_w38_c19 >= 0.6193
  demand_w38: x_w38_c0 + x_w38_c1 + x_w38_c2 + x_w38_c3 + x_w38_c4 + x_w38_c5 + x_w38_c6 + x_w38_c7 + x_w38_c8 + x_w38_c9 + x_w38_c10 + x_w38_c11 + x_w38_c12 + x_w38_c13 + x_w38_c14 + x_w38_c15 + x_w38_c16 + x_w38_c17 + x_w38_c18 + x_w38_c19 = 7
  lat_lin_w39_c0: x_w39_c0 + y_w39_c0 >= 0.1932
  lat_lin_w39_c1: x_w39_c1 + y_w39_c1 >= 0.8261
  lat_lin_w39_c2: x_w39_c2 + y_w39_c2 >= 0.2483
  lat_lin_w39_c3: x_w39_c3 + y_w39_c3 >= 0.7950
  lat_lin_w39_c4: x_w39_c4 + y_w39_c4 >= 0.6712
  lat_lin_w39_c5: x_w39_c5 + y_w39_c5 >= 1.1751
  lat_lin_w39_c6: x_w39_c6 + y_w39_c6 >= 0.3598
  lat_lin_w39_c7: x_w39_c7 + y_w39_c7 >= 0.3705
  lat_lin_w39_c8: x_w39_c8 + y_w39_c8 >= 0.7458
  lat_lin_w39_c9: x_w39_c9 + y_w39_c9 >= 0.8422
  lat_lin_w39_c10: x_w39_c10 + y_w39_c10 >= 0.0139
  lat_lin_w39_c11: x_w39_c11 + y_w39_c11 >= 1.0269
  lat_lin_w39_c12: x_w39_c12 + y_w39_c12 >= 0.5572
  lat_lin_w39_c13: x_w39_c13 + y_w39_c13 >= 0.0844
  lat_lin_w39_c14: x_w39_c14 + y_w39_c14 >= 1.0689
  lat_lin_w39_c15: x_w39_c15 + y_w39_c15 >= 0.8913
  lat_lin_w39_c16: x_w39_c16 + y_w39_c16 >= 0.6136
  lat_lin_w39_c17: x_w39_c17 + y_w39_c17 >= 0.9373
  lat_lin_w39_c18: x_w39_c18 + y_w39_c18 >= 1.2241
  lat_lin_w39_c19: x_w39_c19 + y_w39_c19 >= 0.3549
  demand_w39: x_w39_c0 + x_w39_c1 + x_w39_c2 + x_w39_c3 + x_w39_c4 + x_w39_c5 + x_w39_c6 + x_w39_c7 + x_w39_c8 + x_w39_c9 + x_w39_c10 + x_w39_c11 + x_w39_c12 + x_w39_c13 + x_w39_c14 + x_w39_c15 + x_w39_c16 + x_w39_c17 + x_w39_c18 + x_w39_c19 = 13
  lat_lin_w40_c0: x_w40_c0 + y_w40_c0 >= 1.1876
  lat_lin_w40_c1: x_w40_c1 + y_w40_c1 >= 1.2292
  lat_lin_w40_c2: x_w40_c2 + y_w40_c2 >= 0.0745
  lat_lin_w40_c3: x_w40_c3 + y_w40_c3 >= 0.5190
  lat_lin_w40_c4: x_w40_c4 + y_w40_c4 >= 0.7083
  lat_lin_w40_c5: x_w40_c5 + y_w40_c5 >= 0.1647
  lat_lin_w40_c6: x_w40_c6 + y_w40_c6 >= 0.1896
  lat_lin_w40_c7: x_w40_c7 + y_w40_c7 >= 1.2254
  lat_lin_w40_c8: x_w40_c8 + y_w40_c8 >= 0.5747
  lat_lin_w40_c9: x_w40_c9 + y_w40_c9 >= 0.4058
  lat_lin_w40_c10: x_w40_c10 + y_w40_c10 >= 0.4959
  lat_lin_w40_c11: x_w40_c11 + y_w40_c11 >= 1.4978
  lat_lin_w40_c12: x_w40_c12 + y_w40_c12 >= 0.4040
  lat_lin_w40_c13: x_w40_c13 + y_w40_c13 >= 1.1631
  lat_lin_w40_c14: x_w40_c14 + y_w40_c14 >= 1.6998
  lat_lin_w40_c15: x_w40_c15 + y_w40_c15 >= 0.3866
  lat_lin_w40_c16: x_w40_c16 + y_w40_c16 >= 1.6269
  lat_lin_w40_c17: x_w40_c17 + y_w40_c17 >= 0.7291
  lat_lin_w40_c18: x_w40_c18 + y_w40_c18 >= 0.0320
  lat_lin_w40_c19: x_w40_c19 + y_w40_c19 >= 0.6859
  demand_w40: x_w40_c0 + x_w40_c1 + x_w40_c2 + x_w40_c3 + x_w40_c4 + x_w40_c5 + x_w40_c6 + x_w40_c7 + x_w40_c8 + x_w40_c9 + x_w40_c10 + x_w40_c11 + x_w40_c12 + x_w40_c13 + x_w40_c14 + x_w40_c15 + x_w40_c16 + x_w40_c17 + x_w40_c18 + x_w40_c19 = 15
  lat_lin_w41_c0: x_w41_c0 + y_w41_c0 >= 0.6886
  lat_lin_w41_c1: x_w41_c1 + y_w41_c1 >= 0.5945
  lat_lin_w41_c2: x_w41_c2 + y_w41_c2 >= 0.4802
  lat_lin_w41_c3: x_w41_c3 + y_w41_c3 >= 0.7996
  lat_lin_w41_c4: x_w41_c4 + y_w41_c4 >= 0.1683
  lat_lin_w41_c5: x_w41_c5 + y_w41_c5 >= 0.7152
  lat_lin_w41_c6: x_w41_c6 + y_w41_c6 >= 0.5929
  lat_lin_w41_c7: x_w41_c7 + y_w41_c7 >= 0.1139
  lat_lin_w41_c8: x_w41_c8 + y_w41_c8 >= 0.0626
  lat_lin_w41_c9: x_w41_c9 + y_w41_c9 >= 0.4648
  lat_lin_w41_c10: x_w41_c10 + y_w41_c10 >= 0.6873
  lat_lin_w41_c11: x_w41_c11 + y_w41_c11 >= 0.7610
  lat_lin_w41_c12: x_w41_c12 + y_w41_c12 >= 0.4601
  lat_lin_w41_c13: x_w41_c13 + y_w41_c13 >= 0.7995
  lat_lin_w41_c14: x_w41_c14 + y_w41_c14 >= 0.6630
  lat_lin_w41_c15: x_w41_c15 + y_w41_c15 >= 0.6523
  lat_lin_w41_c16: x_w41_c16 + y_w41_c16 >= 0.3091
  lat_lin_w41_c17: x_w41_c17 + y_w41_c17 >= 0.1245
  lat_lin_w41_c18: x_w41_c18 + y_w41_c18 >= 0.2717
  lat_lin_w41_c19: x_w41_c19 + y_w41_c19 >= 0.5908
  demand_w41: x_w41_c0 + x_w41_c1 + x_w41_c2 + x_w41_c3 + x_w41_c4 + x_w41_c5 + x_w41_c6 + x_w41_c7 + x_w41_c8 + x_w41_c9 + x_w41_c10 + x_w41_c11 + x_w41_c12 + x_w41_c13 + x_w41_c14 + x_w41_c15 + x_w41_c16 + x_w41_c17 + x_w41_c18 + x_w41_c19 = 10
  lat_lin_w42_c0: x_w42_c0 + y_w42_c0 >= 0.3779
  lat_lin_w42_c1: x_w42_c1 + y_w42_c1 >= 0.3047
  lat_lin_w42_c2: x_w42_c2 + y_w42_c2 >= 0.1897
  lat_lin_w42_c3: x_w42_c3 + y_w42_c3 >= 0.6698
  lat_lin_w42_c4: x_w42_c4 + y_w42_c4 >= 0.6333
  lat_lin_w42_c5: x_w42_c5 + y_w42_c5 >= 0.2993
  lat_lin_w42_c6: x_w42_c6 + y_w42_c6 >= 0.3787
  lat_lin_w42_c7: x_w42_c7 + y_w42_c7 >= 0.1225
  lat_lin_w42_c8: x_w42_c8 + y_w42_c8 >= 0.4046
  lat_lin_w42_c9: x_w42_c9 + y_w42_c9 >= 0.5195
  lat_lin_w42_c10: x_w42_c10 + y_w42_c10 >= 0.5656
  lat_lin_w42_c11: x_w42_c11 + y_w42_c11 >= 0.6449
  lat_lin_w42_c12: x_w42_c12 + y_w42_c12 >= 0.6939
  lat_lin_w42_c13: x_w42_c13 + y_w42_c13 >= 0.3173
  lat_lin_w42_c14: x_w42_c14 + y_w42_c14 >= 0.6923
  lat_lin_w42_c15: x_w42_c15 + y_w42_c15 >= 0.5949
  lat_lin_w42_c16: x_w42_c16 + y_w42_c16 >= 0.2201
  lat_lin_w42_c17: x_w42_c17 + y_w42_c17 >= 0.0055
  lat_lin_w42_c18: x_w42_c18 + y_w42_c18 >= 0.0794
  lat_lin_w42_c19: x_w42_c19 + y_w42_c19 >= 0.2858
  demand_w42: x_w42_c0 + x_w42_c1 + x_w42_c2 + x_w42_c3 + x_w42_c4 + x_w42_c5 + x_w42_c6 + x_w42_c7 + x_w42_c8 + x_w42_c9 + x_w42_c10 + x_w42_c11 + x_w42_c12 + x_w42_c13 + x_w42_c14 + x_w42_c15 + x_w42_c16 + x_w42_c17 + x_w42_c18 + x_w42_c19 = 8
  lat_lin_w43_c0: x_w43_c0 + y_w43_c0 >= 0.4199
  lat_lin_w43_c1: x_w43_c1 + y_w43_c1 >= 0.8354
  lat_lin_w43_c2: x_w43_c2 + y_w43_c2 >= 1.1870
  lat_lin_w43_c3: x_w43_c3 + y_w43_c3 >= 0.6837
  lat_lin_w43_c4: x_w43_c4 + y_w43_c4 >= 1.1655
  lat_lin_w43_c5: x_w43_c5 + y_w43_c5 >= 0.2625
  lat_lin_w43_c6: x_w43_c6 + y_w43_c6 >= 0.1962
  lat_lin_w43_c7: x_w43_c7 + y_w43_c7 >= 0.9218
  lat_lin_w43_c8: x_w43_c8 + y_w43_c8 >= 0.3003
  lat_lin_w43_c9: x_w43_c9 + y_w43_c9 >= 0.8405
  lat_lin_w43_c10: x_w43_c10 + y_w43_c10 >= 0.8502
  lat_lin_w43_c11: x_w43_c11 + y_w43_c11 >= 1.0573
  lat_lin_w43_c12: x_w43_c12 + y_w43_c12 >= 1.2943
  lat_lin_w43_c13: x_w43_c13 + y_w43_c13 >= 0.1520
  lat_lin_w43_c14: x_w43_c14 + y_w43_c14 >= 0.8181
  lat_lin_w43_c15: x_w43_c15 + y_w43_c15 >= 0.7367
  lat_lin_w43_c16: x_w43_c16 + y_w43_c16 >= 0.9417
  lat_lin_w43_c17: x_w43_c17 + y_w43_c17 >= 0.0639
  lat_lin_w43_c18: x_w43_c18 + y_w43_c18 >= 0.1592
  lat_lin_w43_c19: x_w43_c19 + y_w43_c19 >= 0.1139
  demand_w43: x_w43_c0 + x_w43_c1 + x_w43_c2 + x_w43_c3 + x_w43_c4 + x_w43_c5 + x_w43_c6 + x_w43_c7 + x_w43_c8 + x_w43_c9 + x_w43_c10 + x_w43_c11 + x_w43_c12 + x_w43_c13 + x_w43_c14 + x_w43_c15 + x_w43_c16 + x_w43_c17 + x_w43_c18 + x_w43_c19 = 13
  lat_lin_w44_c0: x_w44_c0 + y_w44_c0 >= 0.2492
  lat_lin_w44_c1: x_w44_c1 + y_w44_c1 >= 0.0777
  lat_lin_w44_c2: x_w44_c2 + y_w44_c2 >= 0.3606
  lat_lin_w44_c3: x_w44_c3 + y_w44_c3 >= 0.1204
  lat_lin_w44_c4: x_w44_c4 + y_w44_c4 >= 0.1934
  lat_lin_w44_c5: x_w44_c5 + y_w44_c5 >= 0.0561
  lat_lin_w44_c6: x_w44_c6 + y_w44_c6 >= 0.0366
  lat_lin_w44_c7: x_w44_c7 + y_w44_c7 >= 0.2820
  lat_lin_w44_c8: x_w44_c8 + y_w44_c8 >= 0.0765
  lat_lin_w44_c9: x_w44_c9 + y_w44_c9 >= 0.0511
  lat_lin_w44_c10: x_w44_c10 + y_w44_c10 >= 0.3360
  lat_lin_w44_c11: x_w44_c11 + y_w44_c11 >= 0.3449
  lat_lin_w44_c12: x_w44_c12 + y_w44_c12 >= 0.2306
  lat_lin_w44_c13: x_w44_c13 + y_w44_c13 >= 0.3097
  lat_lin_w44_c14: x_w44_c14 + y_w44_c14 >= 0.3605
  lat_lin_w44_c15: x_w44_c15 + y_w44_c15 >= 0.2809
  lat_lin_w44_c16: x_w44_c16 + y_w44_c16 >= 0.1384
  lat_lin_w44_c17: x_w44_c17 + y_w44_c17 >= 0.1149
  lat_lin_w44_c18: x_w44_c18 + y_w44_c18 >= 0.2482
  lat_lin_w44_c19: x_w44_c19 + y_w44_c19 >= 0.1323
  demand_w44: x_w44_c0 + x_w44_c1 + x_w44_c2 + x_w44_c3 + x_w44_c4 + x_w44_c5 + x_w44_c6 + x_w44_c7 + x_w44_c8 + x_w44_c9 + x_w44_c10 + x_w44_c11 + x_w44_c12 + x_w44_c13 + x_w44_c14 + x_w44_c15 + x_w44_c16 + x_w44_c17 + x_w44_c18 + x_w44_c19 = 4
  lat_lin_w45_c0: x_w45_c0 + y_w45_c0 >= 0.0755
  lat_lin_w45_c1: x_w45_c1 + y_w45_c1 >= 0.1007
  lat_lin_w45_c2: x_w45_c2 + y_w45_c2 >= 0.1264
  lat_lin_w45_c3: x_w45_c3 + y_w45_c3 >= 0.1904
  lat_lin_w45_c4: x_w45_c4 + y_w45_c4 >= 0.1993
  lat_lin_w45_c5: x_w45_c5 + y_w45_c5 >= 0.1718
  lat_lin_w45_c6: x_w45_c6 + y_w45_c6 >= 0.2676
  lat_lin_w45_c7: x_w45_c7 + y_w45_c7 >= 0.2475
  lat_lin_w45_c8: x_w45_c8 + y_w45_c8 >= 0.1717
  lat_lin_w45_c9: x_w45_c9 + y_w45_c9 >= 0.1555
  lat_lin_w45_c10: x_w45_c10 + y_w45_c10 >= 0.1022
  lat_lin_w45_c11: x_w45_c11 + y_w45_c11 >= 0.0788
  lat_lin_w45_c12: x_w45_c12 + y_w45_c12 >= 0.1283
  lat_lin_w45_c13: x_w45_c13 + y_w45_c13 >= 0.2221
  lat_lin_w45_c14: x_w45_c14 + y_w45_c14 >= 0.0972
  lat_lin_w45_c15: x_w45_c15 + y_w45_c15 >= 0.1797
  lat_lin_w45_c16: x_w45_c16 + y_w45_c16 >= 0.1799
  lat_lin_w45_c17: x_w45_c17 + y_w45_c17 >= 0.1907
  lat_lin_w45_c18: x_w45_c18 + y_w45_c18 >= 0.0690
  lat_lin_w45_c19: x_w45_c19 + y_w45_c19 >= 0.0457
  demand_w45: x_w45_c0 + x_w45_c1 + x_w45_c2 + x_w45_c3 + x_w45_c4 + x_w45_c5 + x_w45_c6 + x_w45_c7 + x_w45_c8 + x_w45_c9 + x_w45_c10 + x_w45_c11 + x_w45_c12 + x_w45_c13 + x_w45_c14 + x_w45_c15 + x_w45_c16 + x_w45_c17 + x_w45_c18 + x_w45_c19 = 3
  lat_lin_w46_c0: x_w46_c0 + y_w46_c0 >= 0.3866
  lat_lin_w46_c1: x_w46_c1 + y_w46_c1 >= 0.0592
  lat_lin_w46_c2: x_w46_c2 + y_w46_c2 >= 0.3664
  lat_lin_w46_c3: x_w46_c3 + y_w46_c3 >= 0.4242
  lat_lin_w46_c4: x_w46_c4 + y_w46_c4 >= 0.7150
  lat_lin_w46_c5: x_w46_c5 + y_w46_c5 >= 0.2266
  lat_lin_w46_c6: x_w46_c6 + y_w46_c6 >= 0.0684
  lat_lin_w46_c7: x_w46_c7 + y_w46_c7 >= 0.3306
  lat_lin_w46_c8: x_w46_c8 + y_w46_c8 >= 0.4425
  lat_lin_w46_c9: x_w46_c9 + y_w46_c9 >= 0.4217
  lat_lin_w46_c10: x_w46_c10 + y_w46_c10 >= 0.8602
  lat_lin_w46_c11: x_w46_c11 + y_w46_c11 >= 0.0129
  lat_lin_w46_c12: x_w46_c12 + y_w46_c12 >= 0.6551
  lat_lin_w46_c13: x_w46_c13 + y_w46_c13 >= 0.3035
  lat_lin_w46_c14: x_w46_c14 + y_w46_c14 >= 0.5911
  lat_lin_w46_c15: x_w46_c15 + y_w46_c15 >= 0.2900
  lat_lin_w46_c16: x_w46_c16 + y_w46_c16 >= 0.7668
  lat_lin_w46_c17: x_w46_c17 + y_w46_c17 >= 0.8465
  lat_lin_w46_c18: x_w46_c18 + y_w46_c18 >= 0.0026
  lat_lin_w46_c19: x_w46_c19 + y_w46_c19 >= 0.2301
  demand_w46: x_w46_c0 + x_w46_c1 + x_w46_c2 + x_w46_c3 + x_w46_c4 + x_w46_c5 + x_w46_c6 + x_w46_c7 + x_w46_c8 + x_w46_c9 + x_w46_c10 + x_w46_c11 + x_w46_c12 + x_w46_c13 + x_w46_c14 + x_w46_c15 + x_w46_c16 + x_w46_c17 + x_w46_c18 + x_w46_c19 = 8
  lat_lin_w47_c0: x_w47_c0 + y_w47_c0 >= 0.4170
  lat_lin_w47_c1: x_w47_c1 + y_w47_c1 >= 0.3072
  lat_lin_w47_c2: x_w47_c2 + y_w47_c2 >= 0.0775
  lat_lin_w47_c3: x_w47_c3 + y_w47_c3 >= 0.4787
  lat_lin_w47_c4: x_w47_c4 + y_w47_c4 >= 0.2755
  lat_lin_w47_c5: x_w47_c5 + y_w47_c5 >= 0.0021
  lat_lin_w47_c6: x_w47_c6 + y_w47_c6 >= 0.1635
  lat_lin_w47_c7: x_w47_c7 + y_w47_c7 >= 0.2837
  lat_lin_w47_c8: x_w47_c8 + y_w47_c8 >= 0.2977
  lat_lin_w47_c9: x_w47_c9 + y_w47_c9 >= 0.4375
  lat_lin_w47_c10: x_w47_c10 + y_w47_c10 >= 0.0531
  lat_lin_w47_c11: x_w47_c11 + y_w47_c11 >= 0.3268
  lat_lin_w47_c12: x_w47_c12 + y_w47_c12 >= 0.2175
  lat_lin_w47_c13: x_w47_c13 + y_w47_c13 >= 0.2685
  lat_lin_w47_c14: x_w47_c14 + y_w47_c14 >= 0.3477
  lat_lin_w47_c15: x_w47_c15 + y_w47_c15 >= 0.0707
  lat_lin_w47_c16: x_w47_c16 + y_w47_c16 >= 0.4933
  lat_lin_w47_c17: x_w47_c17 + y_w47_c17 >= 0.3296
  lat_lin_w47_c18: x_w47_c18 + y_w47_c18 >= 0.0902
  lat_lin_w47_c19: x_w47_c19 + y_w47_c19 >= 0.0622
  demand_w47: x_w47_c0 + x_w47_c1 + x_w47_c2 + x_w47_c3 + x_w47_c4 + x_w47_c5 + x_w47_c6 + x_w47_c7 + x_w47_c8 + x_w47_c9 + x_w47_c10 + x_w47_c11 + x_w47_c12 + x_w47_c13 + x_w47_c14 + x_w47_c15 + x_w47_c16 + x_w47_c17 + x_w47_c18 + x_w47_c19 = 5
  lat_lin_w48_c0: x_w48_c0 + y_w48_c0 >= 0.5709
  lat_lin_w48_c1: x_w48_c1 + y_w48_c1 >= 0.3467
  lat_lin_w48_c2: x_w48_c2 + y_w48_c2 >= 0.4835
  lat_lin_w48_c3: x_w48_c3 + y_w48_c3 >= 0.5879
  lat_lin_w48_c4: x_w48_c4 + y_w48_c4 >= 0.6913
  lat_lin_w48_c5: x_w48_c5 + y_w48_c5 >= 0.3761
  lat_lin_w48_c6: x_w48_c6 + y_w48_c6 >= 0.5518
  lat_lin_w48_c7: x_w48_c7 + y_w48_c7 >= 1.0231
  lat_lin_w48_c8: x_w48_c8 + y_w48_c8 >= 1.1971
  lat_lin_w48_c9: x_w48_c9 + y_w48_c9 >= 0.6318
  lat_lin_w48_c10: x_w48_c10 + y_w48_c10 >= 0.4057
  lat_lin_w48_c11: x_w48_c11 + y_w48_c11 >= 0.0124
  lat_lin_w48_c12: x_w48_c12 + y_w48_c12 >= 0.9830
  lat_lin_w48_c13: x_w48_c13 + y_w48_c13 >= 0.0113
  lat_lin_w48_c14: x_w48_c14 + y_w48_c14 >= 1.2308
  lat_lin_w48_c15: x_w48_c15 + y_w48_c15 >= 1.4325
  lat_lin_w48_c16: x_w48_c16 + y_w48_c16 >= 0.2994
  lat_lin_w48_c17: x_w48_c17 + y_w48_c17 >= 1.4937
  lat_lin_w48_c18: x_w48_c18 + y_w48_c18 >= 1.1334
  lat_lin_w48_c19: x_w48_c19 + y_w48_c19 >= 0.5375
  demand_w48: x_w48_c0 + x_w48_c1 + x_w48_c2 + x_w48_c3 + x_w48_c4 + x_w48_c5 + x_w48_c6 + x_w48_c7 + x_w48_c8 + x_w48_c9 + x_w48_c10 + x_w48_c11 + x_w48_c12 + x_w48_c13 + x_w48_c14 + x_w48_c15 + x_w48_c16 + x_w48_c17 + x_w48_c18 + x_w48_c19 = 14
  lat_lin_w49_c0: x_w49_c0 + y_w49_c0 >= 0.1909
  lat_lin_w49_c1: x_w49_c1 + y_w49_c1 >= 0.1733
  lat_lin_w49_c2: x_w49_c2 + y_w49_c2 >= 0.0080
  lat_lin_w49_c3: x_w49_c3 + y_w49_c3 >= 0.1584
  lat_lin_w49_c4: x_w49_c4 + y_w49_c4 >= 0.1000
  lat_lin_w49_c5: x_w49_c5 + y_w49_c5 >= 0.0842
  lat_lin_w49_c6: x_w49_c6 + y_w49_c6 >= 0.1273
  lat_lin_w49_c7: x_w49_c7 + y_w49_c7 >= 0.1079
  lat_lin_w49_c8: x_w49_c8 + y_w49_c8 >= 0.2336
  lat_lin_w49_c9: x_w49_c9 + y_w49_c9 >= 0.1870
  lat_lin_w49_c10: x_w49_c10 + y_w49_c10 >= 0.1084
  lat_lin_w49_c11: x_w49_c11 + y_w49_c11 >= 0.2630
  lat_lin_w49_c12: x_w49_c12 + y_w49_c12 >= 0.2782
  lat_lin_w49_c13: x_w49_c13 + y_w49_c13 >= 0.2891
  lat_lin_w49_c14: x_w49_c14 + y_w49_c14 >= 0.1798
  lat_lin_w49_c15: x_w49_c15 + y_w49_c15 >= 0.0154
  lat_lin_w49_c16: x_w49_c16 + y_w49_c16 >= 0.2190
  lat_lin_w49_c17: x_w49_c17 + y_w49_c17 >= 0.0484
  lat_lin_w49_c18: x_w49_c18 + y_w49_c18 >= 0.0085
  lat_lin_w49_c19: x_w49_c19 + y_w49_c19 >= 0.2195
  demand_w49: x_w49_c0 + x_w49_c1 + x_w49_c2 + x_w49_c3 + x_w49_c4 + x_w49_c5 + x_w49_c6 + x_w49_c7 + x_w49_c8 + x_w49_c9 + x_w49_c10 + x_w49_c11 + x_w49_c12 + x_w49_c13 + x_w49_c14 + x_w49_c15 + x_w49_c16 + x_w49_c17 + x_w49_c18 + x_w49_c19 = 3
  lat_lin_w50_c0: x_w50_c0 + y_w50_c0 >= 0.8798
  lat_lin_w50_c1: x_w50_c1 + y_w50_c1 >= 0.7263
  lat_lin_w50_c2: x_w50_c2 + y_w50_c2 >= 1.3197
  lat_lin_w50_c3: x_w50_c3 + y_w50_c3 >= 0.0430
  lat_lin_w50_c4: x_w50_c4 + y_w50_c4 >= 0.1365
  lat_lin_w50_c5: x_w50_c5 + y_w50_c5 >= 0.9882
  lat_lin_w50_c6: x_w50_c6 + y_w50_c6 >= 1.0189
  lat_lin_w50_c7: x_w50_c7 + y_w50_c7 >= 0.8118
  lat_lin_w50_c8: x_w50_c8 + y_w50_c8 >= 0.4521
  lat_lin_w50_c9: x_w50_c9 + y_w50_c9 >= 0.3390
  lat_lin_w50_c10: x_w50_c10 + y_w50_c10 >= 0.3510
  lat_lin_w50_c11: x_w50_c11 + y_w50_c11 >= 0.6442
  lat_lin_w50_c12: x_w50_c12 + y_w50_c12 >= 0.0498
  lat_lin_w50_c13: x_w50_c13 + y_w50_c13 >= 0.3189
  lat_lin_w50_c14: x_w50_c14 + y_w50_c14 >= 0.0645
  lat_lin_w50_c15: x_w50_c15 + y_w50_c15 >= 1.3254
  lat_lin_w50_c16: x_w50_c16 + y_w50_c16 >= 0.2928
  lat_lin_w50_c17: x_w50_c17 + y_w50_c17 >= 1.1695
  lat_lin_w50_c18: x_w50_c18 + y_w50_c18 >= 1.3484
  lat_lin_w50_c19: x_w50_c19 + y_w50_c19 >= 0.7203
  demand_w50: x_w50_c0 + x_w50_c1 + x_w50_c2 + x_w50_c3 + x_w50_c4 + x_w50_c5 + x_w50_c6 + x_w50_c7 + x_w50_c8 + x_w50_c9 + x_w50_c10 + x_w50_c11 + x_w50_c12 + x_w50_c13 + x_w50_c14 + x_w50_c15 + x_w50_c16 + x_w50_c17 + x_w50_c18 + x_w50_c19 = 13
  lat_lin_w51_c0: x_w51_c0 + y_w51_c0 >= 0.4753
  lat_lin_w51_c1: x_w51_c1 + y_w51_c1 >= 0.8406
  lat_lin_w51_c2: x_w51_c2 + y_w51_c2 >= 0.0993
  lat_lin_w51_c3: x_w51_c3 + y_w51_c3 >= 0.4683
  lat_lin_w51_c4: x_w51_c4 + y_w51_c4 >= 1.3567
  lat_lin_w51_c5: x_w51_c5 + y_w51_c5 >= 0.0304
  lat_lin_w51_c6: x_w51_c6 + y_w51_c6 >= 1.3316
  lat_lin_w51_c7: x_w51_c7 + y_w51_c7 >= 0.2365
  lat_lin_w51_c8: x_w51_c8 + y_w51_c8 >= 1.3939
  lat_lin_w51_c9: x_w51_c9 + y_w51_c9 >= 0.5311
  lat_lin_w51_c10: x_w51_c10 + y_w51_c10 >= 1.4977
  lat_lin_w51_c11: x_w51_c11 + y_w51_c11 >= 0.9661
  lat_lin_w51_c12: x_w51_c12 + y_w51_c12 >= 1.2855
  lat_lin_w51_c13: x_w51_c13 + y_w51_c13 >= 0.5614
  lat_lin_w51_c14: x_w51_c14 + y_w51_c14 >= 0.6673
  lat_lin_w51_c15: x_w51_c15 + y_w51_c15 >= 0.0210
  lat_lin_w51_c16: x_w51_c16 + y_w51_c16 >= 0.8432
  lat_lin_w51_c17: x_w51_c17 + y_w51_c17 >= 0.1264
  lat_lin_w51_c18: x_w51_c18 + y_w51_c18 >= 0.2189
  lat_lin_w51_c19: x_w51_c19 + y_w51_c19 >= 1.0488
  demand_w51: x_w51_c0 + x_w51_c1 + x_w51_c2 + x_w51_c3 + x_w51_c4 + x_w51_c5 + x_w51_c6 + x_w51_c7 + x_w51_c8 + x_w51_c9 + x_w51_c10 + x_w51_c11 + x_w51_c12 + x_w51_c13 + x_w51_c14 + x_w51_c15 + x_w51_c16 + x_w51_c17 + x_w51_c18 + x_w51_c19 = 14
  lat_lin_w52_c0: x_w52_c0 + y_w52_c0 >= 0.1976
  lat_lin_w52_c1: x_w52_c1 + y_w52_c1 >= 1.4542
  lat_lin_w52_c2: x_w52_c2 + y_w52_c2 >= 0.8293
  lat_lin_w52_c3: x_w52_c3 + y_w52_c3 >= 0.2457
  lat_lin_w52_c4: x_w52_c4 + y_w52_c4 >= 0.3342
  lat_lin_w52_c5: x_w52_c5 + y_w52_c5 >= 1.4611
  lat_lin_w52_c6: x_w52_c6 + y_w52_c6 >= 0.2989
  lat_lin_w52_c7: x_w52_c7 + y_w52_c7 >= 1.5666
  lat_lin_w52_c8: x_w52_c8 + y_w52_c8 >= 0.4480
  lat_lin_w52_c9: x_w52_c9 + y_w52_c9 >= 1.3447
  lat_lin_w52_c10: x_w52_c10 + y_w52_c10 >= 0.6705
  lat_lin_w52_c11: x_w52_c11 + y_w52_c11 >= 0.5225
  lat_lin_w52_c12: x_w52_c12 + y_w52_c12 >= 0.1884
  lat_lin_w52_c13: x_w52_c13 + y_w52_c13 >= 0.6948
  lat_lin_w52_c14: x_w52_c14 + y_w52_c14 >= 0.5783
  lat_lin_w52_c15: x_w52_c15 + y_w52_c15 >= 0.0992
  lat_lin_w52_c16: x_w52_c16 + y_w52_c16 >= 1.3041
  lat_lin_w52_c17: x_w52_c17 + y_w52_c17 >= 0.2985
  lat_lin_w52_c18: x_w52_c18 + y_w52_c18 >= 0.1926
  lat_lin_w52_c19: x_w52_c19 + y_w52_c19 >= 0.2709
  demand_w52: x_w52_c0 + x_w52_c1 + x_w52_c2 + x_w52_c3 + x_w52_c4 + x_w52_c5 + x_w52_c6 + x_w52_c7 + x_w52_c8 + x_w52_c9 + x_w52_c10 + x_w52_c11 + x_w52_c12 + x_w52_c13 + x_w52_c14 + x_w52_c15 + x_w52_c16 + x_w52_c17 + x_w52_c18 + x_w52_c19 = 13
  lat_lin_w53_c0: x_w53_c0 + y_w53_c0 >= 0.3039
  lat_lin_w53_c1: x_w53_c1 + y_w53_c1 >= 0.2678
  lat_lin_w53_c2: x_w53_c2 + y_w53_c2 >= 0.1153
  lat_lin_w53_c3: x_w53_c3 + y_w53_c3 >= 0.4520
  lat_lin_w53_c4: x_w53_c4 + y_w53_c4 >= 0.5069
  lat_lin_w53_c5: x_w53_c5 + y_w53_c5 >= 0.2762
  lat_lin_w53_c6: x_w53_c6 + y_w53_c6 >= 0.4889
  lat_lin_w53_c7: x_w53_c7 + y_w53_c7 >= 0.5079
  lat_lin_w53_c8: x_w53_c8 + y_w53_c8 >= 0.5830
  lat_lin_w53_c9: x_w53_c9 + y_w53_c9 >= 0.2104
  lat_lin_w53_c10: x_w53_c10 + y_w53_c10 >= 0.0505
  lat_lin_w53_c11: x_w53_c11 + y_w53_c11 >= 0.4556
  lat_lin_w53_c12: x_w53_c12 + y_w53_c12 >= 0.6248
  lat_lin_w53_c13: x_w53_c13 + y_w53_c13 >= 0.6288
  lat_lin_w53_c14: x_w53_c14 + y_w53_c14 >= 0.2294
  lat_lin_w53_c15: x_w53_c15 + y_w53_c15 >= 0.5207
  lat_lin_w53_c16: x_w53_c16 + y_w53_c16 >= 0.6348
  lat_lin_w53_c17: x_w53_c17 + y_w53_c17 >= 0.5282
  lat_lin_w53_c18: x_w53_c18 + y_w53_c18 >= 0.5256
  lat_lin_w53_c19: x_w53_c19 + y_w53_c19 >= 0.0893
  demand_w53: x_w53_c0 + x_w53_c1 + x_w53_c2 + x_w53_c3 + x_w53_c4 + x_w53_c5 + x_w53_c6 + x_w53_c7 + x_w53_c8 + x_w53_c9 + x_w53_c10 + x_w53_c11 + x_w53_c12 + x_w53_c13 + x_w53_c14 + x_w53_c15 + x_w53_c16 + x_w53_c17 + x_w53_c18 + x_w53_c19 = 8
  lat_lin_w54_c0: x_w54_c0 + y_w54_c0 >= 0.1016
  lat_lin_w54_c1: x_w54_c1 + y_w54_c1 >= 0.2528
  lat_lin_w54_c2: x_w54_c2 + y_w54_c2 >= 0.2523
  lat_lin_w54_c3: x_w54_c3 + y_w54_c3 >= 0.0705
  lat_lin_w54_c4: x_w54_c4 + y_w54_c4 >= 0.0301
  lat_lin_w54_c5: x_w54_c5 + y_w54_c5 >= 0.0019
  lat_lin_w54_c6: x_w54_c6 + y_w54_c6 >= 0.0241
  lat_lin_w54_c7: x_w54_c7 + y_w54_c7 >= 0.0627
  lat_lin_w54_c8: x_w54_c8 + y_w54_c8 >= 0.2552
  lat_lin_w54_c9: x_w54_c9 + y_w54_c9 >= 0.2722
  lat_lin_w54_c10: x_w54_c10 + y_w54_c10 >= 0.0411
  lat_lin_w54_c11: x_w54_c11 + y_w54_c11 >= 0.1091
  lat_lin_w54_c12: x_w54_c12 + y_w54_c12 >= 0.2906
  lat_lin_w54_c13: x_w54_c13 + y_w54_c13 >= 0.0813
  lat_lin_w54_c14: x_w54_c14 + y_w54_c14 >= 0.2415
  lat_lin_w54_c15: x_w54_c15 + y_w54_c15 >= 0.1955
  lat_lin_w54_c16: x_w54_c16 + y_w54_c16 >= 0.0839
  lat_lin_w54_c17: x_w54_c17 + y_w54_c17 >= 0.2354
  lat_lin_w54_c18: x_w54_c18 + y_w54_c18 >= 0.2506
  lat_lin_w54_c19: x_w54_c19 + y_w54_c19 >= 0.1477
  demand_w54: x_w54_c0 + x_w54_c1 + x_w54_c2 + x_w54_c3 + x_w54_c4 + x_w54_c5 + x_w54_c6 + x_w54_c7 + x_w54_c8 + x_w54_c9 + x_w54_c10 + x_w54_c11 + x_w54_c12 + x_w54_c13 + x_w54_c14 + x_w54_c15 + x_w54_c16 + x_w54_c17 + x_w54_c18 + x_w54_c19 = 3
  lat_lin_w55_c0: x_w55_c0 + y_w55_c0 >= 0.7067
  lat_lin_w55_c1: x_w55_c1 + y_w55_c1 >= 0.3233
  lat_lin_w55_c2: x_w55_c2 + y_w55_c2 >= 0.8607
  lat_lin_w55_c3: x_w55_c3 + y_w55_c3 >= 0.1260
  lat_lin_w55_c4: x_w55_c4 + y_w55_c4 >= 1.2438
  lat_lin_w55_c5: x_w55_c5 + y_w55_c5 >= 0.2962
  lat_lin_w55_c6: x_w55_c6 + y_w55_c6 >= 0.2885
  lat_lin_w55_c7: x_w55_c7 + y_w55_c7 >= 0.4857
  lat_lin_w55_c8: x_w55_c8 + y_w55_c8 >= 0.7273
  lat_lin_w55_c9: x_w55_c9 + y_w55_c9 >= 1.2752
  lat_lin_w55_c10: x_w55_c10 + y_w55_c10 >= 1.3247
  lat_lin_w55_c11: x_w55_c11 + y_w55_c11 >= 0.2306
  lat_lin_w55_c12: x_w55_c12 + y_w55_c12 >= 0.0405
  lat_lin_w55_c13: x_w55_c13 + y_w55_c13 >= 0.3132
  lat_lin_w55_c14: x_w55_c14 + y_w55_c14 >= 1.4356
  lat_lin_w55_c15: x_w55_c15 + y_w55_c15 >= 0.3785
  lat_lin_w55_c16: x_w55_c16 + y_w55_c16 >= 1.0659
  lat_lin_w55_c17: x_w55_c17 + y_w55_c17 >= 1.4316
  lat_lin_w55_c18: x_w55_c18 + y_w55_c18 >= 0.7557
  lat_lin_w55_c19: x_w55_c19 + y_w55_c19 >= 0.6903
  demand_w55: x_w55_c0 + x_w55_c1 + x_w55_c2 + x_w55_c3 + x_w55_c4 + x_w55_c5 + x_w55_c6 + x_w55_c7 + x_w55_c8 + x_w55_c9 + x_w55_c10 + x_w55_c11 + x_w55_c12 + x_w55_c13 + x_w55_c14 + x_w55_c15 + x_w55_c16 + x_w55_c17 + x_w55_c18 + x_w55_c19 = 14
  lat_lin_w56_c0: x_w56_c0 + y_w56_c0 >= 0.3886
  lat_lin_w56_c1: x_w56_c1 + y_w56_c1 >= 0.9709
  lat_lin_w56_c2: x_w56_c2 + y_w56_c2 >= 1.0444
  lat_lin_w56_c3: x_w56_c3 + y_w56_c3 >= 0.4314
  lat_lin_w56_c4: x_w56_c4 + y_w56_c4 >= 0.8202
  lat_lin_w56_c5: x_w56_c5 + y_w56_c5 >= 0.0904
  lat_lin_w56_c6: x_w56_c6 + y_w56_c6 >= 1.0955
  lat_lin_w56_c7: x_w56_c7 + y_w56_c7 >= 0.1918
  lat_lin_w56_c8: x_w56_c8 + y_w56_c8 >= 0.3249
  lat_lin_w56_c9: x_w56_c9 + y_w56_c9 >= 0.7624
  lat_lin_w56_c10: x_w56_c10 + y_w56_c10 >= 0.7243
  lat_lin_w56_c11: x_w56_c11 + y_w56_c11 >= 1.0919
  lat_lin_w56_c12: x_w56_c12 + y_w56_c12 >= 0.8793
  lat_lin_w56_c13: x_w56_c13 + y_w56_c13 >= 0.4144
  lat_lin_w56_c14: x_w56_c14 + y_w56_c14 >= 0.1146
  lat_lin_w56_c15: x_w56_c15 + y_w56_c15 >= 1.1243
  lat_lin_w56_c16: x_w56_c16 + y_w56_c16 >= 0.1267
  lat_lin_w56_c17: x_w56_c17 + y_w56_c17 >= 0.8342
  lat_lin_w56_c18: x_w56_c18 + y_w56_c18 >= 0.5261
  lat_lin_w56_c19: x_w56_c19 + y_w56_c19 >= 1.0438
  demand_w56: x_w56_c0 + x_w56_c1 + x_w56_c2 + x_w56_c3 + x_w56_c4 + x_w56_c5 + x_w56_c6 + x_w56_c7 + x_w56_c8 + x_w56_c9 + x_w56_c10 + x_w56_c11 + x_w56_c12 + x_w56_c13 + x_w56_c14 + x_w56_c15 + x_w56_c16 + x_w56_c17 + x_w56_c18 + x_w56_c19 = 13
  lat_lin_w57_c0: x_w57_c0 + y_w57_c0 >= 1.0192
  lat_lin_w57_c1: x_w57_c1 + y_w57_c1 >= 0.9705
  lat_lin_w57_c2: x_w57_c2 + y_w57_c2 >= 0.5729
  lat_lin_w57_c3: x_w57_c3 + y_w57_c3 >= 0.5800
  lat_lin_w57_c4: x_w57_c4 + y_w57_c4 >= 0.3886
  lat_lin_w57_c5: x_w57_c5 + y_w57_c5 >= 1.0731
  lat_lin_w57_c6: x_w57_c6 + y_w57_c6 >= 0.1779
  lat_lin_w57_c7: x_w57_c7 + y_w57_c7 >= 0.0048
  lat_lin_w57_c8: x_w57_c8 + y_w57_c8 >= 0.0251
  lat_lin_w57_c9: x_w57_c9 + y_w57_c9 >= 0.1691
  lat_lin_w57_c10: x_w57_c10 + y_w57_c10 >= 0.3282
  lat_lin_w57_c11: x_w57_c11 + y_w57_c11 >= 0.2976
  lat_lin_w57_c12: x_w57_c12 + y_w57_c12 >= 0.7404
  lat_lin_w57_c13: x_w57_c13 + y_w57_c13 >= 0.7813
  lat_lin_w57_c14: x_w57_c14 + y_w57_c14 >= 0.3312
  lat_lin_w57_c15: x_w57_c15 + y_w57_c15 >= 1.0073
  lat_lin_w57_c16: x_w57_c16 + y_w57_c16 >= 0.3862
  lat_lin_w57_c17: x_w57_c17 + y_w57_c17 >= 0.7712
  lat_lin_w57_c18: x_w57_c18 + y_w57_c18 >= 1.0913
  lat_lin_w57_c19: x_w57_c19 + y_w57_c19 >= 0.2842
  demand_w57: x_w57_c0 + x_w57_c1 + x_w57_c2 + x_w57_c3 + x_w57_c4 + x_w57_c5 + x_w57_c6 + x_w57_c7 + x_w57_c8 + x_w57_c9 + x_w57_c10 + x_w57_c11 + x_w57_c12 + x_w57_c13 + x_w57_c14 + x_w57_c15 + x_w57_c16 + x_w57_c17 + x_w57_c18 + x_w57_c19 = 11
  lat_lin_w58_c0: x_w58_c0 + y_w58_c0 >= 0.1367
  lat_lin_w58_c1: x_w58_c1 + y_w58_c1 >= 0.2858
  lat_lin_w58_c2: x_w58_c2 + y_w58_c2 >= 0.1082
  lat_lin_w58_c3: x_w58_c3 + y_w58_c3 >= 0.3767
  lat_lin_w58_c4: x_w58_c4 + y_w58_c4 >= 0.5062
  lat_lin_w58_c5: x_w58_c5 + y_w58_c5 >= 0.5832
  lat_lin_w58_c6: x_w58_c6 + y_w58_c6 >= 1.0051
  lat_lin_w58_c7: x_w58_c7 + y_w58_c7 >= 0.1415
  lat_lin_w58_c8: x_w58_c8 + y_w58_c8 >= 1.0878
  lat_lin_w58_c9: x_w58_c9 + y_w58_c9 >= 0.0432
  lat_lin_w58_c10: x_w58_c10 + y_w58_c10 >= 0.2335
  lat_lin_w58_c11: x_w58_c11 + y_w58_c11 >= 0.2451
  lat_lin_w58_c12: x_w58_c12 + y_w58_c12 >= 0.7854
  lat_lin_w58_c13: x_w58_c13 + y_w58_c13 >= 0.3876
  lat_lin_w58_c14: x_w58_c14 + y_w58_c14 >= 1.1819
  lat_lin_w58_c15: x_w58_c15 + y_w58_c15 >= 0.6954
  lat_lin_w58_c16: x_w58_c16 + y_w58_c16 >= 0.2362
  lat_lin_w58_c17: x_w58_c17 + y_w58_c17 >= 0.9714
  lat_lin_w58_c18: x_w58_c18 + y_w58_c18 >= 0.6061
  lat_lin_w58_c19: x_w58_c19 + y_w58_c19 >= 0.3830
  demand_w58: x_w58_c0 + x_w58_c1 + x_w58_c2 + x_w58_c3 + x_w58_c4 + x_w58_c5 + x_w58_c6 + x_w58_c7 + x_w58_c8 + x_w58_c9 + x_w58_c10 + x_w58_c11 + x_w58_c12 + x_w58_c13 + x_w58_c14 + x_w58_c15 + x_w58_c16 + x_w58_c17 + x_w58_c18 + x_w58_c19 = 10
  lat_lin_w59_c0: x_w59_c0 + y_w59_c0 >= 0.5938
  lat_lin_w59_c1: x_w59_c1 + y_w59_c1 >= 0.5527
  lat_lin_w59_c2: x_w59_c2 + y_w59_c2 >= 0.4139
  lat_lin_w59_c3: x_w59_c3 + y_w59_c3 >= 0.4219
  lat_lin_w59_c4: x_w59_c4 + y_w59_c4 >= 0.4514
  lat_lin_w59_c5: x_w59_c5 + y_w59_c5 >= 0.3179
  lat_lin_w59_c6: x_w59_c6 + y_w59_c6 >= 0.2930
  lat_lin_w59_c7: x_w59_c7 + y_w59_c7 >= 0.4654
  lat_lin_w59_c8: x_w59_c8 + y_w59_c8 >= 0.0493
  lat_lin_w59_c9: x_w59_c9 + y_w59_c9 >= 0.7629
  lat_lin_w59_c10: x_w59_c10 + y_w59_c10 >= 0.0622
  lat_lin_w59_c11: x_w59_c11 + y_w59_c11 >= 0.0724
  lat_lin_w59_c12: x_w59_c12 + y_w59_c12 >= 0.6116
  lat_lin_w59_c13: x_w59_c13 + y_w59_c13 >= 0.4376
  lat_lin_w59_c14: x_w59_c14 + y_w59_c14 >= 0.5728
  lat_lin_w59_c15: x_w59_c15 + y_w59_c15 >= 0.5559
  lat_lin_w59_c16: x_w59_c16 + y_w59_c16 >= 0.5718
  lat_lin_w59_c17: x_w59_c17 + y_w59_c17 >= 0.5508
  lat_lin_w59_c18: x_w59_c18 + y_w59_c18 >= 0.7677
  lat_lin_w59_c19: x_w59_c19 + y_w59_c19 >= 0.4752
  demand_w59: x_w59_c0 + x_w59_c1 + x_w59_c2 + x_w59_c3 + x_w59_c4 + x_w59_c5 + x_w59_c6 + x_w59_c7 + x_w59_c8 + x_w59_c9 + x_w59_c10 + x_w59_c11 + x_w59_c12 + x_w59_c13 + x_w59_c14 + x_w59_c15 + x_w59_c16 + x_w59_c17 + x_w59_c18 + x_w59_c19 = 9
  lat_lin_w60_c0: x_w60_c0 + y_w60_c0 >= 0.1389
  lat_lin_w60_c1: x_w60_c1 + y_w60_c1 >= 1.1304
  lat_lin_w60_c2: x_w60_c2 + y_w60_c2 >= 1.0639
  lat_lin_w60_c3: x_w60_c3 + y_w60_c3 >= 0.7811
  lat_lin_w60_c4: x_w60_c4 + y_w60_c4 >= 0.2649
  lat_lin_w60_c5: x_w60_c5 + y_w60_c5 >= 0.6148
  lat_lin_w60_c6: x_w60_c6 + y_w60_c6 >= 0.9806
  lat_lin_w60_c7: x_w60_c7 + y_w60_c7 >= 0.7500
  lat_lin_w60_c8: x_w60_c8 + y_w60_c8 >= 0.5336
  lat_lin_w60_c9: x_w60_c9 + y_w60_c9 >= 0.3683
  lat_lin_w60_c10: x_w60_c10 + y_w60_c10 >= 0.7185
  lat_lin_w60_c11: x_w60_c11 + y_w60_c11 >= 0.4316
  lat_lin_w60_c12: x_w60_c12 + y_w60_c12 >= 0.4043
  lat_lin_w60_c13: x_w60_c13 + y_w60_c13 >= 0.5892
  lat_lin_w60_c14: x_w60_c14 + y_w60_c14 >= 0.3470
  lat_lin_w60_c15: x_w60_c15 + y_w60_c15 >= 0.8477
  lat_lin_w60_c16: x_w60_c16 + y_w60_c16 >= 0.0016
  lat_lin_w60_c17: x_w60_c17 + y_w60_c17 >= 0.0084
  lat_lin_w60_c18: x_w60_c18 + y_w60_c18 >= 1.1410
  lat_lin_w60_c19: x_w60_c19 + y_w60_c19 >= 0.8842
  demand_w60: x_w60_c0 + x_w60_c1 + x_w60_c2 + x_w60_c3 + x_w60_c4 + x_w60_c5 + x_w60_c6 + x_w60_c7 + x_w60_c8 + x_w60_c9 + x_w60_c10 + x_w60_c11 + x_w60_c12 + x_w60_c13 + x_w60_c14 + x_w60_c15 + x_w60_c16 + x_w60_c17 + x_w60_c18 + x_w60_c19 = 12
  lat_lin_w61_c0: x_w61_c0 + y_w61_c0 >= 0.3099
  lat_lin_w61_c1: x_w61_c1 + y_w61_c1 >= 0.2531
  lat_lin_w61_c2: x_w61_c2 + y_w61_c2 >= 1.1639
  lat_lin_w61_c3: x_w61_c3 + y_w61_c3 >= 0.1874
  lat_lin_w61_c4: x_w61_c4 + y_w61_c4 >= 0.5914
  lat_lin_w61_c5: x_w61_c5 + y_w61_c5 >= 1.3356
  lat_lin_w61_c6: x_w61_c6 + y_w61_c6 >= 0.4629
  lat_lin_w61_c7: x_w61_c7 + y_w61_c7 >= 1.1104
  lat_lin_w61_c8: x_w61_c8 + y_w61_c8 >= 0.1549
  lat_lin_w61_c9: x_w61_c9 + y_w61_c9 >= 1.0855
  lat_lin_w61_c10: x_w61_c10 + y_w61_c10 >= 1.3421
  lat_lin_w61_c11: x_w61_c11 + y_w61_c11 >= 1.2921
  lat_lin_w61_c12: x_w61_c12 + y_w61_c12 >= 1.0956
  lat_lin_w61_c13: x_w61_c13 + y_w61_c13 >= 0.0728
  lat_lin_w61_c14: x_w61_c14 + y_w61_c14 >= 0.7248
  lat_lin_w61_c15: x_w61_c15 + y_w61_c15 >= 1.0457
  lat_lin_w61_c16: x_w61_c16 + y_w61_c16 >= 0.9038
  lat_lin_w61_c17: x_w61_c17 + y_w61_c17 >= 0.6279
  lat_lin_w61_c18: x_w61_c18 + y_w61_c18 >= 0.5473
  lat_lin_w61_c19: x_w61_c19 + y_w61_c19 >= 0.6929
  demand_w61: x_w61_c0 + x_w61_c1 + x_w61_c2 + x_w61_c3 + x_w61_c4 + x_w61_c5 + x_w61_c6 + x_w61_c7 + x_w61_c8 + x_w61_c9 + x_w61_c10 + x_w61_c11 + x_w61_c12 + x_w61_c13 + x_w61_c14 + x_w61_c15 + x_w61_c16 + x_w61_c17 + x_w61_c18 + x_w61_c19 = 15
  lat_lin_w62_c0: x_w62_c0 + y_w62_c0 >= 0.2989
  lat_lin_w62_c1: x_w62_c1 + y_w62_c1 >= 0.3767
  lat_lin_w62_c2: x_w62_c2 + y_w62_c2 >= 0.8094
  lat_lin_w62_c3: x_w62_c3 + y_w62_c3 >= 0.7896
  lat_lin_w62_c4: x_w62_c4 + y_w62_c4 >= 0.0665
  lat_lin_w62_c5: x_w62_c5 + y_w62_c5 >= 0.1103
  lat_lin_w62_c6: x_w62_c6 + y_w62_c6 >= 0.5075
  lat_lin_w62_c7: x_w62_c7 + y_w62_c7 >= 0.6356
  lat_lin_w62_c8: x_w62_c8 + y_w62_c8 >= 0.7944
  lat_lin_w62_c9: x_w62_c9 + y_w62_c9 >= 0.4548
  lat_lin_w62_c10: x_w62_c10 + y_w62_c10 >= 0.1739
  lat_lin_w62_c11: x_w62_c11 + y_w62_c11 >= 0.5819
  lat_lin_w62_c12: x_w62_c12 + y_w62_c12 >= 0.0955
  lat_lin_w62_c13: x_w62_c13 + y_w62_c13 >= 0.6727
  lat_lin_w62_c14: x_w62_c14 + y_w62_c14 >= 0.7839
  lat_lin_w62_c15: x_w62_c15 + y_w62_c15 >= 0.2351
  lat_lin_w62_c16: x_w62_c16 + y_w62_c16 >= 0.3773
  lat_lin_w62_c17: x_w62_c17 + y_w62_c17 >= 0.1321
  lat_lin_w62_c18: x_w62_c18 + y_w62_c18 >= 0.6852
  lat_lin_w62_c19: x_w62_c19 + y_w62_c19 >= 0.4187
  demand_w62: x_w62_c0 + x_w62_c1 + x_w62_c2 + x_w62_c3 + x_w62_c4 + x_w62_c5 + x_w62_c6 + x_w62_c7 + x_w62_c8 + x_w62_c9 + x_w62_c10 + x_w62_c11 + x_w62_c12 + x_w62_c13 + x_w62_c14 + x_w62_c15 + x_w62_c16 + x_w62_c17 + x_w62_c18 + x_w62_c19 = 9
  lat_lin_w63_c0: x_w63_c0 + y_w63_c0 >= 0.1387
  lat_lin_w63_c1: x_w63_c1 + y_w63_c1 >= 0.0649
  lat_lin_w63_c2: x_w63_c2 + y_w63_c2 >= 0.3777
  lat_lin_w63_c3: x_w63_c3 + y_w63_c3 >= 0.4567
  lat_lin_w63_c4: x_w63_c4 + y_w63_c4 >= 0.2474
  lat_lin_w63_c5: x_w63_c5 + y_w63_c5 >= 0.6720
  lat_lin_w63_c6: x_w63_c6 + y_w63_c6 >= 0.2037
  lat_lin_w63_c7: x_w63_c7 + y_w63_c7 >= 0.5699
  lat_lin_w63_c8: x_w63_c8 + y_w63_c8 >= 0.2943
  lat_lin_w63_c9: x_w63_c9 + y_w63_c9 >= 0.5298
  lat_lin_w63_c10: x_w63_c10 + y_w63_c10 >= 0.0820
  lat_lin_w63_c11: x_w63_c11 + y_w63_c11 >= 0.0468
  lat_lin_w63_c12: x_w63_c12 + y_w63_c12 >= 0.6675
  lat_lin_w63_c13: x_w63_c13 + y_w63_c13 >= 0.4403
  lat_lin_w63_c14: x_w63_c14 + y_w63_c14 >= 0.1536
  lat_lin_w63_c15: x_w63_c15 + y_w63_c15 >= 0.1143
  lat_lin_w63_c16: x_w63_c16 + y_w63_c16 >= 0.3604
  lat_lin_w63_c17: x_w63_c17 + y_w63_c17 >= 0.7226
  lat_lin_w63_c18: x_w63_c18 + y_w63_c18 >= 0.4010
  lat_lin_w63_c19: x_w63_c19 + y_w63_c19 >= 0.4561
  demand_w63: x_w63_c0 + x_w63_c1 + x_w63_c2 + x_w63_c3 + x_w63_c4 + x_w63_c5 + x_w63_c6 + x_w63_c7 + x_w63_c8 + x_w63_c9 + x_w63_c10 + x_w63_c11 + x_w63_c12 + x_w63_c13 + x_w63_c14 + x_w63_c15 + x_w63_c16 + x_w63_c17 + x_w63_c18 + x_w63_c19 = 7
  lat_lin_w64_c0: x_w64_c0 + y_w64_c0 >= 0.8104
  lat_lin_w64_c1: x_w64_c1 + y_w64_c1 >= 0.0144
  lat_lin_w64_c2: x_w64_c2 + y_w64_c2 >= 0.0998
  lat_lin_w64_c3: x_w64_c3 + y_w64_c3 >= 0.6202
  lat_lin_w64_c4: x_w64_c4 + y_w64_c4 >= 0.7796
  lat_lin_w64_c5: x_w64_c5 + y_w64_c5 >= 0.3350
  lat_lin_w64_c6: x_w64_c6 + y_w64_c6 >= 0.3057
  lat_lin_w64_c7: x_w64_c7 + y_w64_c7 >= 0.3358
  lat_lin_w64_c8: x_w64_c8 + y_w64_c8 >= 0.0693
  lat_lin_w64_c9: x_w64_c9 + y_w64_c9 >= 0.1631
  lat_lin_w64_c10: x_w64_c10 + y_w64_c10 >= 0.4162
  lat_lin_w64_c11: x_w64_c11 + y_w64_c11 >= 0.7477
  lat_lin_w64_c12: x_w64_c12 + y_w64_c12 >= 0.3187
  lat_lin_w64_c13: x_w64_c13 + y_w64_c13 >= 0.6084
  lat_lin_w64_c14: x_w64_c14 + y_w64_c14 >= 0.3646
  lat_lin_w64_c15: x_w64_c15 + y_w64_c15 >= 0.3991
  lat_lin_w64_c16: x_w64_c16 + y_w64_c16 >= 0.2070
  lat_lin_w64_c17: x_w64_c17 + y_w64_c17 >= 0.4434
  lat_lin_w64_c18: x_w64_c18 + y_w64_c18 >= 0.4370
  lat_lin_w64_c19: x_w64_c19 + y_w64_c19 >= 0.5249
  demand_w64: x_w64_c0 + x_w64_c1 + x_w64_c2 + x_w64_c3 + x_w64_c4 + x_w64_c5 + x_w64_c6 + x_w64_c7 + x_w64_c8 + x_w64_c9 + x_w64_c10 + x_w64_c11 + x_w64_c12 + x_w64_c13 + x_w64_c14 + x_w64_c15 + x_w64_c16 + x_w64_c17 + x_w64_c18 + x_w64_c19 = 8
  lat_lin_w65_c0: x_w65_c0 + y_w65_c0 >= 0.2807
  lat_lin_w65_c1: x_w65_c1 + y_w65_c1 >= 0.1356
  lat_lin_w65_c2: x_w65_c2 + y_w65_c2 >= 0.0531
  lat_lin_w65_c3: x_w65_c3 + y_w65_c3 >= 0.0185
  lat_lin_w65_c4: x_w65_c4 + y_w65_c4 >= 0.1818
  lat_lin_w65_c5: x_w65_c5 + y_w65_c5 >= 0.0318
  lat_lin_w65_c6: x_w65_c6 + y_w65_c6 >= 0.3209
  lat_lin_w65_c7: x_w65_c7 + y_w65_c7 >= 0.0603
  lat_lin_w65_c8: x_w65_c8 + y_w65_c8 >= 0.2512
  lat_lin_w65_c9: x_w65_c9 + y_w65_c9 >= 0.0023
  lat_lin_w65_c10: x_w65_c10 + y_w65_c10 >= 0.0319
  lat_lin_w65_c11: x_w65_c11 + y_w65_c11 >= 0.4180
  lat_lin_w65_c12: x_w65_c12 + y_w65_c12 >= 0.4092
  lat_lin_w65_c13: x_w65_c13 + y_w65_c13 >= 0.1768
  lat_lin_w65_c14: x_w65_c14 + y_w65_c14 >= 0.0618
  lat_lin_w65_c15: x_w65_c15 + y_w65_c15 >= 0.0312
  lat_lin_w65_c16: x_w65_c16 + y_w65_c16 >= 0.3269
  lat_lin_w65_c17: x_w65_c17 + y_w65_c17 >= 0.3827
  lat_lin_w65_c18: x_w65_c18 + y_w65_c18 >= 0.3796
  lat_lin_w65_c19: x_w65_c19 + y_w65_c19 >= 0.4455
  demand_w65: x_w65_c0 + x_w65_c1 + x_w65_c2 + x_w65_c3 + x_w65_c4 + x_w65_c5 + x_w65_c6 + x_w65_c7 + x_w65_c8 + x_w65_c9 + x_w65_c10 + x_w65_c11 + x_w65_c12 + x_w65_c13 + x_w65_c14 + x_w65_c15 + x_w65_c16 + x_w65_c17 + x_w65_c18 + x_w65_c19 = 4
  lat_lin_w66_c0: x_w66_c0 + y_w66_c0 >= 0.5394
  lat_lin_w66_c1: x_w66_c1 + y_w66_c1 >= 0.4088
  lat_lin_w66_c2: x_w66_c2 + y_w66_c2 >= 0.2538
  lat_lin_w66_c3: x_w66_c3 + y_w66_c3 >= 0.2345
  lat_lin_w66_c4: x_w66_c4 + y_w66_c4 >= 0.3418
  lat_lin_w66_c5: x_w66_c5 + y_w66_c5 >= 0.2434
  lat_lin_w66_c6: x_w66_c6 + y_w66_c6 >= 0.2644
  lat_lin_w66_c7: x_w66_c7 + y_w66_c7 >= 0.4002
  lat_lin_w66_c8: x_w66_c8 + y_w66_c8 >= 0.4791
  lat_lin_w66_c9: x_w66_c9 + y_w66_c9 >= 0.3319
  lat_lin_w66_c10: x_w66_c10 + y_w66_c10 >= 0.0266
  lat_lin_w66_c11: x_w66_c11 + y_w66_c11 >= 0.0336
  lat_lin_w66_c12: x_w66_c12 + y_w66_c12 >= 0.7662
  lat_lin_w66_c13: x_w66_c13 + y_w66_c13 >= 0.4059
  lat_lin_w66_c14: x_w66_c14 + y_w66_c14 >= 0.7422
  lat_lin_w66_c15: x_w66_c15 + y_w66_c15 >= 0.0694
  lat_lin_w66_c16: x_w66_c16 + y_w66_c16 >= 0.1731
  lat_lin_w66_c17: x_w66_c17 + y_w66_c17 >= 0.1082
  lat_lin_w66_c18: x_w66_c18 + y_w66_c18 >= 0.7566
  lat_lin_w66_c19: x_w66_c19 + y_w66_c19 >= 0.4209
  demand_w66: x_w66_c0 + x_w66_c1 + x_w66_c2 + x_w66_c3 + x_w66_c4 + x_w66_c5 + x_w66_c6 + x_w66_c7 + x_w66_c8 + x_w66_c9 + x_w66_c10 + x_w66_c11 + x_w66_c12 + x_w66_c13 + x_w66_c14 + x_w66_c15 + x_w66_c16 + x_w66_c17 + x_w66_c18 + x_w66_c19 = 7
  lat_lin_w67_c0: x_w67_c0 + y_w67_c0 >= 1.2676
  lat_lin_w67_c1: x_w67_c1 + y_w67_c1 >= 0.3893
  lat_lin_w67_c2: x_w67_c2 + y_w67_c2 >= 0.1491
  lat_lin_w67_c3: x_w67_c3 + y_w67_c3 >= 0.5021
  lat_lin_w67_c4: x_w67_c4 + y_w67_c4 >= 1.1734
  lat_lin_w67_c5: x_w67_c5 + y_w67_c5 >= 0.8675
  lat_lin_w67_c6: x_w67_c6 + y_w67_c6 >= 0.3286
  lat_lin_w67_c7: x_w67_c7 + y_w67_c7 >= 0.7391
  lat_lin_w67_c8: x_w67_c8 + y_w67_c8 >= 1.0999
  lat_lin_w67_c9: x_w67_c9 + y_w67_c9 >= 0.6944
  lat_lin_w67_c10: x_w67_c10 + y_w67_c10 >= 0.4901
  lat_lin_w67_c11: x_w67_c11 + y_w67_c11 >= 1.0746
  lat_lin_w67_c12: x_w67_c12 + y_w67_c12 >= 0.2924
  lat_lin_w67_c13: x_w67_c13 + y_w67_c13 >= 0.1506
  lat_lin_w67_c14: x_w67_c14 + y_w67_c14 >= 0.1878
  lat_lin_w67_c15: x_w67_c15 + y_w67_c15 >= 0.4560
  lat_lin_w67_c16: x_w67_c16 + y_w67_c16 >= 0.9721
  lat_lin_w67_c17: x_w67_c17 + y_w67_c17 >= 0.7126
  lat_lin_w67_c18: x_w67_c18 + y_w67_c18 >= 1.2340
  lat_lin_w67_c19: x_w67_c19 + y_w67_c19 >= 1.2187
  demand_w67: x_w67_c0 + x_w67_c1 + x_w67_c2 + x_w67_c3 + x_w67_c4 + x_w67_c5 + x_w67_c6 + x_w67_c7 + x_w67_c8 + x_w67_c9 + x_w67_c10 + x_w67_c11 + x_w67_c12 + x_w67_c13 + x_w67_c14 + x_w67_c15 + x_w67_c16 + x_w67_c17 + x_w67_c18 + x_w67_c19 = 14
  lat_lin_w68_c0: x_w68_c0 + y_w68_c0 >= 0.0108
  lat_lin_w68_c1: x_w68_c1 + y_w68_c1 >= 0.1369
  lat_lin_w68_c2: x_w68_c2 + y_w68_c2 >= 0.1004
  lat_lin_w68_c3: x_w68_c3 + y_w68_c3 >= 0.2622
  lat_lin_w68_c4: x_w68_c4 + y_w68_c4 >= 0.1857
  lat_lin_w68_c5: x_w68_c5 + y_w68_c5 >= 0.2087
  lat_lin_w68_c6: x_w68_c6 + y_w68_c6 >= 0.1993
  lat_lin_w68_c7: x_w68_c7 + y_w68_c7 >= 0.2397
  lat_lin_w68_c8: x_w68_c8 + y_w68_c8 >= 0.0642
  lat_lin_w68_c9: x_w68_c9 + y_w68_c9 >= 0.1726
  lat_lin_w68_c10: x_w68_c10 + y_w68_c10 >= 0.0285
  lat_lin_w68_c11: x_w68_c11 + y_w68_c11 >= 0.2496
  lat_lin_w68_c12: x_w68_c12 + y_w68_c12 >= 0.1292
  lat_lin_w68_c13: x_w68_c13 + y_w68_c13 >= 0.0755
  lat_lin_w68_c14: x_w68_c14 + y_w68_c14 >= 0.1659
  lat_lin_w68_c15: x_w68_c15 + y_w68_c15 >= 0.0665
  lat_lin_w68_c16: x_w68_c16 + y_w68_c16 >= 0.1168
  lat_lin_w68_c17: x_w68_c17 + y_w68_c17 >= 0.2334
  lat_lin_w68_c18: x_w68_c18 + y_w68_c18 >= 0.2512
  lat_lin_w68_c19: x_w68_c19 + y_w68_c19 >= 0.1029
  demand_w68: x_w68_c0 + x_w68_c1 + x_w68_c2 + x_w68_c3 + x_w68_c4 + x_w68_c5 + x_w68_c6 + x_w68_c7 + x_w68_c8 + x_w68_c9 + x_w68_c10 + x_w68_c11 + x_w68_c12 + x_w68_c13 + x_w68_c14 + x_w68_c15 + x_w68_c16 + x_w68_c17 + x_w68_c18 + x_w68_c19 = 3
  lat_lin_w69_c0: x_w69_c0 + y_w69_c0 >= 0.0219
  lat_lin_w69_c1: x_w69_c1 + y_w69_c1 >= 0.2315
  lat_lin_w69_c2: x_w69_c2 + y_w69_c2 >= 0.2904
  lat_lin_w69_c3: x_w69_c3 + y_w69_c3 >= 0.0094
  lat_lin_w69_c4: x_w69_c4 + y_w69_c4 >= 0.0713
  lat_lin_w69_c5: x_w69_c5 + y_w69_c5 >= 0.3181
  lat_lin_w69_c6: x_w69_c6 + y_w69_c6 >= 0.4812
  lat_lin_w69_c7: x_w69_c7 + y_w69_c7 >= 0.1229
  lat_lin_w69_c8: x_w69_c8 + y_w69_c8 >= 0.4690
  lat_lin_w69_c9: x_w69_c9 + y_w69_c9 >= 0.4006
  lat_lin_w69_c10: x_w69_c10 + y_w69_c10 >= 0.1171
  lat_lin_w69_c11: x_w69_c11 + y_w69_c11 >= 0.1675
  lat_lin_w69_c12: x_w69_c12 + y_w69_c12 >= 0.4520
  lat_lin_w69_c13: x_w69_c13 + y_w69_c13 >= 0.5193
  lat_lin_w69_c14: x_w69_c14 + y_w69_c14 >= 0.3143
  lat_lin_w69_c15: x_w69_c15 + y_w69_c15 >= 0.4408
  lat_lin_w69_c16: x_w69_c16 + y_w69_c16 >= 0.0675
  lat_lin_w69_c17: x_w69_c17 + y_w69_c17 >= 0.0939
  lat_lin_w69_c18: x_w69_c18 + y_w69_c18 >= 0.3038
  lat_lin_w69_c19: x_w69_c19 + y_w69_c19 >= 0.1074
  demand_w69: x_w69_c0 + x_w69_c1 + x_w69_c2 + x_w69_c3 + x_w69_c4 + x_w69_c5 + x_w69_c6 + x_w69_c7 + x_w69_c8 + x_w69_c9 + x_w69_c10 + x_w69_c11 + x_w69_c12 + x_w69_c13 + x_w69_c14 + x_w69_c15 + x_w69_c16 + x_w69_c17 + x_w69_c18 + x_w69_c19 = 5
  lat_lin_w70_c0: x_w70_c0 + y_w70_c0 >= 0.1130
  lat_lin_w70_c1: x_w70_c1 + y_w70_c1 >= 0.1542
  lat_lin_w70_c2: x_w70_c2 + y_w70_c2 >= 0.2692
  lat_lin_w70_c3: x_w70_c3 + y_w70_c3 >= 0.0006
  lat_lin_w70_c4: x_w70_c4 + y_w70_c4 >= 0.3652
  lat_lin_w70_c5: x_w70_c5 + y_w70_c5 >= 0.3550
  lat_lin_w70_c6: x_w70_c6 + y_w70_c6 >= 0.2948
  lat_lin_w70_c7: x_w70_c7 + y_w70_c7 >= 0.1616
  lat_lin_w70_c8: x_w70_c8 + y_w70_c8 >= 0.2411
  lat_lin_w70_c9: x_w70_c9 + y_w70_c9 >= 0.3653
  lat_lin_w70_c10: x_w70_c10 + y_w70_c10 >= 0.3754
  lat_lin_w70_c11: x_w70_c11 + y_w70_c11 >= 0.0052
  lat_lin_w70_c12: x_w70_c12 + y_w70_c12 >= 0.2532
  lat_lin_w70_c13: x_w70_c13 + y_w70_c13 >= 0.0601
  lat_lin_w70_c14: x_w70_c14 + y_w70_c14 >= 0.1160
  lat_lin_w70_c15: x_w70_c15 + y_w70_c15 >= 0.0104
  lat_lin_w70_c16: x_w70_c16 + y_w70_c16 >= 0.0128
  lat_lin_w70_c17: x_w70_c17 + y_w70_c17 >= 0.3696
  lat_lin_w70_c18: x_w70_c18 + y_w70_c18 >= 0.3826
  lat_lin_w70_c19: x_w70_c19 + y_w70_c19 >= 0.0948
  demand_w70: x_w70_c0 + x_w70_c1 + x_w70_c2 + x_w70_c3 + x_w70_c4 + x_w70_c5 + x_w70_c6 + x_w70_c7 + x_w70_c8 + x_w70_c9 + x_w70_c10 + x_w70_c11 + x_w70_c12 + x_w70_c13 + x_w70_c14 + x_w70_c15 + x_w70_c16 + x_w70_c17 + x_w70_c18 + x_w70_c19 = 4
  lat_lin_w71_c0: x_w71_c0 + y_w71_c0 >= 0.1493
  lat_lin_w71_c1: x_w71_c1 + y_w71_c1 >= 0.5488
  lat_lin_w71_c2: x_w71_c2 + y_w71_c2 >= 0.6803
  lat_lin_w71_c3: x_w71_c3 + y_w71_c3 >= 0.5984
  lat_lin_w71_c4: x_w71_c4 + y_w71_c4 >= 0.3923
  lat_lin_w71_c5: x_w71_c5 + y_w71_c5 >= 0.1233
  lat_lin_w71_c6: x_w71_c6 + y_w71_c6 >= 0.0030
  lat_lin_w71_c7: x_w71_c7 + y_w71_c7 >= 0.3401
  lat_lin_w71_c8: x_w71_c8 + y_w71_c8 >= 0.5617
  lat_lin_w71_c9: x_w71_c9 + y_w71_c9 >= 0.4519
  lat_lin_w71_c10: x_w71_c10 + y_w71_c10 >= 0.0227
  lat_lin_w71_c11: x_w71_c11 + y_w71_c11 >= 0.4303
  lat_lin_w71_c12: x_w71_c12 + y_w71_c12 >= 0.0697
  lat_lin_w71_c13: x_w71_c13 + y_w71_c13 >= 0.3115
  lat_lin_w71_c14: x_w71_c14 + y_w71_c14 >= 0.0095
  lat_lin_w71_c15: x_w71_c15 + y_w71_c15 >= 0.0337
  lat_lin_w71_c16: x_w71_c16 + y_w71_c16 >= 0.5614
  lat_lin_w71_c17: x_w71_c17 + y_w71_c17 >= 0.0590
  lat_lin_w71_c18: x_w71_c18 + y_w71_c18 >= 0.1296
  lat_lin_w71_c19: x_w71_c19 + y_w71_c19 >= 0.5236
  demand_w71: x_w71_c0 + x_w71_c1 + x_w71_c2 + x_w71_c3 + x_w71_c4 + x_w71_c5 + x_w71_c6 + x_w71_c7 + x_w71_c8 + x_w71_c9 + x_w71_c10 + x_w71_c11 + x_w71_c12 + x_w71_c13 + x_w71_c14 + x_w71_c15 + x_w71_c16 + x_w71_c17 + x_w71_c18 + x_w71_c19 = 6
  lat_lin_w72_c0: x_w72_c0 + y_w72_c0 >= 0.4981
  lat_lin_w72_c1: x_w72_c1 + y_w72_c1 >= 0.4430
  lat_lin_w72_c2: x_w72_c2 + y_w72_c2 >= 0.3700
  lat_lin_w72_c3: x_w72_c3 + y_w72_c3 >= 0.5695
  lat_lin_w72_c4: x_w72_c4 + y_w72_c4 >= 0.6694
  lat_lin_w72_c5: x_w72_c5 + y_w72_c5 >= 0.4078
  lat_lin_w72_c6: x_w72_c6 + y_w72_c6 >= 0.9357
  lat_lin_w72_c7: x_w72_c7 + y_w72_c7 >= 0.7348
  lat_lin_w72_c8: x_w72_c8 + y_w72_c8 >= 0.7135
  lat_lin_w72_c9: x_w72_c9 + y_w72_c9 >= 0.4719
  lat_lin_w72_c10: x_w72_c10 + y_w72_c10 >= 0.6184
  lat_lin_w72_c11: x_w72_c11 + y_w72_c11 >= 0.6498
  lat_lin_w72_c12: x_w72_c12 + y_w72_c12 >= 0.5541
  lat_lin_w72_c13: x_w72_c13 + y_w72_c13 >= 1.0143
  lat_lin_w72_c14: x_w72_c14 + y_w72_c14 >= 1.0220
  lat_lin_w72_c15: x_w72_c15 + y_w72_c15 >= 0.0177
  lat_lin_w72_c16: x_w72_c16 + y_w72_c16 >= 0.2177
  lat_lin_w72_c17: x_w72_c17 + y_w72_c17 >= 0.2894
  lat_lin_w72_c18: x_w72_c18 + y_w72_c18 >= 1.0071
  lat_lin_w72_c19: x_w72_c19 + y_w72_c19 >= 0.7959
  demand_w72: x_w72_c0 + x_w72_c1 + x_w72_c2 + x_w72_c3 + x_w72_c4 + x_w72_c5 + x_w72_c6 + x_w72_c7 + x_w72_c8 + x_w72_c9 + x_w72_c10 + x_w72_c11 + x_w72_c12 + x_w72_c13 + x_w72_c14 + x_w72_c15 + x_w72_c16 + x_w72_c17 + x_w72_c18 + x_w72_c19 = 12
  lat_lin_w73_c0: x_w73_c0 + y_w73_c0 >= 0.6774
  lat_lin_w73_c1: x_w73_c1 + y_w73_c1 >= 0.8223
  lat_lin_w73_c2: x_w73_c2 + y_w73_c2 >= 0.4274
  lat_lin_w73_c3: x_w73_c3 + y_w73_c3 >= 0.8569
  lat_lin_w73_c4: x_w73_c4 + y_w73_c4 >= 0.3361
  lat_lin_w73_c5: x_w73_c5 + y_w73_c5 >= 0.3456
  lat_lin_w73_c6: x_w73_c6 + y_w73_c6 >= 0.4308
  lat_lin_w73_c7: x_w73_c7 + y_w73_c7 >= 0.2456
  lat_lin_w73_c8: x_w73_c8 + y_w73_c8 >= 0.3686
  lat_lin_w73_c9: x_w73_c9 + y_w73_c9 >= 0.5214
  lat_lin_w73_c10: x_w73_c10 + y_w73_c10 >= 0.5112
  lat_lin_w73_c11: x_w73_c11 + y_w73_c11 >= 0.2670
  lat_lin_w73_c12: x_w73_c12 + y_w73_c12 >= 0.8132
  lat_lin_w73_c13: x_w73_c13 + y_w73_c13 >= 0.5549
  lat_lin_w73_c14: x_w73_c14 + y_w73_c14 >= 0.3809
  lat_lin_w73_c15: x_w73_c15 + y_w73_c15 >= 0.8276
  lat_lin_w73_c16: x_w73_c16 + y_w73_c16 >= 0.8875
  lat_lin_w73_c17: x_w73_c17 + y_w73_c17 >= 0.6444
  lat_lin_w73_c18: x_w73_c18 + y_w73_c18 >= 1.0697
  lat_lin_w73_c19: x_w73_c19 + y_w73_c19 >= 1.0112
  demand_w73: x_w73_c0 + x_w73_c1 + x_w73_c2 + x_w73_c3 + x_w73_c4 + x_w73_c5 + x_w73_c6 + x_w73_c7 + x_w73_c8 + x_w73_c9 + x_w73_c10 + x_w73_c11 + x_w73_c12 + x_w73_c13 + x_w73_c14 + x_w73_c15 + x_w73_c16 + x_w73_c17 + x_w73_c18 + x_w73_c19 = 12
  lat_lin_w74_c0: x_w74_c0 + y_w74_c0 >= 1.5144
  lat_lin_w74_c1: x_w74_c1 + y_w74_c1 >= 0.3377
  lat_lin_w74_c2: x_w74_c2 + y_w74_c2 >= 0.9484
  lat_lin_w74_c3: x_w74_c3 + y_w74_c3 >= 0.1212
  lat_lin_w74_c4: x_w74_c4 + y_w74_c4 >= 0.0976
  lat_lin_w74_c5: x_w74_c5 + y_w74_c5 >= 0.4610
  lat_lin_w74_c6: x_w74_c6 + y_w74_c6 >= 0.3450
  lat_lin_w74_c7: x_w74_c7 + y_w74_c7 >= 0.2650
  lat_lin_w74_c8: x_w74_c8 + y_w74_c8 >= 1.4760
  lat_lin_w74_c9: x_w74_c9 + y_w74_c9 >= 1.1553
  lat_lin_w74_c10: x_w74_c10 + y_w74_c10 >= 0.9645
  lat_lin_w74_c11: x_w74_c11 + y_w74_c11 >= 0.9918
  lat_lin_w74_c12: x_w74_c12 + y_w74_c12 >= 0.3142
  lat_lin_w74_c13: x_w74_c13 + y_w74_c13 >= 1.1414
  lat_lin_w74_c14: x_w74_c14 + y_w74_c14 >= 0.2982
  lat_lin_w74_c15: x_w74_c15 + y_w74_c15 >= 0.2054
  lat_lin_w74_c16: x_w74_c16 + y_w74_c16 >= 1.0966
  lat_lin_w74_c17: x_w74_c17 + y_w74_c17 >= 0.7437
  lat_lin_w74_c18: x_w74_c18 + y_w74_c18 >= 1.2645
  lat_lin_w74_c19: x_w74_c19 + y_w74_c19 >= 1.2582
  demand_w74: x_w74_c0 + x_w74_c1 + x_w74_c2 + x_w74_c3 + x_w74_c4 + x_w74_c5 + x_w74_c6 + x_w74_c7 + x_w74_c8 + x_w74_c9 + x_w74_c10 + x_w74_c11 + x_w74_c12 + x_w74_c13 + x_w74_c14 + x_w74_c15 + x_w74_c16 + x_w74_c17 + x_w74_c18 + x_w74_c19 = 15
  lat_lin_w75_c0: x_w75_c0 + y_w75_c0 >= 0.6586
  lat_lin_w75_c1: x_w75_c1 + y_w75_c1 >= 0.6138
  lat_lin_w75_c2: x_w75_c2 + y_w75_c2 >= 0.6840
  lat_lin_w75_c3: x_w75_c3 + y_w75_c3 >= 0.3730
  lat_lin_w75_c4: x_w75_c4 + y_w75_c4 >= 0.6998
  lat_lin_w75_c5: x_w75_c5 + y_w75_c5 >= 0.3359
  lat_lin_w75_c6: x_w75_c6 + y_w75_c6 >= 0.0751
  lat_lin_w75_c7: x_w75_c7 + y_w75_c7 >= 0.1538
  lat_lin_w75_c8: x_w75_c8 + y_w75_c8 >= 0.1957
  lat_lin_w75_c9: x_w75_c9 + y_w75_c9 >= 0.5885
  lat_lin_w75_c10: x_w75_c10 + y_w75_c10 >= 0.5670
  lat_lin_w75_c11: x_w75_c11 + y_w75_c11 >= 0.4719
  lat_lin_w75_c12: x_w75_c12 + y_w75_c12 >= 0.5812
  lat_lin_w75_c13: x_w75_c13 + y_w75_c13 >= 0.2327
  lat_lin_w75_c14: x_w75_c14 + y_w75_c14 >= 0.2506
  lat_lin_w75_c15: x_w75_c15 + y_w75_c15 >= 0.6678
  lat_lin_w75_c16: x_w75_c16 + y_w75_c16 >= 0.6811
  lat_lin_w75_c17: x_w75_c17 + y_w75_c17 >= 0.1586
  lat_lin_w75_c18: x_w75_c18 + y_w75_c18 >= 0.3745
  lat_lin_w75_c19: x_w75_c19 + y_w75_c19 >= 0.6365
  demand_w75: x_w75_c0 + x_w75_c1 + x_w75_c2 + x_w75_c3 + x_w75_c4 + x_w75_c5 + x_w75_c6 + x_w75_c7 + x_w75_c8 + x_w75_c9 + x_w75_c10 + x_w75_c11 + x_w75_c12 + x_w75_c13 + x_w75_c14 + x_w75_c15 + x_w75_c16 + x_w75_c17 + x_w75_c18 + x_w75_c19 = 9
  lat_lin_w76_c0: x_w76_c0 + y_w76_c0 >= 0.3141
  lat_lin_w76_c1: x_w76_c1 + y_w76_c1 >= 0.1660
  lat_lin_w76_c2: x_w76_c2 + y_w76_c2 >= 0.7313
  lat_lin_w76_c3: x_w76_c3 + y_w76_c3 >= 0.0671
  lat_lin_w76_c4: x_w76_c4 + y_w76_c4 >= 0.1346
  lat_lin_w76_c5: x_w76_c5 + y_w76_c5 >= 0.1688
  lat_lin_w76_c6: x_w76_c6 + y_w76_c6 >= 0.1129
  lat_lin_w76_c7: x_w76_c7 + y_w76_c7 >= 0.4994
  lat_lin_w76_c8: x_w76_c8 + y_w76_c8 >= 0.5478
  lat_lin_w76_c9: x_w76_c9 + y_w76_c9 >= 0.1967
  lat_lin_w76_c10: x_w76_c10 + y_w76_c10 >= 0.4702
  lat_lin_w76_c11: x_w76_c11 + y_w76_c11 >= 0.5170
  lat_lin_w76_c12: x_w76_c12 + y_w76_c12 >= 0.2384
  lat_lin_w76_c13: x_w76_c13 + y_w76_c13 >= 0.6743
  lat_lin_w76_c14: x_w76_c14 + y_w76_c14 >= 0.1091
  lat_lin_w76_c15: x_w76_c15 + y_w76_c15 >= 0.3236
  lat_lin_w76_c16: x_w76_c16 + y_w76_c16 >= 0.1510
  lat_lin_w76_c17: x_w76_c17 + y_w76_c17 >= 0.1728
  lat_lin_w76_c18: x_w76_c18 + y_w76_c18 >= 0.7000
  lat_lin_w76_c19: x_w76_c19 + y_w76_c19 >= 0.7049
  demand_w76: x_w76_c0 + x_w76_c1 + x_w76_c2 + x_w76_c3 + x_w76_c4 + x_w76_c5 + x_w76_c6 + x_w76_c7 + x_w76_c8 + x_w76_c9 + x_w76_c10 + x_w76_c11 + x_w76_c12 + x_w76_c13 + x_w76_c14 + x_w76_c15 + x_w76_c16 + x_w76_c17 + x_w76_c18 + x_w76_c19 = 7
  lat_lin_w77_c0: x_w77_c0 + y_w77_c0 >= 0.5354
  lat_lin_w77_c1: x_w77_c1 + y_w77_c1 >= 0.6473
  lat_lin_w77_c2: x_w77_c2 + y_w77_c2 >= 0.4023
  lat_lin_w77_c3: x_w77_c3 + y_w77_c3 >= 0.2426
  lat_lin_w77_c4: x_w77_c4 + y_w77_c4 >= 0.1462
  lat_lin_w77_c5: x_w77_c5 + y_w77_c5 >= 0.1873
  lat_lin_w77_c6: x_w77_c6 + y_w77_c6 >= 0.0662
  lat_lin_w77_c7: x_w77_c7 + y_w77_c7 >= 0.0629
  lat_lin_w77_c8: x_w77_c8 + y_w77_c8 >= 0.0925
  lat_lin_w77_c9: x_w77_c9 + y_w77_c9 >= 0.2224
  lat_lin_w77_c10: x_w77_c10 + y_w77_c10 >= 0.3274
  lat_lin_w77_c11: x_w77_c11 + y_w77_c11 >= 0.5989
  lat_lin_w77_c12: x_w77_c12 + y_w77_c12 >= 0.1661
  lat_lin_w77_c13: x_w77_c13 + y_w77_c13 >= 0.3756
  lat_lin_w77_c14: x_w77_c14 + y_w77_c14 >= 0.2315
  lat_lin_w77_c15: x_w77_c15 + y_w77_c15 >= 0.1459
  lat_lin_w77_c16: x_w77_c16 + y_w77_c16 >= 0.3576
  lat_lin_w77_c17: x_w77_c17 + y_w77_c17 >= 0.7137
  lat_lin_w77_c18: x_w77_c18 + y_w77_c18 >= 0.1581
  lat_lin_w77_c19: x_w77_c19 + y_w77_c19 >= 0.3201
  demand_w77: x_w77_c0 + x_w77_c1 + x_w77_c2 + x_w77_c3 + x_w77_c4 + x_w77_c5 + x_w77_c6 + x_w77_c7 + x_w77_c8 + x_w77_c9 + x_w77_c10 + x_w77_c11 + x_w77_c12 + x_w77_c13 + x_w77_c14 + x_w77_c15 + x_w77_c16 + x_w77_c17 + x_w77_c18 + x_w77_c19 = 6
  lat_lin_w78_c0: x_w78_c0 + y_w78_c0 >= 0.5213
  lat_lin_w78_c1: x_w78_c1 + y_w78_c1 >= 1.2416
  lat_lin_w78_c2: x_w78_c2 + y_w78_c2 >= 0.9541
  lat_lin_w78_c3: x_w78_c3 + y_w78_c3 >= 0.1433
  lat_lin_w78_c4: x_w78_c4 + y_w78_c4 >= 0.7775
  lat_lin_w78_c5: x_w78_c5 + y_w78_c5 >= 0.5297
  lat_lin_w78_c6: x_w78_c6 + y_w78_c6 >= 0.1270
  lat_lin_w78_c7: x_w78_c7 + y_w78_c7 >= 0.7699
  lat_lin_w78_c8: x_w78_c8 + y_w78_c8 >= 0.8498
  lat_lin_w78_c9: x_w78_c9 + y_w78_c9 >= 0.2855
  lat_lin_w78_c10: x_w78_c10 + y_w78_c10 >= 0.1678
  lat_lin_w78_c11: x_w78_c11 + y_w78_c11 >= 1.2035
  lat_lin_w78_c12: x_w78_c12 + y_w78_c12 >= 0.9509
  lat_lin_w78_c13: x_w78_c13 + y_w78_c13 >= 0.0494
  lat_lin_w78_c14: x_w78_c14 + y_w78_c14 >= 0.3903
  lat_lin_w78_c15: x_w78_c15 + y_w78_c15 >= 0.2966
  lat_lin_w78_c16: x_w78_c16 + y_w78_c16 >= 0.5435
  lat_lin_w78_c17: x_w78_c17 + y_w78_c17 >= 0.9033
  lat_lin_w78_c18: x_w78_c18 + y_w78_c18 >= 1.1540
  lat_lin_w78_c19: x_w78_c19 + y_w78_c19 >= 0.1410
  demand_w78: x_w78_c0 + x_w78_c1 + x_w78_c2 + x_w78_c3 + x_w78_c4 + x_w78_c5 + x_w78_c6 + x_w78_c7 + x_w78_c8 + x_w78_c9 + x_w78_c10 + x_w78_c11 + x_w78_c12 + x_w78_c13 + x_w78_c14 + x_w78_c15 + x_w78_c16 + x_w78_c17 + x_w78_c18 + x_w78_c19 = 12
  lat_lin_w79_c0: x_w79_c0 + y_w79_c0 >= 0.6813
  lat_lin_w79_c1: x_w79_c1 + y_w79_c1 >= 0.0799
  lat_lin_w79_c2: x_w79_c2 + y_w79_c2 >= 1.1779
  lat_lin_w79_c3: x_w79_c3 + y_w79_c3 >= 0.0423
  lat_lin_w79_c4: x_w79_c4 + y_w79_c4 >= 0.9882
  lat_lin_w79_c5: x_w79_c5 + y_w79_c5 >= 1.0193
  lat_lin_w79_c6: x_w79_c6 + y_w79_c6 >= 0.6901
  lat_lin_w79_c7: x_w79_c7 + y_w79_c7 >= 0.4933
  lat_lin_w79_c8: x_w79_c8 + y_w79_c8 >= 0.4598
  lat_lin_w79_c9: x_w79_c9 + y_w79_c9 >= 0.3865
  lat_lin_w79_c10: x_w79_c10 + y_w79_c10 >= 1.1170
  lat_lin_w79_c11: x_w79_c11 + y_w79_c11 >= 1.3921
  lat_lin_w79_c12: x_w79_c12 + y_w79_c12 >= 0.6206
  lat_lin_w79_c13: x_w79_c13 + y_w79_c13 >= 0.3622
  lat_lin_w79_c14: x_w79_c14 + y_w79_c14 >= 0.3557
  lat_lin_w79_c15: x_w79_c15 + y_w79_c15 >= 0.1869
  lat_lin_w79_c16: x_w79_c16 + y_w79_c16 >= 1.0263
  lat_lin_w79_c17: x_w79_c17 + y_w79_c17 >= 1.0165
  lat_lin_w79_c18: x_w79_c18 + y_w79_c18 >= 0.8913
  lat_lin_w79_c19: x_w79_c19 + y_w79_c19 >= 1.0128
  demand_w79: x_w79_c0 + x_w79_c1 + x_w79_c2 + x_w79_c3 + x_w79_c4 + x_w79_c5 + x_w79_c6 + x_w79_c7 + x_w79_c8 + x_w79_c9 + x_w79_c10 + x_w79_c11 + x_w79_c12 + x_w79_c13 + x_w79_c14 + x_w79_c15 + x_w79_c16 + x_w79_c17 + x_w79_c18 + x_w79_c19 = 14
  lat_lin_w80_c0: x_w80_c0 + y_w80_c0 >= 0.9731
  lat_lin_w80_c1: x_w80_c1 + y_w80_c1 >= 0.7900
  lat_lin_w80_c2: x_w80_c2 + y_w80_c2 >= 0.9871
  lat_lin_w80_c3: x_w80_c3 + y_w80_c3 >= 0.6678
  lat_lin_w80_c4: x_w80_c4 + y_w80_c4 >= 0.8549
  lat_lin_w80_c5: x_w80_c5 + y_w80_c5 >= 1.1188
  lat_lin_w80_c6: x_w80_c6 + y_w80_c6 >= 0.7337
  lat_lin_w80_c7: x_w80_c7 + y_w80_c7 >= 1.0201
  lat_lin_w80_c8: x_w80_c8 + y_w80_c8 >= 0.3742
  lat_lin_w80_c9: x_w80_c9 + y_w80_c9 >= 0.2261
  lat_lin_w80_c10: x_w80_c10 + y_w80_c10 >= 0.8036
  lat_lin_w80_c11: x_w80_c11 + y_w80_c11 >= 0.6275
  lat_lin_w80_c12: x_w80_c12 + y_w80_c12 >= 0.5892
  lat_lin_w80_c13: x_w80_c13 + y_w80_c13 >= 0.5777
  lat_lin_w80_c14: x_w80_c14 + y_w80_c14 >= 0.1095
  lat_lin_w80_c15: x_w80_c15 + y_w80_c15 >= 0.4253
  lat_lin_w80_c16: x_w80_c16 + y_w80_c16 >= 0.4213
  lat_lin_w80_c17: x_w80_c17 + y_w80_c17 >= 1.0804
  lat_lin_w80_c18: x_w80_c18 + y_w80_c18 >= 1.0625
  lat_lin_w80_c19: x_w80_c19 + y_w80_c19 >= 0.5574
  demand_w80: x_w80_c0 + x_w80_c1 + x_w80_c2 + x_w80_c3 + x_w80_c4 + x_w80_c5 + x_w80_c6 + x_w80_c7 + x_w80_c8 + x_w80_c9 + x_w80_c10 + x_w80_c11 + x_w80_c12 + x_w80_c13 + x_w80_c14 + x_w80_c15 + x_w80_c16 + x_w80_c17 + x_w80_c18 + x_w80_c19 = 14
  lat_lin_w81_c0: x_w81_c0 + y_w81_c0 >= 0.0459
  lat_lin_w81_c1: x_w81_c1 + y_w81_c1 >= 1.0882
  lat_lin_w81_c2: x_w81_c2 + y_w81_c2 >= 1.0563
  lat_lin_w81_c3: x_w81_c3 + y_w81_c3 >= 1.1084
  lat_lin_w81_c4: x_w81_c4 + y_w81_c4 >= 0.7432
  lat_lin_w81_c5: x_w81_c5 + y_w81_c5 >= 0.0153
  lat_lin_w81_c6: x_w81_c6 + y_w81_c6 >= 0.7503
  lat_lin_w81_c7: x_w81_c7 + y_w81_c7 >= 1.0075
  lat_lin_w81_c8: x_w81_c8 + y_w81_c8 >= 0.6726
  lat_lin_w81_c9: x_w81_c9 + y_w81_c9 >= 0.7667
  lat_lin_w81_c10: x_w81_c10 + y_w81_c10 >= 0.7709
  lat_lin_w81_c11: x_w81_c11 + y_w81_c11 >= 0.5822
  lat_lin_w81_c12: x_w81_c12 + y_w81_c12 >= 0.7989
  lat_lin_w81_c13: x_w81_c13 + y_w81_c13 >= 0.4607
  lat_lin_w81_c14: x_w81_c14 + y_w81_c14 >= 0.6720
  lat_lin_w81_c15: x_w81_c15 + y_w81_c15 >= 0.7254
  lat_lin_w81_c16: x_w81_c16 + y_w81_c16 >= 0.6108
  lat_lin_w81_c17: x_w81_c17 + y_w81_c17 >= 0.5485
  lat_lin_w81_c18: x_w81_c18 + y_w81_c18 >= 0.5054
  lat_lin_w81_c19: x_w81_c19 + y_w81_c19 >= 0.0707
  demand_w81: x_w81_c0 + x_w81_c1 + x_w81_c2 + x_w81_c3 + x_w81_c4 + x_w81_c5 + x_w81_c6 + x_w81_c7 + x_w81_c8 + x_w81_c9 + x_w81_c10 + x_w81_c11 + x_w81_c12 + x_w81_c13 + x_w81_c14 + x_w81_c15 + x_w81_c16 + x_w81_c17 + x_w81_c18 + x_w81_c19 = 13
  lat_lin_w82_c0: x_w82_c0 + y_w82_c0 >= 0.3032
  lat_lin_w82_c1: x_w82_c1 + y_w82_c1 >= 0.1735
  lat_lin_w82_c2: x_w82_c2 + y_w82_c2 >= 0.3951
  lat_lin_w82_c3: x_w82_c3 + y_w82_c3 >= 0.5091
  lat_lin_w82_c4: x_w82_c4 + y_w82_c4 >= 0.0956
  lat_lin_w82_c5: x_w82_c5 + y_w82_c5 >= 0.3588
  lat_lin_w82_c6: x_w82_c6 + y_w82_c6 >= 0.5472
  lat_lin_w82_c7: x_w82_c7 + y_w82_c7 >= 0.1857
  lat_lin_w82_c8: x_w82_c8 + y_w82_c8 >= 0.2508
  lat_lin_w82_c9: x_w82_c9 + y_w82_c9 >= 0.2219
  lat_lin_w82_c10: x_w82_c10 + y_w82_c10 >= 0.6070
  lat_lin_w82_c11: x_w82_c11 + y_w82_c11 >= 0.3419
  lat_lin_w82_c12: x_w82_c12 + y_w82_c12 >= 0.5845
  lat_lin_w82_c13: x_w82_c13 + y_w82_c13 >= 0.5573
  lat_lin_w82_c14: x_w82_c14 + y_w82_c14 >= 0.5223
  lat_lin_w82_c15: x_w82_c15 + y_w82_c15 >= 0.4527
  lat_lin_w82_c16: x_w82_c16 + y_w82_c16 >= 0.2101
  lat_lin_w82_c17: x_w82_c17 + y_w82_c17 >= 0.5818
  lat_lin_w82_c18: x_w82_c18 + y_w82_c18 >= 0.0401
  lat_lin_w82_c19: x_w82_c19 + y_w82_c19 >= 0.0616
  demand_w82: x_w82_c0 + x_w82_c1 + x_w82_c2 + x_w82_c3 + x_w82_c4 + x_w82_c5 + x_w82_c6 + x_w82_c7 + x_w82_c8 + x_w82_c9 + x_w82_c10 + x_w82_c11 + x_w82_c12 + x_w82_c13 + x_w82_c14 + x_w82_c15 + x_w82_c16 + x_w82_c17 + x_w82_c18 + x_w82_c19 = 7
  lat_lin_w83_c0: x_w83_c0 + y_w83_c0 >= 1.0530
  lat_lin_w83_c1: x_w83_c1 + y_w83_c1 >= 0.9394
  lat_lin_w83_c2: x_w83_c2 + y_w83_c2 >= 0.8814
  lat_lin_w83_c3: x_w83_c3 + y_w83_c3 >= 0.4788
  lat_lin_w83_c4: x_w83_c4 + y_w83_c4 >= 0.4329
  lat_lin_w83_c5: x_w83_c5 + y_w83_c5 >= 0.5546
  lat_lin_w83_c6: x_w83_c6 + y_w83_c6 >= 0.5356
  lat_lin_w83_c7: x_w83_c7 + y_w83_c7 >= 0.8173
  lat_lin_w83_c8: x_w83_c8 + y_w83_c8 >= 1.0146
  lat_lin_w83_c9: x_w83_c9 + y_w83_c9 >= 0.2909
  lat_lin_w83_c10: x_w83_c10 + y_w83_c10 >= 1.1018
  lat_lin_w83_c11: x_w83_c11 + y_w83_c11 >= 0.6456
  lat_lin_w83_c12: x_w83_c12 + y_w83_c12 >= 0.6754
  lat_lin_w83_c13: x_w83_c13 + y_w83_c13 >= 0.3053
  lat_lin_w83_c14: x_w83_c14 + y_w83_c14 >= 0.1394
  lat_lin_w83_c15: x_w83_c15 + y_w83_c15 >= 0.7674
  lat_lin_w83_c16: x_w83_c16 + y_w83_c16 >= 0.8767
  lat_lin_w83_c17: x_w83_c17 + y_w83_c17 >= 0.3765
  lat_lin_w83_c18: x_w83_c18 + y_w83_c18 >= 0.4338
  lat_lin_w83_c19: x_w83_c19 + y_w83_c19 >= 0.6795
  demand_w83: x_w83_c0 + x_w83_c1 + x_w83_c2 + x_w83_c3 + x_w83_c4 + x_w83_c5 + x_w83_c6 + x_w83_c7 + x_w83_c8 + x_w83_c9 + x_w83_c10 + x_w83_c11 + x_w83_c12 + x_w83_c13 + x_w83_c14 + x_w83_c15 + x_w83_c16 + x_w83_c17 + x_w83_c18 + x_w83_c19 = 13
  lat_lin_w84_c0: x_w84_c0 + y_w84_c0 >= 0.3451
  lat_lin_w84_c1: x_w84_c1 + y_w84_c1 >= 0.2203
  lat_lin_w84_c2: x_w84_c2 + y_w84_c2 >= 0.4321
  lat_lin_w84_c3: x_w84_c3 + y_w84_c3 >= 1.1398
  lat_lin_w84_c4: x_w84_c4 + y_w84_c4 >= 0.3461
  lat_lin_w84_c5: x_w84_c5 + y_w84_c5 >= 0.4713
  lat_lin_w84_c6: x_w84_c6 + y_w84_c6 >= 0.7421
  lat_lin_w84_c7: x_w84_c7 + y_w84_c7 >= 0.0155
  lat_lin_w84_c8: x_w84_c8 + y_w84_c8 >= 0.3818
  lat_lin_w84_c9: x_w84_c9 + y_w84_c9 >= 1.0397
  lat_lin_w84_c10: x_w84_c10 + y_w84_c10 >= 0.0101
  lat_lin_w84_c11: x_w84_c11 + y_w84_c11 >= 0.5808
  lat_lin_w84_c12: x_w84_c12 + y_w84_c12 >= 0.5552
  lat_lin_w84_c13: x_w84_c13 + y_w84_c13 >= 0.0033
  lat_lin_w84_c14: x_w84_c14 + y_w84_c14 >= 0.0931
  lat_lin_w84_c15: x_w84_c15 + y_w84_c15 >= 0.2534
  lat_lin_w84_c16: x_w84_c16 + y_w84_c16 >= 0.6948
  lat_lin_w84_c17: x_w84_c17 + y_w84_c17 >= 0.6160
  lat_lin_w84_c18: x_w84_c18 + y_w84_c18 >= 0.0450
  lat_lin_w84_c19: x_w84_c19 + y_w84_c19 >= 1.0146
  demand_w84: x_w84_c0 + x_w84_c1 + x_w84_c2 + x_w84_c3 + x_w84_c4 + x_w84_c5 + x_w84_c6 + x_w84_c7 + x_w84_c8 + x_w84_c9 + x_w84_c10 + x_w84_c11 + x_w84_c12 + x_w84_c13 + x_w84_c14 + x_w84_c15 + x_w84_c16 + x_w84_c17 + x_w84_c18 + x_w84_c19 = 9
  lat_lin_w85_c0: x_w85_c0 + y_w85_c0 >= 0.3961
  lat_lin_w85_c1: x_w85_c1 + y_w85_c1 >= 0.0672
  lat_lin_w85_c2: x_w85_c2 + y_w85_c2 >= 0.1803
  lat_lin_w85_c3: x_w85_c3 + y_w85_c3 >= 0.7548
  lat_lin_w85_c4: x_w85_c4 + y_w85_c4 >= 0.1122
  lat_lin_w85_c5: x_w85_c5 + y_w85_c5 >= 0.0197
  lat_lin_w85_c6: x_w85_c6 + y_w85_c6 >= 0.4699
  lat_lin_w85_c7: x_w85_c7 + y_w85_c7 >= 0.0833
  lat_lin_w85_c8: x_w85_c8 + y_w85_c8 >= 0.3619
  lat_lin_w85_c9: x_w85_c9 + y_w85_c9 >= 0.6647
  lat_lin_w85_c10: x_w85_c10 + y_w85_c10 >= 0.0713
  lat_lin_w85_c11: x_w85_c11 + y_w85_c11 >= 0.1689
  lat_lin_w85_c12: x_w85_c12 + y_w85_c12 >= 0.1104
  lat_lin_w85_c13: x_w85_c13 + y_w85_c13 >= 0.7528
  lat_lin_w85_c14: x_w85_c14 + y_w85_c14 >= 0.0526
  lat_lin_w85_c15: x_w85_c15 + y_w85_c15 >= 0.0796
  lat_lin_w85_c16: x_w85_c16 + y_w85_c16 >= 0.5063
  lat_lin_w85_c17: x_w85_c17 + y_w85_c17 >= 0.4499
  lat_lin_w85_c18: x_w85_c18 + y_w85_c18 >= 0.4099
  lat_lin_w85_c19: x_w85_c19 + y_w85_c19 >= 0.2881
  demand_w85: x_w85_c0 + x_w85_c1 + x_w85_c2 + x_w85_c3 + x_w85_c4 + x_w85_c5 + x_w85_c6 + x_w85_c7 + x_w85_c8 + x_w85_c9 + x_w85_c10 + x_w85_c11 + x_w85_c12 + x_w85_c13 + x_w85_c14 + x_w85_c15 + x_w85_c16 + x_w85_c17 + x_w85_c18 + x_w85_c19 = 6
  lat_lin_w86_c0: x_w86_c0 + y_w86_c0 >= 0.5957
  lat_lin_w86_c1: x_w86_c1 + y_w86_c1 >= 0.8483
  lat_lin_w86_c2: x_w86_c2 + y_w86_c2 >= 0.0631
  lat_lin_w86_c3: x_w86_c3 + y_w86_c3 >= 0.5073
  lat_lin_w86_c4: x_w86_c4 + y_w86_c4 >= 0.0609
  lat_lin_w86_c5: x_w86_c5 + y_w86_c5 >= 0.5985
  lat_lin_w86_c6: x_w86_c6 + y_w86_c6 >= 1.1000
  lat_lin_w86_c7: x_w86_c7 + y_w86_c7 >= 1.0066
  lat_lin_w86_c8: x_w86_c8 + y_w86_c8 >= 0.9276
  lat_lin_w86_c9: x_w86_c9 + y_w86_c9 >= 0.4151
  lat_lin_w86_c10: x_w86_c10 + y_w86_c10 >= 0.6602
  lat_lin_w86_c11: x_w86_c11 + y_w86_c11 >= 1.1120
  lat_lin_w86_c12: x_w86_c12 + y_w86_c12 >= 0.0671
  lat_lin_w86_c13: x_w86_c13 + y_w86_c13 >= 0.8342
  lat_lin_w86_c14: x_w86_c14 + y_w86_c14 >= 0.6449
  lat_lin_w86_c15: x_w86_c15 + y_w86_c15 >= 0.4696
  lat_lin_w86_c16: x_w86_c16 + y_w86_c16 >= 0.3432
  lat_lin_w86_c17: x_w86_c17 + y_w86_c17 >= 0.5809
  lat_lin_w86_c18: x_w86_c18 + y_w86_c18 >= 0.8092
  lat_lin_w86_c19: x_w86_c19 + y_w86_c19 >= 0.3557
  demand_w86: x_w86_c0 + x_w86_c1 + x_w86_c2 + x_w86_c3 + x_w86_c4 + x_w86_c5 + x_w86_c6 + x_w86_c7 + x_w86_c8 + x_w86_c9 + x_w86_c10 + x_w86_c11 + x_w86_c12 + x_w86_c13 + x_w86_c14 + x_w86_c15 + x_w86_c16 + x_w86_c17 + x_w86_c18 + x_w86_c19 = 12
  lat_lin_w87_c0: x_w87_c0 + y_w87_c0 >= 0.3884
  lat_lin_w87_c1: x_w87_c1 + y_w87_c1 >= 0.2748
  lat_lin_w87_c2: x_w87_c2 + y_w87_c2 >= 0.7741
  lat_lin_w87_c3: x_w87_c3 + y_w87_c3 >= 0.8756
  lat_lin_w87_c4: x_w87_c4 + y_w87_c4 >= 0.0577
  lat_lin_w87_c5: x_w87_c5 + y_w87_c5 >= 1.1306
  lat_lin_w87_c6: x_w87_c6 + y_w87_c6 >= 0.4063
  lat_lin_w87_c7: x_w87_c7 + y_w87_c7 >= 0.3990
  lat_lin_w87_c8: x_w87_c8 + y_w87_c8 >= 0.9852
  lat_lin_w87_c9: x_w87_c9 + y_w87_c9 >= 1.1803
  lat_lin_w87_c10: x_w87_c10 + y_w87_c10 >= 0.3001
  lat_lin_w87_c11: x_w87_c11 + y_w87_c11 >= 0.7207
  lat_lin_w87_c12: x_w87_c12 + y_w87_c12 >= 0.1394
  lat_lin_w87_c13: x_w87_c13 + y_w87_c13 >= 0.2986
  lat_lin_w87_c14: x_w87_c14 + y_w87_c14 >= 0.0038
  lat_lin_w87_c15: x_w87_c15 + y_w87_c15 >= 1.1758
  lat_lin_w87_c16: x_w87_c16 + y_w87_c16 >= 0.4152
  lat_lin_w87_c17: x_w87_c17 + y_w87_c17 >= 0.9855
  lat_lin_w87_c18: x_w87_c18 + y_w87_c18 >= 0.5845
  lat_lin_w87_c19: x_w87_c19 + y_w87_c19 >= 0.9045
  demand_w87: x_w87_c0 + x_w87_c1 + x_w87_c2 + x_w87_c3 + x_w87_c4 + x_w87_c5 + x_w87_c6 + x_w87_c7 + x_w87_c8 + x_w87_c9 + x_w87_c10 + x_w87_c11 + x_w87_c12 + x_w87_c13 + x_w87_c14 + x_w87_c15 + x_w87_c16 + x_w87_c17 + x_w87_c18 + x_w87_c19 = 12
  lat_lin_w88_c0: x_w88_c0 + y_w88_c0 >= 0.9246
  lat_lin_w88_c1: x_w88_c1 + y_w88_c1 >= 0.1228
  lat_lin_w88_c2: x_w88_c2 + y_w88_c2 >= 0.0012
  lat_lin_w88_c3: x_w88_c3 + y_w88_c3 >= 0.3685
  lat_lin_w88_c4: x_w88_c4 + y_w88_c4 >= 0.0159
  lat_lin_w88_c5: x_w88_c5 + y_w88_c5 >= 1.0586
  lat_lin_w88_c6: x_w88_c6 + y_w88_c6 >= 0.7387
  lat_lin_w88_c7: x_w88_c7 + y_w88_c7 >= 0.2461
  lat_lin_w88_c8: x_w88_c8 + y_w88_c8 >= 1.0209
  lat_lin_w88_c9: x_w88_c9 + y_w88_c9 >= 0.9922
  lat_lin_w88_c10: x_w88_c10 + y_w88_c10 >= 0.6466
  lat_lin_w88_c11: x_w88_c11 + y_w88_c11 >= 1.3771
  lat_lin_w88_c12: x_w88_c12 + y_w88_c12 >= 1.6461
  lat_lin_w88_c13: x_w88_c13 + y_w88_c13 >= 1.3059
  lat_lin_w88_c14: x_w88_c14 + y_w88_c14 >= 1.1283
  lat_lin_w88_c15: x_w88_c15 + y_w88_c15 >= 0.5986
  lat_lin_w88_c16: x_w88_c16 + y_w88_c16 >= 0.0099
  lat_lin_w88_c17: x_w88_c17 + y_w88_c17 >= 0.9035
  lat_lin_w88_c18: x_w88_c18 + y_w88_c18 >= 0.2725
  lat_lin_w88_c19: x_w88_c19 + y_w88_c19 >= 0.6219
  demand_w88: x_w88_c0 + x_w88_c1 + x_w88_c2 + x_w88_c3 + x_w88_c4 + x_w88_c5 + x_w88_c6 + x_w88_c7 + x_w88_c8 + x_w88_c9 + x_w88_c10 + x_w88_c11 + x_w88_c12 + x_w88_c13 + x_w88_c14 + x_w88_c15 + x_w88_c16 + x_w88_c17 + x_w88_c18 + x_w88_c19 = 14
  lat_lin_w89_c0: x_w89_c0 + y_w89_c0 >= 0.0167
  lat_lin_w89_c1: x_w89_c1 + y_w89_c1 >= 0.2597
  lat_lin_w89_c2: x_w89_c2 + y_w89_c2 >= 0.5094
  lat_lin_w89_c3: x_w89_c3 + y_w89_c3 >= 0.3844
  lat_lin_w89_c4: x_w89_c4 + y_w89_c4 >= 0.7233
  lat_lin_w89_c5: x_w89_c5 + y_w89_c5 >= 0.9746
  lat_lin_w89_c6: x_w89_c6 + y_w89_c6 >= 0.8608
  lat_lin_w89_c7: x_w89_c7 + y_w89_c7 >= 0.6679
  lat_lin_w89_c8: x_w89_c8 + y_w89_c8 >= 0.6182
  lat_lin_w89_c9: x_w89_c9 + y_w89_c9 >= 0.8259
  lat_lin_w89_c10: x_w89_c10 + y_w89_c10 >= 0.2618
  lat_lin_w89_c11: x_w89_c11 + y_w89_c11 >= 0.8147
  lat_lin_w89_c12: x_w89_c12 + y_w89_c12 >= 0.7574
  lat_lin_w89_c13: x_w89_c13 + y_w89_c13 >= 0.6500
  lat_lin_w89_c14: x_w89_c14 + y_w89_c14 >= 0.7457
  lat_lin_w89_c15: x_w89_c15 + y_w89_c15 >= 0.7649
  lat_lin_w89_c16: x_w89_c16 + y_w89_c16 >= 0.7013
  lat_lin_w89_c17: x_w89_c17 + y_w89_c17 >= 0.3120
  lat_lin_w89_c18: x_w89_c18 + y_w89_c18 >= 0.2613
  lat_lin_w89_c19: x_w89_c19 + y_w89_c19 >= 0.8900
  demand_w89: x_w89_c0 + x_w89_c1 + x_w89_c2 + x_w89_c3 + x_w89_c4 + x_w89_c5 + x_w89_c6 + x_w89_c7 + x_w89_c8 + x_w89_c9 + x_w89_c10 + x_w89_c11 + x_w89_c12 + x_w89_c13 + x_w89_c14 + x_w89_c15 + x_w89_c16 + x_w89_c17 + x_w89_c18 + x_w89_c19 = 12
  lat_lin_w90_c0: x_w90_c0 + y_w90_c0 >= 0.7189
  lat_lin_w90_c1: x_w90_c1 + y_w90_c1 >= 1.0856
  lat_lin_w90_c2: x_w90_c2 + y_w90_c2 >= 0.6954
  lat_lin_w90_c3: x_w90_c3 + y_w90_c3 >= 1.2941
  lat_lin_w90_c4: x_w90_c4 + y_w90_c4 >= 0.4676
  lat_lin_w90_c5: x_w90_c5 + y_w90_c5 >= 0.8780
  lat_lin_w90_c6: x_w90_c6 + y_w90_c6 >= 0.6214
  lat_lin_w90_c7: x_w90_c7 + y_w90_c7 >= 1.2413
  lat_lin_w90_c8: x_w90_c8 + y_w90_c8 >= 1.0936
  lat_lin_w90_c9: x_w90_c9 + y_w90_c9 >= 0.6367
  lat_lin_w90_c10: x_w90_c10 + y_w90_c10 >= 1.0100
  lat_lin_w90_c11: x_w90_c11 + y_w90_c11 >= 0.6526
  lat_lin_w90_c12: x_w90_c12 + y_w90_c12 >= 0.4413
  lat_lin_w90_c13: x_w90_c13 + y_w90_c13 >= 0.1525
  lat_lin_w90_c14: x_w90_c14 + y_w90_c14 >= 0.0033
  lat_lin_w90_c15: x_w90_c15 + y_w90_c15 >= 0.8562
  lat_lin_w90_c16: x_w90_c16 + y_w90_c16 >= 0.2451
  lat_lin_w90_c17: x_w90_c17 + y_w90_c17 >= 0.0328
  lat_lin_w90_c18: x_w90_c18 + y_w90_c18 >= 0.7585
  lat_lin_w90_c19: x_w90_c19 + y_w90_c19 >= 1.1150
  demand_w90: x_w90_c0 + x_w90_c1 + x_w90_c2 + x_w90_c3 + x_w90_c4 + x_w90_c5 + x_w90_c6 + x_w90_c7 + x_w90_c8 + x_w90_c9 + x_w90_c10 + x_w90_c11 + x_w90_c12 + x_w90_c13 + x_w90_c14 + x_w90_c15 + x_w90_c16 + x_w90_c17 + x_w90_c18 + x_w90_c19 = 14
  lat_lin_w91_c0: x_w91_c0 + y_w91_c0 >= 0.3454
  lat_lin_w91_c1: x_w91_c1 + y_w91_c1 >= 0.6782
  lat_lin_w91_c2: x_w91_c2 + y_w91_c2 >= 0.7460
  lat_lin_w91_c3: x_w91_c3 + y_w91_c3 >= 0.6681
  lat_lin_w91_c4: x_w91_c4 + y_w91_c4 >= 0.6464
  lat_lin_w91_c5: x_w91_c5 + y_w91_c5 >= 1.0727
  lat_lin_w91_c6: x_w91_c6 + y_w91_c6 >= 0.2903
  lat_lin_w91_c7: x_w91_c7 + y_w91_c7 >= 0.8179
  lat_lin_w91_c8: x_w91_c8 + y_w91_c8 >= 0.8753
  lat_lin_w91_c9: x_w91_c9 + y_w91_c9 >= 0.9913
  lat_lin_w91_c10: x_w91_c10 + y_w91_c10 >= 0.8817
  lat_lin_w91_c11: x_w91_c11 + y_w91_c11 >= 0.3923
  lat_lin_w91_c12: x_w91_c12 + y_w91_c12 >= 0.1671
  lat_lin_w91_c13: x_w91_c13 + y_w91_c13 >= 0.7300
  lat_lin_w91_c14: x_w91_c14 + y_w91_c14 >= 0.0564
  lat_lin_w91_c15: x_w91_c15 + y_w91_c15 >= 1.0675
  lat_lin_w91_c16: x_w91_c16 + y_w91_c16 >= 0.1872
  lat_lin_w91_c17: x_w91_c17 + y_w91_c17 >= 1.1056
  lat_lin_w91_c18: x_w91_c18 + y_w91_c18 >= 0.0603
  lat_lin_w91_c19: x_w91_c19 + y_w91_c19 >= 0.2205
  demand_w91: x_w91_c0 + x_w91_c1 + x_w91_c2 + x_w91_c3 + x_w91_c4 + x_w91_c5 + x_w91_c6 + x_w91_c7 + x_w91_c8 + x_w91_c9 + x_w91_c10 + x_w91_c11 + x_w91_c12 + x_w91_c13 + x_w91_c14 + x_w91_c15 + x_w91_c16 + x_w91_c17 + x_w91_c18 + x_w91_c19 = 12
  lat_lin_w92_c0: x_w92_c0 + y_w92_c0 >= 0.3283
  lat_lin_w92_c1: x_w92_c1 + y_w92_c1 >= 0.1287
  lat_lin_w92_c2: x_w92_c2 + y_w92_c2 >= 0.2528
  lat_lin_w92_c3: x_w92_c3 + y_w92_c3 >= 0.0399
  lat_lin_w92_c4: x_w92_c4 + y_w92_c4 >= 0.1495
  lat_lin_w92_c5: x_w92_c5 + y_w92_c5 >= 0.0623
  lat_lin_w92_c6: x_w92_c6 + y_w92_c6 >= 0.1191
  lat_lin_w92_c7: x_w92_c7 + y_w92_c7 >= 0.0531
  lat_lin_w92_c8: x_w92_c8 + y_w92_c8 >= 0.0426
  lat_lin_w92_c9: x_w92_c9 + y_w92_c9 >= 0.2379
  lat_lin_w92_c10: x_w92_c10 + y_w92_c10 >= 0.1773
  lat_lin_w92_c11: x_w92_c11 + y_w92_c11 >= 0.0725
  lat_lin_w92_c12: x_w92_c12 + y_w92_c12 >= 0.2660
  lat_lin_w92_c13: x_w92_c13 + y_w92_c13 >= 0.0063
  lat_lin_w92_c14: x_w92_c14 + y_w92_c14 >= 0.0752
  lat_lin_w92_c15: x_w92_c15 + y_w92_c15 >= 0.1609
  lat_lin_w92_c16: x_w92_c16 + y_w92_c16 >= 0.2985
  lat_lin_w92_c17: x_w92_c17 + y_w92_c17 >= 0.0770
  lat_lin_w92_c18: x_w92_c18 + y_w92_c18 >= 0.1980
  lat_lin_w92_c19: x_w92_c19 + y_w92_c19 >= 0.2541
  demand_w92: x_w92_c0 + x_w92_c1 + x_w92_c2 + x_w92_c3 + x_w92_c4 + x_w92_c5 + x_w92_c6 + x_w92_c7 + x_w92_c8 + x_w92_c9 + x_w92_c10 + x_w92_c11 + x_w92_c12 + x_w92_c13 + x_w92_c14 + x_w92_c15 + x_w92_c16 + x_w92_c17 + x_w92_c18 + x_w92_c19 = 3
  lat_lin_w93_c0: x_w93_c0 + y_w93_c0 >= 0.8787
  lat_lin_w93_c1: x_w93_c1 + y_w93_c1 >= 1.2257
  lat_lin_w93_c2: x_w93_c2 + y_w93_c2 >= 0.0233
  lat_lin_w93_c3: x_w93_c3 + y_w93_c3 >= 0.6409
  lat_lin_w93_c4: x_w93_c4 + y_w93_c4 >= 0.9803
  lat_lin_w93_c5: x_w93_c5 + y_w93_c5 >= 0.7563
  lat_lin_w93_c6: x_w93_c6 + y_w93_c6 >= 0.7070
  lat_lin_w93_c7: x_w93_c7 + y_w93_c7 >= 1.2777
  lat_lin_w93_c8: x_w93_c8 + y_w93_c8 >= 0.2182
  lat_lin_w93_c9: x_w93_c9 + y_w93_c9 >= 0.5036
  lat_lin_w93_c10: x_w93_c10 + y_w93_c10 >= 0.4608
  lat_lin_w93_c11: x_w93_c11 + y_w93_c11 >= 1.0237
  lat_lin_w93_c12: x_w93_c12 + y_w93_c12 >= 0.9778
  lat_lin_w93_c13: x_w93_c13 + y_w93_c13 >= 0.6935
  lat_lin_w93_c14: x_w93_c14 + y_w93_c14 >= 1.1079
  lat_lin_w93_c15: x_w93_c15 + y_w93_c15 >= 0.4348
  lat_lin_w93_c16: x_w93_c16 + y_w93_c16 >= 0.6095
  lat_lin_w93_c17: x_w93_c17 + y_w93_c17 >= 0.1792
  lat_lin_w93_c18: x_w93_c18 + y_w93_c18 >= 0.7476
  lat_lin_w93_c19: x_w93_c19 + y_w93_c19 >= 0.5536
  demand_w93: x_w93_c0 + x_w93_c1 + x_w93_c2 + x_w93_c3 + x_w93_c4 + x_w93_c5 + x_w93_c6 + x_w93_c7 + x_w93_c8 + x_w93_c9 + x_w93_c10 + x_w93_c11 + x_w93_c12 + x_w93_c13 + x_w93_c14 + x_w93_c15 + x_w93_c16 + x_w93_c17 + x_w93_c18 + x_w93_c19 = 14
  lat_lin_w94_c0: x_w94_c0 + y_w94_c0 >= 1.5181
  lat_lin_w94_c1: x_w94_c1 + y_w94_c1 >= 0.4877
  lat_lin_w94_c2: x_w94_c2 + y_w94_c2 >= 1.2333
  lat_lin_w94_c3: x_w94_c3 + y_w94_c3 >= 0.0012
  lat_lin_w94_c4: x_w94_c4 + y_w94_c4 >= 0.6256
  lat_lin_w94_c5: x_w94_c5 + y_w94_c5 >= 0.9311
  lat_lin_w94_c6: x_w94_c6 + y_w94_c6 >= 0.6290
  lat_lin_w94_c7: x_w94_c7 + y_w94_c7 >= 1.2409
  lat_lin_w94_c8: x_w94_c8 + y_w94_c8 >= 1.4320
  lat_lin_w94_c9: x_w94_c9 + y_w94_c9 >= 0.3382
  lat_lin_w94_c10: x_w94_c10 + y_w94_c10 >= 0.0391
  lat_lin_w94_c11: x_w94_c11 + y_w94_c11 >= 0.7130
  lat_lin_w94_c12: x_w94_c12 + y_w94_c12 >= 0.0641
  lat_lin_w94_c13: x_w94_c13 + y_w94_c13 >= 0.3754
  lat_lin_w94_c14: x_w94_c14 + y_w94_c14 >= 0.4459
  lat_lin_w94_c15: x_w94_c15 + y_w94_c15 >= 0.6844
  lat_lin_w94_c16: x_w94_c16 + y_w94_c16 >= 0.0967
  lat_lin_w94_c17: x_w94_c17 + y_w94_c17 >= 1.1732
  lat_lin_w94_c18: x_w94_c18 + y_w94_c18 >= 1.4930
  lat_lin_w94_c19: x_w94_c19 + y_w94_c19 >= 1.4781
  demand_w94: x_w94_c0 + x_w94_c1 + x_w94_c2 + x_w94_c3 + x_w94_c4 + x_w94_c5 + x_w94_c6 + x_w94_c7 + x_w94_c8 + x_w94_c9 + x_w94_c10 + x_w94_c11 + x_w94_c12 + x_w94_c13 + x_w94_c14 + x_w94_c15 + x_w94_c16 + x_w94_c17 + x_w94_c18 + x_w94_c19 = 15
  lat_lin_w95_c0: x_w95_c0 + y_w95_c0 >= 0.5011
  lat_lin_w95_c1: x_w95_c1 + y_w95_c1 >= 1.1085
  lat_lin_w95_c2: x_w95_c2 + y_w95_c2 >= 1.0997
  lat_lin_w95_c3: x_w95_c3 + y_w95_c3 >= 1.0658
  lat_lin_w95_c4: x_w95_c4 + y_w95_c4 >= 0.6688
  lat_lin_w95_c5: x_w95_c5 + y_w95_c5 >= 0.1977
  lat_lin_w95_c6: x_w95_c6 + y_w95_c6 >= 0.1949
  lat_lin_w95_c7: x_w95_c7 + y_w95_c7 >= 0.7138
  lat_lin_w95_c8: x_w95_c8 + y_w95_c8 >= 0.6009
  lat_lin_w95_c9: x_w95_c9 + y_w95_c9 >= 1.1018
  lat_lin_w95_c10: x_w95_c10 + y_w95_c10 >= 0.0818
  lat_lin_w95_c11: x_w95_c11 + y_w95_c11 >= 0.1357
  lat_lin_w95_c12: x_w95_c12 + y_w95_c12 >= 0.8089
  lat_lin_w95_c13: x_w95_c13 + y_w95_c13 >= 1.2422
  lat_lin_w95_c14: x_w95_c14 + y_w95_c14 >= 0.5498
  lat_lin_w95_c15: x_w95_c15 + y_w95_c15 >= 0.1869
  lat_lin_w95_c16: x_w95_c16 + y_w95_c16 >= 1.0417
  lat_lin_w95_c17: x_w95_c17 + y_w95_c17 >= 0.2785
  lat_lin_w95_c18: x_w95_c18 + y_w95_c18 >= 1.3458
  lat_lin_w95_c19: x_w95_c19 + y_w95_c19 >= 1.0757
  demand_w95: x_w95_c0 + x_w95_c1 + x_w95_c2 + x_w95_c3 + x_w95_c4 + x_w95_c5 + x_w95_c6 + x_w95_c7 + x_w95_c8 + x_w95_c9 + x_w95_c10 + x_w95_c11 + x_w95_c12 + x_w95_c13 + x_w95_c14 + x_w95_c15 + x_w95_c16 + x_w95_c17 + x_w95_c18 + x_w95_c19 = 14
  lat_lin_w96_c0: x_w96_c0 + y_w96_c0 >= 0.3787
  lat_lin_w96_c1: x_w96_c1 + y_w96_c1 >= 0.6304
  lat_lin_w96_c2: x_w96_c2 + y_w96_c2 >= 0.8309
  lat_lin_w96_c3: x_w96_c3 + y_w96_c3 >= 0.5873
  lat_lin_w96_c4: x_w96_c4 + y_w96_c4 >= 0.2605
  lat_lin_w96_c5: x_w96_c5 + y_w96_c5 >= 0.2460
  lat_lin_w96_c6: x_w96_c6 + y_w96_c6 >= 0.5325
  lat_lin_w96_c7: x_w96_c7 + y_w96_c7 >= 0.7104
  lat_lin_w96_c8: x_w96_c8 + y_w96_c8 >= 0.7495
  lat_lin_w96_c9: x_w96_c9 + y_w96_c9 >= 0.8271
  lat_lin_w96_c10: x_w96_c10 + y_w96_c10 >= 0.0104
  lat_lin_w96_c11: x_w96_c11 + y_w96_c11 >= 0.5721
  lat_lin_w96_c12: x_w96_c12 + y_w96_c12 >= 0.4732
  lat_lin_w96_c13: x_w96_c13 + y_w96_c13 >= 0.2295
  lat_lin_w96_c14: x_w96_c14 + y_w96_c14 >= 0.3413
  lat_lin_w96_c15: x_w96_c15 + y_w96_c15 >= 0.4922
  lat_lin_w96_c16: x_w96_c16 + y_w96_c16 >= 0.3394
  lat_lin_w96_c17: x_w96_c17 + y_w96_c17 >= 0.3910
  lat_lin_w96_c18: x_w96_c18 + y_w96_c18 >= 0.6083
  lat_lin_w96_c19: x_w96_c19 + y_w96_c19 >= 0.7894
  demand_w96: x_w96_c0 + x_w96_c1 + x_w96_c2 + x_w96_c3 + x_w96_c4 + x_w96_c5 + x_w96_c6 + x_w96_c7 + x_w96_c8 + x_w96_c9 + x_w96_c10 + x_w96_c11 + x_w96_c12 + x_w96_c13 + x_w96_c14 + x_w96_c15 + x_w96_c16 + x_w96_c17 + x_w96_c18 + x_w96_c19 = 10
  lat_lin_w97_c0: x_w97_c0 + y_w97_c0 >= 0.3116
  lat_lin_w97_c1: x_w97_c1 + y_w97_c1 >= 0.2571
  lat_lin_w97_c2: x_w97_c2 + y_w97_c2 >= 0.1325
  lat_lin_w97_c3: x_w97_c3 + y_w97_c3 >= 0.0351
  lat_lin_w97_c4: x_w97_c4 + y_w97_c4 >= 0.2473
  lat_lin_w97_c5: x_w97_c5 + y_w97_c5 >= 0.0022
  lat_lin_w97_c6: x_w97_c6 + y_w97_c6 >= 0.4324
  lat_lin_w97_c7: x_w97_c7 + y_w97_c7 >= 0.0894
  lat_lin_w97_c8: x_w97_c8 + y_w97_c8 >= 0.1908
  lat_lin_w97_c9: x_w97_c9 + y_w97_c9 >= 0.2328
  lat_lin_w97_c10: x_w97_c10 + y_w97_c10 >= 0.3403
  lat_lin_w97_c11: x_w97_c11 + y_w97_c11 >= 0.0502
  lat_lin_w97_c12: x_w97_c12 + y_w97_c12 >= 0.2522
  lat_lin_w97_c13: x_w97_c13 + y_w97_c13 >= 0.0307
  lat_lin_w97_c14: x_w97_c14 + y_w97_c14 >= 0.4331
  lat_lin_w97_c15: x_w97_c15 + y_w97_c15 >= 0.0251
  lat_lin_w97_c16: x_w97_c16 + y_w97_c16 >= 0.3472
  lat_lin_w97_c17: x_w97_c17 + y_w97_c17 >= 0.2746
  lat_lin_w97_c18: x_w97_c18 + y_w97_c18 >= 0.1675
  lat_lin_w97_c19: x_w97_c19 + y_w97_c19 >= 0.1479
  demand_w97: x_w97_c0 + x_w97_c1 + x_w97_c2 + x_w97_c3 + x_w97_c4 + x_w97_c5 + x_w97_c6 + x_w97_c7 + x_w97_c8 + x_w97_c9 + x_w97_c10 + x_w97_c11 + x_w97_c12 + x_w97_c13 + x_w97_c14 + x_w97_c15 + x_w97_c16 + x_w97_c17 + x_w97_c18 + x_w97_c19 = 4
  lat_lin_w98_c0: x_w98_c0 + y_w98_c0 >= 0.4805
  lat_lin_w98_c1: x_w98_c1 + y_w98_c1 >= 0.1724
  lat_lin_w98_c2: x_w98_c2 + y_w98_c2 >= 0.3219
  lat_lin_w98_c3: x_w98_c3 + y_w98_c3 >= 0.4896
  lat_lin_w98_c4: x_w98_c4 + y_w98_c4 >= 0.6293
  lat_lin_w98_c5: x_w98_c5 + y_w98_c5 >= 0.5232
  lat_lin_w98_c6: x_w98_c6 + y_w98_c6 >= 1.0510
  lat_lin_w98_c7: x_w98_c7 + y_w98_c7 >= 0.3129
  lat_lin_w98_c8: x_w98_c8 + y_w98_c8 >= 0.6158
  lat_lin_w98_c9: x_w98_c9 + y_w98_c9 >= 0.5886
  lat_lin_w98_c10: x_w98_c10 + y_w98_c10 >= 0.6381
  lat_lin_w98_c11: x_w98_c11 + y_w98_c11 >= 0.4228
  lat_lin_w98_c12: x_w98_c12 + y_w98_c12 >= 1.1091
  lat_lin_w98_c13: x_w98_c13 + y_w98_c13 >= 0.7455
  lat_lin_w98_c14: x_w98_c14 + y_w98_c14 >= 0.7627
  lat_lin_w98_c15: x_w98_c15 + y_w98_c15 >= 0.8495
  lat_lin_w98_c16: x_w98_c16 + y_w98_c16 >= 0.8035
  lat_lin_w98_c17: x_w98_c17 + y_w98_c17 >= 0.7022
  lat_lin_w98_c18: x_w98_c18 + y_w98_c18 >= 0.7236
  lat_lin_w98_c19: x_w98_c19 + y_w98_c19 >= 1.0580
  demand_w98: x_w98_c0 + x_w98_c1 + x_w98_c2 + x_w98_c3 + x_w98_c4 + x_w98_c5 + x_w98_c6 + x_w98_c7 + x_w98_c8 + x_w98_c9 + x_w98_c10 + x_w98_c11 + x_w98_c12 + x_w98_c13 + x_w98_c14 + x_w98_c15 + x_w98_c16 + x_w98_c17 + x_w98_c18 + x_w98_c19 = 13
  lat_lin_w99_c0: x_w99_c0 + y_w99_c0 >= 0.0665
  lat_lin_w99_c1: x_w99_c1 + y_w99_c1 >= 0.1016
  lat_lin_w99_c2: x_w99_c2 + y_w99_c2 >= 0.1382
  lat_lin_w99_c3: x_w99_c3 + y_w99_c3 >= 0.2567
  lat_lin_w99_c4: x_w99_c4 + y_w99_c4 >= 0.2660
  lat_lin_w99_c5: x_w99_c5 + y_w99_c5 >= 0.1003
  lat_lin_w99_c6: x_w99_c6 + y_w99_c6 >= 0.2486
  lat_lin_w99_c7: x_w99_c7 + y_w99_c7 >= 0.3307
  lat_lin_w99_c8: x_w99_c8 + y_w99_c8 >= 0.3824
  lat_lin_w99_c9: x_w99_c9 + y_w99_c9 >= 0.2271
  lat_lin_w99_c10: x_w99_c10 + y_w99_c10 >= 0.3086
  lat_lin_w99_c11: x_w99_c11 + y_w99_c11 >= 0.4083
  lat_lin_w99_c12: x_w99_c12 + y_w99_c12 >= 0.2260
  lat_lin_w99_c13: x_w99_c13 + y_w99_c13 >= 0.3979
  lat_lin_w99_c14: x_w99_c14 + y_w99_c14 >= 0.1715
  lat_lin_w99_c15: x_w99_c15 + y_w99_c15 >= 0.2660
  lat_lin_w99_c16: x_w99_c16 + y_w99_c16 >= 0.3910
  lat_lin_w99_c17: x_w99_c17 + y_w99_c17 >= 0.3058
  lat_lin_w99_c18: x_w99_c18 + y_w99_c18 >= 0.2694
  lat_lin_w99_c19: x_w99_c19 + y_w99_c19 >= 0.1375
  demand_w99: x_w99_c0 + x_w99_c1 + x_w99_c2 + x_w99_c3 + x_w99_c4 + x_w99_c5 + x_w99_c6 + x_w99_c7 + x_w99_c8 + x_w99_c9 + x_w99_c10 + x_w99_c11 + x_w99_c12 + x_w99_c13 + x_w99_c14 + x_w99_c15 + x_w99_c16 + x_w99_c17 + x_w99_c18 + x_w99_c19 = 5
  sum_cost: 0.8721 x_w0_c0 + 7.1788 x_w0_c1 + 6.8823 x_w0_c2 + 3.9077 x_w0_c3 + 7.8782 x_w0_c4 + 3.5025 x_w0_c5 + 4.2872 x_w0_c6 + 4.3415 x_w0_c7 + 4.9717 x_w0_c8 + 3.8689 x_w0_c9 + 4.0899 x_w0_c10 + 6.4657 x_w0_c11 + 7.7365 x_w0_c12 + 6.4619 x_w0_c13 + 3.7183 x_w0_c14 + 4.6413 x_w0_c15 + 3.6960 x_w0_c16 + 3.8029 x_w0_c17 + 4.0180 x_w0_c18 + 3.7458 x_w0_c19 + 1.1811 x_w1_c0 + 3.9756 x_w1_c1 + 4.8768 x_w1_c2 + 5.6176 x_w1_c3 + 4.2289 x_w1_c4 + 7.8348 x_w1_c5 + 4.4689 x_w1_c6 + 7.3148 x_w1_c7 + 4.3539 x_w1_c8 + 6.5472 x_w1_c9 + 3.7409 x_w1_c10 + 4.2289 x_w1_c11 + 5.2761 x_w1_c12 + 4.8771 x_w1_c13 + 7.9503 x_w1_c14 + 7.4028 x_w1_c15 + 4.0143 x_w1_c16 + 7.8087 x_w1_c17 + 3.3741 x_w1_c18 + 5.1139 x_w1_c19 + 1.5161 x_w2_c0 + 3.2878 x_w2_c1 + 4.7985 x_w2_c2 + 6.4343 x_w2_c3 + 6.6143 x_w2_c4 + 6.5622 x_w2_c5 + 7.8739 x_w2_c6 + 5.5034 x_w2_c7 + 5.5460 x_w2_c8 + 7.7896 x_w2_c9 + 7.6350 x_w2_c10 + 3.9164 x_w2_c11 + 5.5657 x_w2_c12 + 4.5169 x_w2_c13 + 4.2146 x_w2_c14 + 5.5116 x_w2_c15 + 4.0789 x_w2_c16 + 7.1190 x_w2_c17 + 7.6831 x_w2_c18 + 3.0685 x_w2_c19 + 0.7384 x_w3_c0 + 4.9065 x_w3_c1 + 5.4466 x_w3_c2 + 6.4438 x_w3_c3 + 6.4128 x_w3_c4 + 6.2937 x_w3_c5 + 7.2029 x_w3_c6 + 4.5081 x_w3_c7 + 3.5922 x_w3_c8 + 4.9874 x_w3_c9 + 4.0017 x_w3_c10 + 5.1544 x_w3_c11 + 6.5250 x_w3_c12 + 7.1506 x_w3_c13 + 6.7224 x_w3_c14 + 3.9815 x_w3_c15 + 5.6486 x_w3_c16 + 3.8106 x_w3_c17 + 5.1832 x_w3_c18 + 3.0760 x_w3_c19 + 1.1294 x_w4_c0 + 7.5995 x_w4_c1 + 7.1839 x_w4_c2 + 7.0521 x_w4_c3 + 3.7872 x_w4_c4 + 6.2346 x_w4_c5 + 3.1396 x_w4_c6 + 6.8854 x_w4_c7 + 5.4677 x_w4_c8 + 6.6375 x_w4_c9 + 7.4643 x_w4_c10 + 6.0690 x_w4_c11 + 5.9760 x_w4_c12 + 4.1391 x_w4_c13 + 6.0335 x_w4_c14 + 5.7840 x_w4_c15 + 4.6846 x_w4_c16 + 4.6649 x_w4_c17 + 3.6375 x_w4_c18 + 6.5896 x_w4_c19 + 1.8044 x_w5_c0 + 3.6767 x_w5_c1 + 5.8699 x_w5_c2 + 7.0432 x_w5_c3 + 5.0183 x_w5_c4 + 6.4599 x_w5_c5 + 4.3335 x_w5_c6 + 7.9560 x_w5_c7 + 5.2244 x_w5_c8 + 5.8626 x_w5_c9 + 3.5763 x_w5_c10 + 6.8453 x_w5_c11 + 5.0158 x_w5_c12 + 3.3411 x_w5_c13 + 7.5488 x_w5_c14 + 6.4818 x_w5_c15 + 7.5898 x_w5_c16 + 7.1893 x_w5_c17 + 5.2443 x_w5_c18 + 6.2850 x_w5_c19 + 1.2189 x_w6_c0 + 6.6650 x_w6_c1 + 7.0849 x_w6_c2 + 3.3054 x_w6_c3 + 6.9816 x_w6_c4 + 3.1972 x_w6_c5 + 3.7608 x_w6_c6 + 4.9197 x_w6_c7 + 5.8571 x_w6_c8 + 4.1773 x_w6_c9 + 7.8758 x_w6_c10 + 6.6658 x_w6_c11 + 4.1261 x_w6_c12 + 4.0763 x_w6_c13 + 6.2569 x_w6_c14 + 6.2143 x_w6_c15 + 3.2574 x_w6_c16 + 7.2315 x_w6_c17 + 7.8258 x_w6_c18 + 4.1165 x_w6_c19 + 1.1932 x_w7_c0 + 3.0712 x_w7_c1 + 6.7155 x_w7_c2 + 7.5091 x_w7_c3 + 7.6068 x_w7_c4 + 3.5700 x_w7_c5 + 6.7412 x_w7_c6 + 7.9461 x_w7_c7 + 6.6086 x_w7_c8 + 6.5756 x_w7_c9 + 6.6101 x_w7_c10 + 4.1126 x_w7_c11 + 4.0102 x_w7_c12 + 3.5908 x_w7_c13 + 7.1608 x_w7_c14 + 3.9435 x_w7_c15 + 7.2069 x_w7_c16 + 7.3277 x_w7_c17 + 4.4933 x_w7_c18 + 5.8953 x_w7_c19 + 1.3787 x_w8_c0 + 4.7013 x_w8_c1 + 6.0113 x_w8_c2 + 5.3911 x_w8_c3 + 5.5974 x_w8_c4 + 4.3293 x_w8_c5 + 3.1343 x_w8_c6 + 6.3795 x_w8_c7 + 5.0943 x_w8_c8 + 5.1813 x_w8_c9 + 4.7758 x_w8_c10 + 5.7531 x_w8_c11 + 4.3023 x_w8_c12 + 5.9885 x_w8_c13 + 7.1943 x_w8_c14 + 3.3155 x_w8_c15 + 4.0439 x_w8_c16 + 4.1393 x_w8_c17 + 7.9571 x_w8_c18 + 3.1837 x_w8_c19 + 0.9716 x_w9_c0 + 7.3063 x_w9_c1 + 4.8396 x_w9_c2 + 3.9047 x_w9_c3 + 5.5814 x_w9_c4 + 7.1302 x_w9_c5 + 6.3366 x_w9_c6 + 5.4641 x_w9_c7 + 3.6298 x_w9_c8 + 7.4998 x_w9_c9 + 4.8792 x_w9_c10 + 3.0065 x_w9_c11 + 7.7408 x_w9_c12 + 5.4618 x_w9_c13 + 5.8177 x_w9_c14 + 4.4850 x_w9_c15 + 5.2602 x_w9_c16 + 6.8318 x_w9_c17 + 4.1400 x_w9_c18 + 5.4415 x_w9_c19 + 1.9114 x_w10_c0 + 4.5090 x_w10_c1 + 6.4035 x_w10_c2 + 6.5498 x_w10_c3 + 3.4883 x_w10_c4 + 5.5877 x_w10_c5 + 6.5545 x_w10_c6 + 6.6211 x_w10_c7 + 3.7252 x_w10_c8 + 7.7427 x_w10_c9 + 6.0121 x_w10_c10 + 7.1111 x_w10_c11 + 7.7645 x_w10_c12 + 7.7160 x_w10_c13 + 6.8456 x_w10_c14 + 6.3206 x_w10_c15 + 4.0718 x_w10_c16 + 4.4060 x_w10_c17 + 3.8580 x_w10_c18 + 5.9153 x_w10_c19 + 1.3465 x_w11_c0 + 6.3223 x_w11_c1 + 5.5881 x_w11_c2 + 5.8341 x_w11_c3 + 7.1775 x_w11_c4 + 4.7008 x_w11_c5 + 5.0698 x_w11_c6 + 4.8271 x_w11_c7 + 3.1980 x_w11_c8 + 6.0027 x_w11_c9 + 7.6144 x_w11_c10 + 7.1974 x_w11_c11 + 5.2540 x_w11_c12 + 6.8624 x_w11_c13 + 7.8386 x_w11_c14 + 6.1755 x_w11_c15 + 3.6474 x_w11_c16 + 4.6674 x_w11_c17 + 3.0592 x_w11_c18 + 5.9919 x_w11_c19 + 1.6636 x_w12_c0 + 6.8292 x_w12_c1 + 3.9484 x_w12_c2 + 3.6993 x_w12_c3 + 6.0449 x_w12_c4 + 3.1730 x_w12_c5 + 3.5227 x_w12_c6 + 3.6340 x_w12_c7 + 7.1904 x_w12_c8 + 5.0068 x_w12_c9 + 6.0001 x_w12_c10 + 5.2788 x_w12_c11 + 3.7675 x_w12_c12 + 7.9191 x_w12_c13 + 7.1872 x_w12_c14 + 3.9629 x_w12_c15 + 3.7556 x_w12_c16 + 7.7229 x_w12_c17 + 7.4766 x_w12_c18 + 3.1284 x_w12_c19 + 1.7860 x_w13_c0 + 6.1482 x_w13_c1 + 4.5659 x_w13_c2 + 3.5522 x_w13_c3 + 6.3937 x_w13_c4 + 6.7527 x_w13_c5 + 3.2403 x_w13_c6 + 6.1098 x_w13_c7 + 3.7841 x_w13_c8 + 4.3506 x_w13_c9 + 3.8297 x_w13_c10 + 7.0212 x_w13_c11 + 4.5561 x_w13_c12 + 5.9208 x_w13_c13 + 5.5160 x_w13_c14 + 6.5875 x_w13_c15 + 6.0268 x_w13_c16 + 3.8299 x_w13_c17 + 6.2969 x_w13_c18 + 4.7160 x_w13_c19 + 0.9111 x_w14_c0 + 4.8618 x_w14_c1 + 6.5208 x_w14_c2 + 5.5636 x_w14_c3 + 7.1014 x_w14_c4 + 7.7916 x_w14_c5 + 4.8334 x_w14_c6 + 7.4730 x_w14_c7 + 3.5985 x_w14_c8 + 6.3054 x_w14_c9 + 7.3929 x_w14_c10 + 3.5651 x_w14_c11 + 7.9107 x_w14_c12 + 5.1262 x_w14_c13 + 5.5755 x_w14_c14 + 5.9274 x_w14_c15 + 7.1823 x_w14_c16 + 3.5079 x_w14_c17 + 4.6823 x_w14_c18 + 5.6612 x_w14_c19 + 1.5459 x_w15_c0 + 6.1733 x_w15_c1 + 7.3733 x_w15_c2 + 6.2120 x_w15_c3 + 7.8710 x_w15_c4 + 4.9856 x_w15_c5 + 5.2237 x_w15_c6 + 6.0379 x_w15_c7 + 5.1883 x_w15_c8 + 5.5927 x_w15_c9 + 7.9896 x_w15_c10 + 3.8718 x_w15_c11 + 7.0560 x_w15_c12 + 3.0061 x_w15_c13 + 3.3262 x_w15_c14 + 5.5411 x_w15_c15 + 4.1738 x_w15_c16 + 5.4053 x_w15_c17 + 4.7944 x_w15_c18 + 3.1976 x_w15_c19 + 1.2243 x_w16_c0 + 3.2503 x_w16_c1 + 6.8114 x_w16_c2 + 7.3508 x_w16_c3 + 6.1223 x_w16_c4 + 3.9484 x_w16_c5 + 3.6820 x_w16_c6 + 3.5478 x_w16_c7 + 4.4167 x_w16_c8 + 7.9964 x_w16_c9 + 4.7275 x_w16_c10 + 5.5590 x_w16_c11 + 5.0848 x_w16_c12 + 7.4666 x_w16_c13 + 3.7322 x_w16_c14 + 6.3849 x_w16_c15 + 5.2695 x_w16_c16 + 4.6062 x_w16_c17 + 6.8534 x_w16_c18 + 7.6938 x_w16_c19 + 1.0176 x_w17_c0 + 5.5210 x_w17_c1 + 5.9020 x_w17_c2 + 6.8302 x_w17_c3 + 7.4561 x_w17_c4 + 5.9351 x_w17_c5 + 3.2248 x_w17_c6 + 5.1060 x_w17_c7 + 7.9810 x_w17_c8 + 6.7984 x_w17_c9 + 5.2866 x_w17_c10 + 7.0695 x_w17_c11 + 4.6245 x_w17_c12 + 4.3453 x_w17_c13 + 6.9841 x_w17_c14 + 4.1006 x_w17_c15 + 3.8082 x_w17_c16 + 5.8753 x_w17_c17 + 5.9829 x_w17_c18 + 7.5653 x_w17_c19 + 0.6377 x_w18_c0 + 7.2970 x_w18_c1 + 5.7418 x_w18_c2 + 6.5662 x_w18_c3 + 3.9177 x_w18_c4 + 6.2870 x_w18_c5 + 7.3538 x_w18_c6 + 7.2434 x_w18_c7 + 5.8378 x_w18_c8 + 4.4120 x_w18_c9 + 5.1870 x_w18_c10 + 6.2169 x_w18_c11 + 3.5511 x_w18_c12 + 5.3792 x_w18_c13 + 5.7476 x_w18_c14 + 4.6174 x_w18_c15 + 4.0726 x_w18_c16 + 3.1535 x_w18_c17 + 6.4245 x_w18_c18 + 4.0441 x_w18_c19 + 1.7678 x_w19_c0 + 4.2461 x_w19_c1 + 4.0132 x_w19_c2 + 5.3330 x_w19_c3 + 6.7560 x_w19_c4 + 6.7258 x_w19_c5 + 4.7425 x_w19_c6 + 4.5134 x_w19_c7 + 7.0762 x_w19_c8 + 4.4522 x_w19_c9 + 6.2654 x_w19_c10 + 4.4543 x_w19_c11 + 6.3795 x_w19_c12 + 6.9414 x_w19_c13 + 5.7178 x_w19_c14 + 7.9890 x_w19_c15 + 4.3149 x_w19_c16 + 6.2651 x_w19_c17 + 5.0477 x_w19_c18 + 5.6939 x_w19_c19 + 0.6812 x_w20_c0 + 3.1789 x_w20_c1 + 3.8911 x_w20_c2 + 3.8834 x_w20_c3 + 6.4308 x_w20_c4 + 6.8446 x_w20_c5 + 7.9415 x_w20_c6 + 6.4926 x_w20_c7 + 6.5638 x_w20_c8 + 5.6215 x_w20_c9 + 5.1423 x_w20_c10 + 3.0960 x_w20_c11 + 4.7913 x_w20_c12 + 3.1356 x_w20_c13 + 7.9065 x_w20_c14 + 5.3963 x_w20_c15 + 7.6251 x_w20_c16 + 3.6389 x_w20_c17 + 7.3814 x_w20_c18 + 7.8953 x_w20_c19 + 1.3871 x_w21_c0 + 7.0411 x_w21_c1 + 7.2747 x_w21_c2 + 3.0437 x_w21_c3 + 3.1549 x_w21_c4 + 3.4610 x_w21_c5 + 5.2588 x_w21_c6 + 7.3199 x_w21_c7 + 4.9308 x_w21_c8 + 7.2641 x_w21_c9 + 7.9993 x_w21_c10 + 7.6612 x_w21_c11 + 5.7513 x_w21_c12 + 3.4341 x_w21_c13 + 7.9221 x_w21_c14 + 7.4778 x_w21_c15 + 6.5751 x_w21_c16 + 4.8906 x_w21_c17 + 7.4922 x_w21_c18 + 7.2998 x_w21_c19 + 1.3081 x_w22_c0 + 7.2944 x_w22_c1 + 5.0178 x_w22_c2 + 5.0793 x_w22_c3 + 5.2914 x_w22_c4 + 5.1873 x_w22_c5 + 5.5792 x_w22_c6 + 3.2472 x_w22_c7 + 4.1309 x_w22_c8 + 3.5696 x_w22_c9 + 4.1601 x_w22_c10 + 7.0582 x_w22_c11 + 7.2939 x_w22_c12 + 5.0785 x_w22_c13 + 5.9591 x_w22_c14 + 7.5526 x_w22_c15 + 3.5421 x_w22_c16 + 5.7603 x_w22_c17 + 5.0976 x_w22_c18 + 7.6621 x_w22_c19 + 1.3864 x_w23_c0 + 4.5161 x_w23_c1 + 5.9976 x_w23_c2 + 7.8446 x_w23_c3 + 4.7047 x_w23_c4 + 6.4874 x_w23_c5 + 6.5298 x_w23_c6 + 4.1637 x_w23_c7 + 7.8499 x_w23_c8 + 3.0180 x_w23_c9 + 3.5881 x_w23_c10 + 4.6712 x_w23_c11 + 7.6967 x_w23_c12 + 7.7628 x_w23_c13 + 4.5436 x_w23_c14 + 3.2431 x_w23_c15 + 7.2970 x_w23_c16 + 5.3206 x_w23_c17 + 3.0914 x_w23_c18 + 5.9743 x_w23_c19 + 0.9266 x_w24_c0 + 7.7814 x_w24_c1 + 6.2091 x_w24_c2 + 7.5077 x_w24_c3 + 7.2576 x_w24_c4 + 3.4135 x_w24_c5 + 6.1494 x_w24_c6 + 3.0804 x_w24_c7 + 5.2562 x_w24_c8 + 6.1232 x_w24_c9 + 5.0739 x_w24_c10 + 5.4850 x_w24_c11 + 3.0167 x_w24_c12 + 7.1739 x_w24_c13 + 6.8889 x_w24_c14 + 3.4222 x_w24_c15 + 4.1692 x_w24_c16 + 4.1868 x_w24_c17 + 3.6804 x_w24_c18 + 5.8038 x_w24_c19 + 0.8053 x_w25_c0 + 3.4508 x_w25_c1 + 5.8301 x_w25_c2 + 5.1033 x_w25_c3 + 5.7003 x_w25_c4 + 7.8507 x_w25_c5 + 7.2090 x_w25_c6 + 4.6234 x_w25_c7 + 5.6320 x_w25_c8 + 6.3097 x_w25_c9 + 6.5876 x_w25_c10 + 4.3510 x_w25_c11 + 3.6315 x_w25_c12 + 6.5689 x_w25_c13 + 6.2277 x_w25_c14 + 7.0775 x_w25_c15 + 6.4723 x_w25_c16 + 3.9088 x_w25_c17 + 6.6078 x_w25_c18 + 4.7160 x_w25_c19 + 1.1853 x_w26_c0 + 7.3480 x_w26_c1 + 5.9170 x_w26_c2 + 4.5892 x_w26_c3 + 6.9765 x_w26_c4 + 6.6644 x_w26_c5 + 4.7884 x_w26_c6 + 6.6344 x_w26_c7 + 7.2560 x_w26_c8 + 6.9342 x_w26_c9 + 3.7431 x_w26_c10 + 6.6903 x_w26_c11 + 5.8909 x_w26_c12 + 6.0879 x_w26_c13 + 3.2113 x_w26_c14 + 6.2722 x_w26_c15 + 6.0173 x_w26_c16 + 5.4012 x_w26_c17 + 3.6316 x_w26_c18 + 5.0272 x_w26_c19 + 0.8384 x_w27_c0 + 4.8262 x_w27_c1 + 7.6166 x_w27_c2 + 7.5089 x_w27_c3 + 3.4129 x_w27_c4 + 6.8424 x_w27_c5 + 5.6790 x_w27_c6 + 5.5438 x_w27_c7 + 4.0406 x_w27_c8 + 4.7876 x_w27_c9 + 4.2864 x_w27_c10 + 3.6681 x_w27_c11 + 7.4121 x_w27_c12 + 4.5038 x_w27_c13 + 5.6575 x_w27_c14 + 4.5360 x_w27_c15 + 4.7172 x_w27_c16 + 6.2212 x_w27_c17 + 6.9403 x_w27_c18 + 5.9772 x_w27_c19 + 1.3944 x_w28_c0 + 4.8470 x_w28_c1 + 6.4901 x_w28_c2 + 6.4700 x_w28_c3 + 6.8390 x_w28_c4 + 4.4116 x_w28_c5 + 7.4151 x_w28_c6 + 3.6499 x_w28_c7 + 3.1269 x_w28_c8 + 7.7016 x_w28_c9 + 7.9376 x_w28_c10 + 6.5999 x_w28_c11 + 6.1180 x_w28_c12 + 5.0350 x_w28_c13 + 6.4032 x_w28_c14 + 5.4744 x_w28_c15 + 5.6818 x_w28_c16 + 4.0974 x_w28_c17 + 3.1924 x_w28_c18 + 5.4153 x_w28_c19 + 0.7449 x_w29_c0 + 4.4774 x_w29_c1 + 6.6660 x_w29_c2 + 7.9653 x_w29_c3 + 7.3489 x_w29_c4 + 7.4679 x_w29_c5 + 5.3784 x_w29_c6 + 6.9049 x_w29_c7 + 5.4184 x_w29_c8 + 4.8139 x_w29_c9 + 5.5062 x_w29_c10 + 7.0999 x_w29_c11 + 7.6868 x_w29_c12 + 6.6615 x_w29_c13 + 7.4649 x_w29_c14 + 6.2036 x_w29_c15 + 4.9843 x_w29_c16 + 6.3634 x_w29_c17 + 5.3737 x_w29_c18 + 3.8407 x_w29_c19 + 0.7369 x_w30_c0 + 7.4985 x_w30_c1 + 4.7192 x_w30_c2 + 4.6748 x_w30_c3 + 4.3834 x_w30_c4 + 5.7025 x_w30_c5 + 7.6185 x_w30_c6 + 7.6695 x_w30_c7 + 4.3381 x_w30_c8 + 6.4222 x_w30_c9 + 6.8501 x_w30_c10 + 4.8535 x_w30_c11 + 4.3957 x_w30_c12 + 4.0308 x_w30_c13 + 6.9839 x_w30_c14 + 7.5832 x_w30_c15 + 7.0406 x_w30_c16 + 6.8752 x_w30_c17 + 3.4358 x_w30_c18 + 3.3020 x_w30_c19 + 1.9128 x_w31_c0 + 6.6172 x_w31_c1 + 5.1768 x_w31_c2 + 3.8243 x_w31_c3 + 5.8309 x_w31_c4 + 3.0971 x_w31_c5 + 3.6332 x_w31_c6 + 6.4199 x_w31_c7 + 3.0615 x_w31_c8 + 7.4702 x_w31_c9 + 3.8864 x_w31_c10 + 7.7829 x_w31_c11 + 4.7481 x_w31_c12 + 3.6723 x_w31_c13 + 3.9725 x_w31_c14 + 3.6973 x_w31_c15 + 3.9178 x_w31_c16 + 4.8492 x_w31_c17 + 7.3380 x_w31_c18 + 4.6341 x_w31_c19 + 1.3908 x_w32_c0 + 5.8703 x_w32_c1 + 6.2562 x_w32_c2 + 3.7661 x_w32_c3 + 6.9105 x_w32_c4 + 4.8823 x_w32_c5 + 5.9751 x_w32_c6 + 7.9259 x_w32_c7 + 6.9885 x_w32_c8 + 7.1003 x_w32_c9 + 6.8827 x_w32_c10 + 3.0225 x_w32_c11 + 3.0024 x_w32_c12 + 3.0751 x_w32_c13 + 3.6732 x_w32_c14 + 4.8144 x_w32_c15 + 5.0325 x_w32_c16 + 6.6387 x_w32_c17 + 6.4260 x_w32_c18 + 5.6350 x_w32_c19 + 0.7510 x_w33_c0 + 6.8186 x_w33_c1 + 5.6650 x_w33_c2 + 4.3816 x_w33_c3 + 5.1011 x_w33_c4 + 4.9351 x_w33_c5 + 7.1329 x_w33_c6 + 3.4046 x_w33_c7 + 6.6662 x_w33_c8 + 7.1052 x_w33_c9 + 7.2654 x_w33_c10 + 6.9937 x_w33_c11 + 5.9964 x_w33_c12 + 3.4833 x_w33_c13 + 5.4720 x_w33_c14 + 5.6031 x_w33_c15 + 3.1195 x_w33_c16 + 7.6763 x_w33_c17 + 6.8691 x_w33_c18 + 3.6406 x_w33_c19 + 1.9305 x_w34_c0 + 4.0635 x_w34_c1 + 3.7477 x_w34_c2 + 4.1301 x_w34_c3 + 4.3834 x_w34_c4 + 7.6258 x_w34_c5 + 5.0467 x_w34_c6 + 5.6303 x_w34_c7 + 3.9972 x_w34_c8 + 5.5240 x_w34_c9 + 4.7439 x_w34_c10 + 3.2612 x_w34_c11 + 5.5643 x_w34_c12 + 5.6388 x_w34_c13 + 6.2675 x_w34_c14 + 7.2558 x_w34_c15 + 7.5556 x_w34_c16 + 5.9843 x_w34_c17 + 4.7010 x_w34_c18 + 4.0523 x_w34_c19 + 1.2845 x_w35_c0 + 5.2848 x_w35_c1 + 3.2066 x_w35_c2 + 5.4561 x_w35_c3 + 3.3572 x_w35_c4 + 7.9679 x_w35_c5 + 6.7790 x_w35_c6 + 6.5464 x_w35_c7 + 7.0875 x_w35_c8 + 5.8079 x_w35_c9 + 6.8154 x_w35_c10 + 4.4356 x_w35_c11 + 3.7448 x_w35_c12 + 4.1600 x_w35_c13 + 7.7138 x_w35_c14 + 7.7418 x_w35_c15 + 7.2546 x_w35_c16 + 3.3939 x_w35_c17 + 4.4449 x_w35_c18 + 3.2624 x_w35_c19 + 0.6028 x_w36_c0 + 6.4783 x_w36_c1 + 3.2200 x_w36_c2 + 7.3622 x_w36_c3 + 4.1060 x_w36_c4 + 6.8334 x_w36_c5 + 5.0944 x_w36_c6 + 4.7514 x_w36_c7 + 7.1302 x_w36_c8 + 5.4138 x_w36_c9 + 7.2316 x_w36_c10 + 7.6331 x_w36_c11 + 7.4880 x_w36_c12 + 5.9970 x_w36_c13 + 7.2498 x_w36_c14 + 6.6221 x_w36_c15 + 6.3591 x_w36_c16 + 4.5444 x_w36_c17 + 4.9555 x_w36_c18 + 4.1064 x_w36_c19 + 1.1497 x_w37_c0 + 5.9017 x_w37_c1 + 6.9289 x_w37_c2 + 6.9054 x_w37_c3 + 5.7862 x_w37_c4 + 4.3281 x_w37_c5 + 3.2669 x_w37_c6 + 3.0579 x_w37_c7 + 6.4290 x_w37_c8 + 5.1735 x_w37_c9 + 6.3313 x_w37_c10 + 7.8785 x_w37_c11 + 3.7963 x_w37_c12 + 6.4804 x_w37_c13 + 6.2705 x_w37_c14 + 7.5336 x_w37_c15 + 4.9835 x_w37_c16 + 4.1841 x_w37_c17 + 4.6017 x_w37_c18 + 5.8537 x_w37_c19 + 0.7000 x_w38_c0 + 7.6831 x_w38_c1 + 6.6727 x_w38_c2 + 6.0660 x_w38_c3 + 7.9687 x_w38_c4 + 3.2937 x_w38_c5 + 3.1199 x_w38_c6 + 3.5223 x_w38_c7 + 5.3146 x_w38_c8 + 3.1777 x_w38_c9 + 5.9966 x_w38_c10 + 3.7141 x_w38_c11 + 6.8605 x_w38_c12 + 6.3720 x_w38_c13 + 6.1576 x_w38_c14 + 7.8858 x_w38_c15 + 6.0205 x_w38_c16 + 6.7258 x_w38_c17 + 5.9721 x_w38_c18 + 5.0825 x_w38_c19 + 0.8923 x_w39_c0 + 7.0720 x_w39_c1 + 4.4035 x_w39_c2 + 4.4761 x_w39_c3 + 7.4526 x_w39_c4 + 3.9681 x_w39_c5 + 3.5620 x_w39_c6 + 6.0037 x_w39_c7 + 5.9253 x_w39_c8 + 5.4687 x_w39_c9 + 3.3568 x_w39_c10 + 4.7535 x_w39_c11 + 7.2324 x_w39_c12 + 6.4043 x_w39_c13 + 6.0816 x_w39_c14 + 4.5070 x_w39_c15 + 4.7323 x_w39_c16 + 6.8545 x_w39_c17 + 3.2438 x_w39_c18 + 3.9472 x_w39_c19 + 0.6264 x_w40_c0 + 4.9065 x_w40_c1 + 5.7490 x_w40_c2 + 3.6481 x_w40_c3 + 3.8560 x_w40_c4 + 4.9609 x_w40_c5 + 3.0199 x_w40_c6 + 7.8814 x_w40_c7 + 4.6489 x_w40_c8 + 5.0288 x_w40_c9 + 5.5530 x_w40_c10 + 3.8880 x_w40_c11 + 4.3671 x_w40_c12 + 6.2149 x_w40_c13 + 4.5299 x_w40_c14 + 7.7219 x_w40_c15 + 4.6533 x_w40_c16 + 7.8752 x_w40_c17 + 5.5653 x_w40_c18 + 3.5934 x_w40_c19 + 1.7877 x_w41_c0 + 6.6424 x_w41_c1 + 7.8223 x_w41_c2 + 7.0864 x_w41_c3 + 7.5734 x_w41_c4 + 4.4403 x_w41_c5 + 6.3734 x_w41_c6 + 3.3097 x_w41_c7 + 4.6703 x_w41_c8 + 6.1359 x_w41_c9 + 7.9500 x_w41_c10 + 4.8333 x_w41_c11 + 5.5059 x_w41_c12 + 7.5330 x_w41_c13 + 5.9462 x_w41_c14 + 7.3191 x_w41_c15 + 7.4839 x_w41_c16 + 7.8620 x_w41_c17 + 3.1954 x_w41_c18 + 6.4032 x_w41_c19 + 1.8769 x_w42_c0 + 7.4058 x_w42_c1 + 7.9287 x_w42_c2 + 5.0857 x_w42_c3 + 5.9255 x_w42_c4 + 7.5527 x_w42_c5 + 4.7308 x_w42_c6 + 3.7764 x_w42_c7 + 7.5949 x_w42_c8 + 5.3079 x_w42_c9 + 6.8992 x_w42_c10 + 7.4153 x_w42_c11 + 6.6848 x_w42_c12 + 6.4432 x_w42_c13 + 3.5990 x_w42_c14 + 3.6961 x_w42_c15 + 3.4137 x_w42_c16 + 5.4660 x_w42_c17 + 4.9285 x_w42_c18 + 4.3547 x_w42_c19 + 0.9993 x_w43_c0 + 4.2254 x_w43_c1 + 6.2017 x_w43_c2 + 7.0731 x_w43_c3 + 6.3650 x_w43_c4 + 6.5950 x_w43_c5 + 6.8455 x_w43_c6 + 7.7537 x_w43_c7 + 3.4108 x_w43_c8 + 5.1992 x_w43_c9 + 7.5971 x_w43_c10 + 7.5678 x_w43_c11 + 6.0028 x_w43_c12 + 7.2337 x_w43_c13 + 4.0321 x_w43_c14 + 5.8429 x_w43_c15 + 3.3953 x_w43_c16 + 4.8522 x_w43_c17 + 3.3562 x_w43_c18 + 4.8811 x_w43_c19 + 1.5437 x_w44_c0 + 4.1601 x_w44_c1 + 4.1529 x_w44_c2 + 3.8860 x_w44_c3 + 4.2716 x_w44_c4 + 4.4073 x_w44_c5 + 5.8398 x_w44_c6 + 5.2790 x_w44_c7 + 7.6576 x_w44_c8 + 6.4793 x_w44_c9 + 6.5786 x_w44_c10 + 3.1796 x_w44_c11 + 7.9765 x_w44_c12 + 7.3229 x_w44_c13 + 5.9422 x_w44_c14 + 7.9556 x_w44_c15 + 6.4179 x_w44_c16 + 5.5561 x_w44_c17 + 3.9579 x_w44_c18 + 7.6120 x_w44_c19 + 1.4013 x_w45_c0 + 6.2305 x_w45_c1 + 4.0355 x_w45_c2 + 3.5179 x_w45_c3 + 3.9166 x_w45_c4 + 4.8440 x_w45_c5 + 4.8656 x_w45_c6 + 3.4905 x_w45_c7 + 4.7736 x_w45_c8 + 6.2371 x_w45_c9 + 3.5634 x_w45_c10 + 4.1482 x_w45_c11 + 7.1679 x_w45_c12 + 7.4594 x_w45_c13 + 7.8255 x_w45_c14 + 6.4823 x_w45_c15 + 6.5764 x_w45_c16 + 3.7596 x_w45_c17 + 5.3989 x_w45_c18 + 6.6431 x_w45_c19 + 0.5866 x_w46_c0 + 3.1295 x_w46_c1 + 3.5127 x_w46_c2 + 7.9667 x_w46_c3 + 7.7581 x_w46_c4 + 5.7819 x_w46_c5 + 7.6945 x_w46_c6 + 4.2315 x_w46_c7 + 5.5428 x_w46_c8 + 3.3452 x_w46_c9 + 6.6957 x_w46_c10 + 6.0241 x_w46_c11 + 6.4655 x_w46_c12 + 5.3197 x_w46_c13 + 3.1184 x_w46_c14 + 5.8977 x_w46_c15 + 4.2468 x_w46_c16 + 4.8236 x_w46_c17 + 3.0544 x_w46_c18 + 3.6008 x_w46_c19 + 0.6598 x_w47_c0 + 3.0680 x_w47_c1 + 3.0814 x_w47_c2 + 3.0136 x_w47_c3 + 3.4929 x_w47_c4 + 3.7046 x_w47_c5 + 5.1292 x_w47_c6 + 3.6451 x_w47_c7 + 7.5641 x_w47_c8 + 3.5359 x_w47_c9 + 3.8403 x_w47_c10 + 3.8135 x_w47_c11 + 7.2674 x_w47_c12 + 3.2270 x_w47_c13 + 4.3554 x_w47_c14 + 5.6609 x_w47_c15 + 4.2821 x_w47_c16 + 5.5090 x_w47_c17 + 6.2240 x_w47_c18 + 7.9190 x_w47_c19 + 0.8664 x_w48_c0 + 5.4125 x_w48_c1 + 4.7835 x_w48_c2 + 5.0491 x_w48_c3 + 6.4951 x_w48_c4 + 7.9164 x_w48_c5 + 4.7933 x_w48_c6 + 5.6873 x_w48_c7 + 5.2367 x_w48_c8 + 7.7305 x_w48_c9 + 4.1711 x_w48_c10 + 6.8752 x_w48_c11 + 7.2671 x_w48_c12 + 6.6810 x_w48_c13 + 4.2613 x_w48_c14 + 5.4329 x_w48_c15 + 5.1700 x_w48_c16 + 6.9280 x_w48_c17 + 3.3050 x_w48_c18 + 5.7696 x_w48_c19 + 1.5115 x_w49_c0 + 4.4392 x_w49_c1 + 3.0741 x_w49_c2 + 4.1743 x_w49_c3 + 3.3795 x_w49_c4 + 4.6193 x_w49_c5 + 7.6291 x_w49_c6 + 7.1544 x_w49_c7 + 6.6820 x_w49_c8 + 7.6395 x_w49_c9 + 5.3195 x_w49_c10 + 3.1395 x_w49_c11 + 6.3318 x_w49_c12 + 7.3063 x_w49_c13 + 3.0217 x_w49_c14 + 3.1855 x_w49_c15 + 7.1780 x_w49_c16 + 6.7895 x_w49_c17 + 7.2100 x_w49_c18 + 5.3600 x_w49_c19 + 1.2525 x_w50_c0 + 7.8085 x_w50_c1 + 3.6137 x_w50_c2 + 6.1711 x_w50_c3 + 6.5429 x_w50_c4 + 5.8144 x_w50_c5 + 6.9192 x_w50_c6 + 3.7580 x_w50_c7 + 4.3718 x_w50_c8 + 5.0087 x_w50_c9 + 7.4612 x_w50_c10 + 6.6464 x_w50_c11 + 5.2925 x_w50_c12 + 3.6871 x_w50_c13 + 6.3578 x_w50_c14 + 5.0694 x_w50_c15 + 7.1391 x_w50_c16 + 3.1051 x_w50_c17 + 5.3519 x_w50_c18 + 4.9469 x_w50_c19 + 1.6292 x_w51_c0 + 5.1017 x_w51_c1 + 4.5827 x_w51_c2 + 6.5687 x_w51_c3 + 3.0321 x_w51_c4 + 5.7435 x_w51_c5 + 6.9289 x_w51_c6 + 5.3633 x_w51_c7 + 6.0826 x_w51_c8 + 7.4605 x_w51_c9 + 6.9014 x_w51_c10 + 6.7300 x_w51_c11 + 5.3018 x_w51_c12 + 7.2848 x_w51_c13 + 4.7487 x_w51_c14 + 7.5323 x_w51_c15 + 3.9229 x_w51_c16 + 6.4861 x_w51_c17 + 4.4280 x_w51_c18 + 5.0409 x_w51_c19 + 0.8828 x_w52_c0 + 3.3897 x_w52_c1 + 6.4573 x_w52_c2 + 7.6396 x_w52_c3 + 6.5244 x_w52_c4 + 7.0291 x_w52_c5 + 3.4111 x_w52_c6 + 6.8500 x_w52_c7 + 4.9072 x_w52_c8 + 5.8995 x_w52_c9 + 6.2640 x_w52_c10 + 7.0893 x_w52_c11 + 5.6410 x_w52_c12 + 5.3512 x_w52_c13 + 3.0304 x_w52_c14 + 5.9910 x_w52_c15 + 5.4387 x_w52_c16 + 6.9735 x_w52_c17 + 5.7638 x_w52_c18 + 7.9799 x_w52_c19 + 1.2924 x_w53_c0 + 5.0292 x_w53_c1 + 3.2228 x_w53_c2 + 3.8291 x_w53_c3 + 5.1377 x_w53_c4 + 7.8455 x_w53_c5 + 3.7054 x_w53_c6 + 6.7861 x_w53_c7 + 6.7489 x_w53_c8 + 3.6695 x_w53_c9 + 7.9904 x_w53_c10 + 3.2373 x_w53_c11 + 6.8295 x_w53_c12 + 4.7491 x_w53_c13 + 4.6901 x_w53_c14 + 3.5713 x_w53_c15 + 7.3181 x_w53_c16 + 3.4618 x_w53_c17 + 4.9333 x_w53_c18 + 4.9909 x_w53_c19 + 0.8803 x_w54_c0 + 6.0898 x_w54_c1 + 3.2811 x_w54_c2 + 7.3870 x_w54_c3 + 5.4507 x_w54_c4 + 4.1696 x_w54_c5 + 4.9244 x_w54_c6 + 6.0749 x_w54_c7 + 7.3190 x_w54_c8 + 6.8451 x_w54_c9 + 6.2770 x_w54_c10 + 4.7667 x_w54_c11 + 5.9187 x_w54_c12 + 6.3482 x_w54_c13 + 3.0969 x_w54_c14 + 4.4160 x_w54_c15 + 7.7468 x_w54_c16 + 4.8558 x_w54_c17 + 3.7214 x_w54_c18 + 6.8245 x_w54_c19 + 1.1674 x_w55_c0 + 6.5473 x_w55_c1 + 4.3820 x_w55_c2 + 6.8104 x_w55_c3 + 3.7799 x_w55_c4 + 3.8652 x_w55_c5 + 6.3450 x_w55_c6 + 3.0935 x_w55_c7 + 3.5316 x_w55_c8 + 7.4356 x_w55_c9 + 6.1145 x_w55_c10 + 6.8986 x_w55_c11 + 7.2023 x_w55_c12 + 4.8883 x_w55_c13 + 5.8734 x_w55_c14 + 7.7882 x_w55_c15 + 3.8692 x_w55_c16 + 4.6606 x_w55_c17 + 7.9117 x_w55_c18 + 5.9026 x_w55_c19 + 0.7038 x_w56_c0 + 6.0055 x_w56_c1 + 6.3748 x_w56_c2 + 4.5184 x_w56_c3 + 7.2373 x_w56_c4 + 5.9891 x_w56_c5 + 7.4607 x_w56_c6 + 4.2967 x_w56_c7 + 3.5926 x_w56_c8 + 6.2786 x_w56_c9 + 3.9342 x_w56_c10 + 3.9065 x_w56_c11 + 6.1209 x_w56_c12 + 4.7652 x_w56_c13 + 3.3982 x_w56_c14 + 5.1856 x_w56_c15 + 4.5488 x_w56_c16 + 7.5406 x_w56_c17 + 5.5045 x_w56_c18 + 6.3741 x_w56_c19 + 1.6221 x_w57_c0 + 6.6224 x_w57_c1 + 7.7180 x_w57_c2 + 7.8415 x_w57_c3 + 4.4603 x_w57_c4 + 6.1576 x_w57_c5 + 4.4676 x_w57_c6 + 4.4797 x_w57_c7 + 7.3078 x_w57_c8 + 7.0252 x_w57_c9 + 6.1761 x_w57_c10 + 4.0142 x_w57_c11 + 5.5071 x_w57_c12 + 4.4247 x_w57_c13 + 7.1673 x_w57_c14 + 7.5707 x_w57_c15 + 5.9086 x_w57_c16 + 3.3222 x_w57_c17 + 3.5566 x_w57_c18 + 5.3257 x_w57_c19 + 0.7863 x_w58_c0 + 4.0322 x_w58_c1 + 4.2022 x_w58_c2 + 7.9295 x_w58_c3 + 6.6277 x_w58_c4 + 4.2301 x_w58_c5 + 6.6699 x_w58_c6 + 5.7974 x_w58_c7 + 7.2505 x_w58_c8 + 5.6662 x_w58_c9 + 6.8998 x_w58_c10 + 3.6336 x_w58_c11 + 5.7333 x_w58_c12 + 5.8393 x_w58_c13 + 4.5587 x_w58_c14 + 7.2267 x_w58_c15 + 6.4767 x_w58_c16 + 4.7670 x_w58_c17 + 4.0245 x_w58_c18 + 6.8112 x_w58_c19 + 0.5989 x_w59_c0 + 5.9563 x_w59_c1 + 7.9424 x_w59_c2 + 3.3901 x_w59_c3 + 6.9569 x_w59_c4 + 4.5446 x_w59_c5 + 4.4764 x_w59_c6 + 6.7594 x_w59_c7 + 6.9867 x_w59_c8 + 6.5467 x_w59_c9 + 7.3621 x_w59_c10 + 5.6459 x_w59_c11 + 5.8191 x_w59_c12 + 3.6303 x_w59_c13 + 4.8566 x_w59_c14 + 4.1270 x_w59_c15 + 6.0577 x_w59_c16 + 3.0269 x_w59_c17 + 7.5432 x_w59_c18 + 6.0474 x_w59_c19 + 1.8440 x_w60_c0 + 3.1012 x_w60_c1 + 7.9719 x_w60_c2 + 4.7168 x_w60_c3 + 4.4656 x_w60_c4 + 7.7245 x_w60_c5 + 5.9094 x_w60_c6 + 4.2456 x_w60_c7 + 6.5569 x_w60_c8 + 3.7504 x_w60_c9 + 7.8728 x_w60_c10 + 7.2620 x_w60_c11 + 3.5120 x_w60_c12 + 4.5528 x_w60_c13 + 4.8984 x_w60_c14 + 5.0296 x_w60_c15 + 5.0837 x_w60_c16 + 3.4114 x_w60_c17 + 3.8867 x_w60_c18 + 5.6481 x_w60_c19 + 1.4770 x_w61_c0 + 5.9375 x_w61_c1 + 4.3022 x_w61_c2 + 6.4083 x_w61_c3 + 5.2116 x_w61_c4 + 4.7090 x_w61_c5 + 7.5278 x_w61_c6 + 4.5129 x_w61_c7 + 3.7518 x_w61_c8 + 3.9021 x_w61_c9 + 4.4945 x_w61_c10 + 5.7049 x_w61_c11 + 3.2999 x_w61_c12 + 6.9064 x_w61_c13 + 4.7540 x_w61_c14 + 7.7017 x_w61_c15 + 3.8034 x_w61_c16 + 3.4812 x_w61_c17 + 3.6633 x_w61_c18 + 5.7233 x_w61_c19 + 1.2394 x_w62_c0 + 3.0902 x_w62_c1 + 3.7930 x_w62_c2 + 3.2334 x_w62_c3 + 6.0001 x_w62_c4 + 6.2308 x_w62_c5 + 7.7991 x_w62_c6 + 7.9732 x_w62_c7 + 6.9098 x_w62_c8 + 4.5944 x_w62_c9 + 5.6511 x_w62_c10 + 4.7815 x_w62_c11 + 6.7421 x_w62_c12 + 6.8896 x_w62_c13 + 3.4951 x_w62_c14 + 8.0000 x_w62_c15 + 6.0110 x_w62_c16 + 5.4678 x_w62_c17 + 4.7545 x_w62_c18 + 7.8135 x_w62_c19 + 0.6720 x_w63_c0 + 5.9821 x_w63_c1 + 4.3312 x_w63_c2 + 3.5165 x_w63_c3 + 7.6090 x_w63_c4 + 6.8740 x_w63_c5 + 4.0916 x_w63_c6 + 7.4878 x_w63_c7 + 7.3084 x_w63_c8 + 7.5443 x_w63_c9 + 4.4251 x_w63_c10 + 4.3703 x_w63_c11 + 3.4408 x_w63_c12 + 4.0966 x_w63_c13 + 5.5617 x_w63_c14 + 6.8810 x_w63_c15 + 7.9770 x_w63_c16 + 6.9966 x_w63_c17 + 4.3368 x_w63_c18 + 4.3015 x_w63_c19 + 1.0903 x_w64_c0 + 4.4812 x_w64_c1 + 5.2472 x_w64_c2 + 5.9430 x_w64_c3 + 6.9154 x_w64_c4 + 5.3507 x_w64_c5 + 4.3097 x_w64_c6 + 7.9742 x_w64_c7 + 5.9950 x_w64_c8 + 5.4503 x_w64_c9 + 7.2877 x_w64_c10 + 7.2420 x_w64_c11 + 5.3014 x_w64_c12 + 4.5246 x_w64_c13 + 7.1063 x_w64_c14 + 6.5491 x_w64_c15 + 6.9921 x_w64_c16 + 4.8269 x_w64_c17 + 3.0723 x_w64_c18 + 7.0791 x_w64_c19 + 0.9089 x_w65_c0 + 5.7651 x_w65_c1 + 3.2077 x_w65_c2 + 7.6792 x_w65_c3 + 4.0034 x_w65_c4 + 3.5921 x_w65_c5 + 6.3995 x_w65_c6 + 6.4805 x_w65_c7 + 5.8754 x_w65_c8 + 4.7967 x_w65_c9 + 6.0649 x_w65_c10 + 7.4865 x_w65_c11 + 7.9623 x_w65_c12 + 6.4746 x_w65_c13 + 7.7995 x_w65_c14 + 7.3301 x_w65_c15 + 6.0738 x_w65_c16 + 5.5566 x_w65_c17 + 4.1963 x_w65_c18 + 3.7860 x_w65_c19 + 1.9435 x_w66_c0 + 4.9417 x_w66_c1 + 7.8129 x_w66_c2 + 6.8525 x_w66_c3 + 4.4430 x_w66_c4 + 3.6319 x_w66_c5 + 3.3173 x_w66_c6 + 6.8588 x_w66_c7 + 5.7027 x_w66_c8 + 6.0528 x_w66_c9 + 5.1994 x_w66_c10 + 5.5481 x_w66_c11 + 4.3839 x_w66_c12 + 3.8136 x_w66_c13 + 6.3628 x_w66_c14 + 5.0186 x_w66_c15 + 6.8114 x_w66_c16 + 7.7345 x_w66_c17 + 3.4719 x_w66_c18 + 6.4311 x_w66_c19 + 1.1068 x_w67_c0 + 3.8044 x_w67_c1 + 4.8986 x_w67_c2 + 5.2276 x_w67_c3 + 4.1570 x_w67_c4 + 6.9886 x_w67_c5 + 7.5600 x_w67_c6 + 7.5249 x_w67_c7 + 3.8269 x_w67_c8 + 6.0045 x_w67_c9 + 5.3258 x_w67_c10 + 3.2078 x_w67_c11 + 7.5705 x_w67_c12 + 4.6352 x_w67_c13 + 6.2007 x_w67_c14 + 4.4334 x_w67_c15 + 3.7682 x_w67_c16 + 6.5921 x_w67_c17 + 7.5313 x_w67_c18 + 6.4010 x_w67_c19 + 0.8243 x_w68_c0 + 3.0749 x_w68_c1 + 4.7440 x_w68_c2 + 4.5707 x_w68_c3 + 5.3500 x_w68_c4 + 3.8759 x_w68_c5 + 3.4113 x_w68_c6 + 3.1030 x_w68_c7 + 7.7569 x_w68_c8 + 5.4378 x_w68_c9 + 3.0825 x_w68_c10 + 4.6220 x_w68_c11 + 5.1896 x_w68_c12 + 7.5326 x_w68_c13 + 6.8187 x_w68_c14 + 6.4765 x_w68_c15 + 5.9156 x_w68_c16 + 7.2497 x_w68_c17 + 7.2894 x_w68_c18 + 7.0188 x_w68_c19 + 1.1320 x_w69_c0 + 6.6541 x_w69_c1 + 6.4536 x_w69_c2 + 4.1359 x_w69_c3 + 5.9148 x_w69_c4 + 5.8762 x_w69_c5 + 6.0955 x_w69_c6 + 4.5075 x_w69_c7 + 6.3589 x_w69_c8 + 3.1682 x_w69_c9 + 4.1322 x_w69_c10 + 4.0573 x_w69_c11 + 5.1142 x_w69_c12 + 7.9212 x_w69_c13 + 6.3924 x_w69_c14 + 6.8057 x_w69_c15 + 3.7174 x_w69_c16 + 6.9878 x_w69_c17 + 4.7351 x_w69_c18 + 5.4135 x_w69_c19 + 0.5112 x_w70_c0 + 5.9701 x_w70_c1 + 3.2836 x_w70_c2 + 5.6466 x_w70_c3 + 5.7452 x_w70_c4 + 3.8483 x_w70_c5 + 7.9151 x_w70_c6 + 4.9019 x_w70_c7 + 4.4917 x_w70_c8 + 4.5160 x_w70_c9 + 5.2274 x_w70_c10 + 5.4782 x_w70_c11 + 7.6259 x_w70_c12 + 6.1662 x_w70_c13 + 4.3341 x_w70_c14 + 7.7727 x_w70_c15 + 4.9417 x_w70_c16 + 7.2774 x_w70_c17 + 5.0139 x_w70_c18 + 7.7812 x_w70_c19 + 0.9355 x_w71_c0 + 5.1607 x_w71_c1 + 4.7062 x_w71_c2 + 7.8894 x_w71_c3 + 5.3397 x_w71_c4 + 3.1702 x_w71_c5 + 3.7019 x_w71_c6 + 5.2681 x_w71_c7 + 6.1901 x_w71_c8 + 5.8441 x_w71_c9 + 7.1867 x_w71_c10 + 6.1480 x_w71_c11 + 4.3627 x_w71_c12 + 3.7454 x_w71_c13 + 3.9068 x_w71_c14 + 5.4618 x_w71_c15 + 3.1529 x_w71_c16 + 7.2954 x_w71_c17 + 6.7429 x_w71_c18 + 3.7405 x_w71_c19 + 1.3740 x_w72_c0 + 6.2002 x_w72_c1 + 7.0377 x_w72_c2 + 3.4728 x_w72_c3 + 4.6028 x_w72_c4 + 4.6539 x_w72_c5 + 4.0688 x_w72_c6 + 6.5430 x_w72_c7 + 7.3654 x_w72_c8 + 3.9163 x_w72_c9 + 7.4868 x_w72_c10 + 4.8033 x_w72_c11 + 6.8242 x_w72_c12 + 7.9349 x_w72_c13 + 5.4135 x_w72_c14 + 4.0576 x_w72_c15 + 4.9861 x_w72_c16 + 4.7534 x_w72_c17 + 4.1030 x_w72_c18 + 3.9010 x_w72_c19 + 1.2094 x_w73_c0 + 5.6261 x_w73_c1 + 4.9871 x_w73_c2 + 6.7592 x_w73_c3 + 7.9429 x_w73_c4 + 3.5834 x_w73_c5 + 4.9733 x_w73_c6 + 7.6740 x_w73_c7 + 5.2578 x_w73_c8 + 4.1978 x_w73_c9 + 3.1328 x_w73_c10 + 7.7835 x_w73_c11 + 7.3899 x_w73_c12 + 7.1592 x_w73_c13 + 5.6384 x_w73_c14 + 7.2424 x_w73_c15 + 5.5562 x_w73_c16 + 5.6375 x_w73_c17 + 6.9952 x_w73_c18 + 3.2513 x_w73_c19 + 0.6250 x_w74_c0 + 6.1171 x_w74_c1 + 4.6270 x_w74_c2 + 7.0376 x_w74_c3 + 6.0650 x_w74_c4 + 5.7256 x_w74_c5 + 6.9910 x_w74_c6 + 4.1368 x_w74_c7 + 3.1203 x_w74_c8 + 5.1919 x_w74_c9 + 4.4517 x_w74_c10 + 3.4171 x_w74_c11 + 4.6140 x_w74_c12 + 4.5105 x_w74_c13 + 5.6794 x_w74_c14 + 4.2818 x_w74_c15 + 6.2382 x_w74_c16 + 4.5177 x_w74_c17 + 5.9978 x_w74_c18 + 3.9762 x_w74_c19 + 1.9110 x_w75_c0 + 5.2557 x_w75_c1 + 5.9055 x_w75_c2 + 5.7244 x_w75_c3 + 3.7847 x_w75_c4 + 4.3079 x_w75_c5 + 5.0976 x_w75_c6 + 4.0768 x_w75_c7 + 5.5053 x_w75_c8 + 3.6545 x_w75_c9 + 7.1399 x_w75_c10 + 3.7185 x_w75_c11 + 4.0311 x_w75_c12 + 6.0607 x_w75_c13 + 3.8081 x_w75_c14 + 3.3523 x_w75_c15 + 5.8236 x_w75_c16 + 5.7532 x_w75_c17 + 6.8340 x_w75_c18 + 4.3236 x_w75_c19 + 1.4388 x_w76_c0 + 3.4752 x_w76_c1 + 5.0408 x_w76_c2 + 6.1771 x_w76_c3 + 7.5301 x_w76_c4 + 7.2014 x_w76_c5 + 7.2077 x_w76_c6 + 6.7440 x_w76_c7 + 7.8885 x_w76_c8 + 7.0202 x_w76_c9 + 3.5725 x_w76_c10 + 4.8201 x_w76_c11 + 7.5717 x_w76_c12 + 7.4445 x_w76_c13 + 6.0675 x_w76_c14 + 5.4719 x_w76_c15 + 4.3352 x_w76_c16 + 7.6719 x_w76_c17 + 5.8393 x_w76_c18 + 4.6976 x_w76_c19 + 1.2703 x_w77_c0 + 7.8514 x_w77_c1 + 7.2678 x_w77_c2 + 6.4074 x_w77_c3 + 4.5577 x_w77_c4 + 3.0653 x_w77_c5 + 6.9580 x_w77_c6 + 7.3227 x_w77_c7 + 7.8041 x_w77_c8 + 3.2929 x_w77_c9 + 3.5816 x_w77_c10 + 4.0878 x_w77_c11 + 5.3815 x_w77_c12 + 5.6568 x_w77_c13 + 6.2074 x_w77_c14 + 6.9202 x_w77_c15 + 7.9932 x_w77_c16 + 7.0222 x_w77_c17 + 3.8709 x_w77_c18 + 6.8150 x_w77_c19 + 1.8251 x_w78_c0 + 5.0566 x_w78_c1 + 4.4707 x_w78_c2 + 5.3937 x_w78_c3 + 5.3757 x_w78_c4 + 3.7185 x_w78_c5 + 6.2581 x_w78_c6 + 3.1804 x_w78_c7 + 3.2945 x_w78_c8 + 3.4617 x_w78_c9 + 7.2201 x_w78_c10 + 4.8242 x_w78_c11 + 3.3288 x_w78_c12 + 4.6270 x_w78_c13 + 5.5906 x_w78_c14 + 5.3017 x_w78_c15 + 5.7880 x_w78_c16 + 4.0729 x_w78_c17 + 4.8056 x_w78_c18 + 7.5749 x_w78_c19 + 1.0727 x_w79_c0 + 5.1319 x_w79_c1 + 7.8691 x_w79_c2 + 3.0932 x_w79_c3 + 7.3653 x_w79_c4 + 5.0209 x_w79_c5 + 7.5113 x_w79_c6 + 6.5558 x_w79_c7 + 4.2816 x_w79_c8 + 5.1924 x_w79_c9 + 7.5333 x_w79_c10 + 4.1185 x_w79_c11 + 3.1938 x_w79_c12 + 6.7054 x_w79_c13 + 7.0655 x_w79_c14 + 5.8809 x_w79_c15 + 5.7220 x_w79_c16 + 4.8465 x_w79_c17 + 7.0497 x_w79_c18 + 7.5258 x_w79_c19 + 1.4898 x_w80_c0 + 5.8383 x_w80_c1 + 6.1125 x_w80_c2 + 6.8842 x_w80_c3 + 6.4500 x_w80_c4 + 6.0049 x_w80_c5 + 5.6814 x_w80_c6 + 3.5004 x_w80_c7 + 6.0702 x_w80_c8 + 5.2650 x_w80_c9 + 6.1056 x_w80_c10 + 4.0924 x_w80_c11 + 7.6161 x_w80_c12 + 7.0033 x_w80_c13 + 7.4163 x_w80_c14 + 6.2352 x_w80_c15 + 7.1185 x_w80_c16 + 4.2286 x_w80_c17 + 6.7090 x_w80_c18 + 3.1024 x_w80_c19 + 0.5418 x_w81_c0 + 7.9424 x_w81_c1 + 6.2910 x_w81_c2 + 6.1343 x_w81_c3 + 5.6969 x_w81_c4 + 7.5391 x_w81_c5 + 3.1939 x_w81_c6 + 5.7711 x_w81_c7 + 6.3781 x_w81_c8 + 7.2732 x_w81_c9 + 4.2294 x_w81_c10 + 7.0451 x_w81_c11 + 4.3249 x_w81_c12 + 4.0249 x_w81_c13 + 5.2998 x_w81_c14 + 4.0451 x_w81_c15 + 3.2968 x_w81_c16 + 7.0573 x_w81_c17 + 6.9286 x_w81_c18 + 6.7641 x_w81_c19 + 1.4557 x_w82_c0 + 7.2600 x_w82_c1 + 3.1434 x_w82_c2 + 6.2572 x_w82_c3 + 4.0816 x_w82_c4 + 3.1978 x_w82_c5 + 7.7362 x_w82_c6 + 4.0135 x_w82_c7 + 6.9529 x_w82_c8 + 5.3822 x_w82_c9 + 6.1452 x_w82_c10 + 7.7459 x_w82_c11 + 4.6795 x_w82_c12 + 7.4218 x_w82_c13 + 7.9985 x_w82_c14 + 5.8515 x_w82_c15 + 3.4465 x_w82_c16 + 6.0338 x_w82_c17 + 3.1550 x_w82_c18 + 6.7198 x_w82_c19 + 1.1935 x_w83_c0 + 5.1939 x_w83_c1 + 4.0855 x_w83_c2 + 7.7007 x_w83_c3 + 4.9299 x_w83_c4 + 6.5674 x_w83_c5 + 4.3145 x_w83_c6 + 6.8351 x_w83_c7 + 7.8354 x_w83_c8 + 6.7032 x_w83_c9 + 5.8742 x_w83_c10 + 3.4250 x_w83_c11 + 5.7718 x_w83_c12 + 6.1152 x_w83_c13 + 3.1296 x_w83_c14 + 6.0366 x_w83_c15 + 5.9151 x_w83_c16 + 4.6427 x_w83_c17 + 5.8116 x_w83_c18 + 3.3314 x_w83_c19 + 0.5850 x_w84_c0 + 4.5015 x_w84_c1 + 6.1968 x_w84_c2 + 4.4327 x_w84_c3 + 6.7175 x_w84_c4 + 3.2715 x_w84_c5 + 5.7944 x_w84_c6 + 7.3761 x_w84_c7 + 5.6104 x_w84_c8 + 5.1819 x_w84_c9 + 6.1750 x_w84_c10 + 6.3438 x_w84_c11 + 4.0772 x_w84_c12 + 6.4279 x_w84_c13 + 6.1249 x_w84_c14 + 7.6029 x_w84_c15 + 3.8402 x_w84_c16 + 5.1381 x_w84_c17 + 3.7926 x_w84_c18 + 3.8948 x_w84_c19 + 1.5360 x_w85_c0 + 5.1918 x_w85_c1 + 4.2218 x_w85_c2 + 4.4413 x_w85_c3 + 6.8533 x_w85_c4 + 3.5350 x_w85_c5 + 5.4658 x_w85_c6 + 5.5095 x_w85_c7 + 4.4080 x_w85_c8 + 4.7868 x_w85_c9 + 7.9033 x_w85_c10 + 3.8695 x_w85_c11 + 6.8926 x_w85_c12 + 5.2282 x_w85_c13 + 3.0115 x_w85_c14 + 6.1394 x_w85_c15 + 3.5001 x_w85_c16 + 4.1658 x_w85_c17 + 3.8379 x_w85_c18 + 3.7704 x_w85_c19 + 1.3923 x_w86_c0 + 4.6613 x_w86_c1 + 4.5071 x_w86_c2 + 5.3411 x_w86_c3 + 4.4044 x_w86_c4 + 3.1424 x_w86_c5 + 3.2000 x_w86_c6 + 3.3595 x_w86_c7 + 7.6328 x_w86_c8 + 4.9528 x_w86_c9 + 5.0765 x_w86_c10 + 7.6608 x_w86_c11 + 3.6207 x_w86_c12 + 3.6342 x_w86_c13 + 3.4381 x_w86_c14 + 4.2809 x_w86_c15 + 3.0260 x_w86_c16 + 4.2845 x_w86_c17 + 5.5489 x_w86_c18 + 5.4274 x_w86_c19 + 1.5198 x_w87_c0 + 4.2391 x_w87_c1 + 7.8725 x_w87_c2 + 7.7794 x_w87_c3 + 3.6585 x_w87_c4 + 5.5225 x_w87_c5 + 6.0630 x_w87_c6 + 4.3325 x_w87_c7 + 4.9725 x_w87_c8 + 6.7530 x_w87_c9 + 5.2788 x_w87_c10 + 5.7095 x_w87_c11 + 5.3848 x_w87_c12 + 6.5322 x_w87_c13 + 7.4597 x_w87_c14 + 6.8404 x_w87_c15 + 6.9874 x_w87_c16 + 3.9896 x_w87_c17 + 4.2386 x_w87_c18 + 6.6422 x_w87_c19 + 1.2547 x_w88_c0 + 3.8112 x_w88_c1 + 7.8598 x_w88_c2 + 5.4501 x_w88_c3 + 7.4885 x_w88_c4 + 3.2744 x_w88_c5 + 5.5981 x_w88_c6 + 5.4315 x_w88_c7 + 5.3088 x_w88_c8 + 5.2454 x_w88_c9 + 3.5298 x_w88_c10 + 6.7561 x_w88_c11 + 7.4015 x_w88_c12 + 6.5003 x_w88_c13 + 6.3057 x_w88_c14 + 6.2821 x_w88_c15 + 6.2247 x_w88_c16 + 6.2059 x_w88_c17 + 3.6052 x_w88_c18 + 3.8706 x_w88_c19 + 1.3198 x_w89_c0 + 3.9776 x_w89_c1 + 5.3782 x_w89_c2 + 5.1697 x_w89_c3 + 3.6538 x_w89_c4 + 5.2208 x_w89_c5 + 5.6273 x_w89_c6 + 7.2567 x_w89_c7 + 7.3153 x_w89_c8 + 7.5360 x_w89_c9 + 3.7433 x_w89_c10 + 5.1197 x_w89_c11 + 5.0786 x_w89_c12 + 7.1497 x_w89_c13 + 7.6298 x_w89_c14 + 7.4905 x_w89_c15 + 6.7311 x_w89_c16 + 7.2141 x_w89_c17 + 6.0090 x_w89_c18 + 3.2264 x_w89_c19 + 1.6292 x_w90_c0 + 5.2672 x_w90_c1 + 4.9763 x_w90_c2 + 3.0114 x_w90_c3 + 5.4940 x_w90_c4 + 6.9003 x_w90_c5 + 3.0224 x_w90_c6 + 6.8220 x_w90_c7 + 7.3855 x_w90_c8 + 7.3290 x_w90_c9 + 4.9080 x_w90_c10 + 6.0239 x_w90_c11 + 4.8994 x_w90_c12 + 6.9063 x_w90_c13 + 3.9823 x_w90_c14 + 7.2781 x_w90_c15 + 3.1653 x_w90_c16 + 4.6471 x_w90_c17 + 7.1291 x_w90_c18 + 4.6189 x_w90_c19 + 1.8258 x_w91_c0 + 6.8771 x_w91_c1 + 5.2535 x_w91_c2 + 5.6408 x_w91_c3 + 5.6009 x_w91_c4 + 4.1394 x_w91_c5 + 7.3604 x_w91_c6 + 7.6833 x_w91_c7 + 6.5493 x_w91_c8 + 5.1876 x_w91_c9 + 6.5906 x_w91_c10 + 3.2277 x_w91_c11 + 7.4945 x_w91_c12 + 5.7635 x_w91_c13 + 5.1204 x_w91_c14 + 3.0020 x_w91_c15 + 7.8580 x_w91_c16 + 5.8943 x_w91_c17 + 4.7025 x_w91_c18 + 3.0719 x_w91_c19 + 1.3371 x_w92_c0 + 5.5050 x_w92_c1 + 4.6290 x_w92_c2 + 3.0028 x_w92_c3 + 5.8371 x_w92_c4 + 5.4734 x_w92_c5 + 6.7241 x_w92_c6 + 3.8157 x_w92_c7 + 6.1827 x_w92_c8 + 5.2831 x_w92_c9 + 4.1101 x_w92_c10 + 7.7567 x_w92_c11 + 5.2318 x_w92_c12 + 4.2015 x_w92_c13 + 5.4364 x_w92_c14 + 7.2465 x_w92_c15 + 3.7910 x_w92_c16 + 4.8460 x_w92_c17 + 5.6687 x_w92_c18 + 6.6865 x_w92_c19 + 1.8657 x_w93_c0 + 6.2617 x_w93_c1 + 5.3227 x_w93_c2 + 5.2697 x_w93_c3 + 4.7675 x_w93_c4 + 6.2914 x_w93_c5 + 4.6019 x_w93_c6 + 5.7402 x_w93_c7 + 6.5880 x_w93_c8 + 4.6493 x_w93_c9 + 6.1028 x_w93_c10 + 6.5179 x_w93_c11 + 4.0799 x_w93_c12 + 6.5206 x_w93_c13 + 5.4143 x_w93_c14 + 5.5630 x_w93_c15 + 4.8741 x_w93_c16 + 4.1929 x_w93_c17 + 4.7143 x_w93_c18 + 7.3601 x_w93_c19 + 0.7634 x_w94_c0 + 6.1687 x_w94_c1 + 3.1778 x_w94_c2 + 7.6083 x_w94_c3 + 7.0018 x_w94_c4 + 7.0443 x_w94_c5 + 6.9725 x_w94_c6 + 5.6870 x_w94_c7 + 4.2845 x_w94_c8 + 5.1207 x_w94_c9 + 6.7336 x_w94_c10 + 6.3798 x_w94_c11 + 7.1359 x_w94_c12 + 7.9650 x_w94_c13 + 7.6086 x_w94_c14 + 6.1857 x_w94_c15 + 7.4969 x_w94_c16 + 7.5549 x_w94_c17 + 5.7020 x_w94_c18 + 4.7512 x_w94_c19 + 0.9169 x_w95_c0 + 3.1951 x_w95_c1 + 6.0055 x_w95_c2 + 4.7779 x_w95_c3 + 7.6689 x_w95_c4 + 6.6735 x_w95_c5 + 6.4915 x_w95_c6 + 6.9585 x_w95_c7 + 3.7856 x_w95_c8 + 5.5513 x_w95_c9 + 3.8071 x_w95_c10 + 5.1461 x_w95_c11 + 6.6578 x_w95_c12 + 5.1973 x_w95_c13 + 4.7743 x_w95_c14 + 4.3676 x_w95_c15 + 6.8533 x_w95_c16 + 6.2114 x_w95_c17 + 7.8396 x_w95_c18 + 4.9059 x_w95_c19 + 1.4626 x_w96_c0 + 6.0404 x_w96_c1 + 5.1656 x_w96_c2 + 5.0178 x_w96_c3 + 7.4259 x_w96_c4 + 3.2794 x_w96_c5 + 3.4686 x_w96_c6 + 4.1232 x_w96_c7 + 6.4722 x_w96_c8 + 4.3821 x_w96_c9 + 4.1500 x_w96_c10 + 4.5860 x_w96_c11 + 4.4769 x_w96_c12 + 6.6705 x_w96_c13 + 4.6329 x_w96_c14 + 3.8702 x_w96_c15 + 6.2366 x_w96_c16 + 4.5722 x_w96_c17 + 7.6851 x_w96_c18 + 4.7490 x_w96_c19 + 1.3069 x_w97_c0 + 6.2938 x_w97_c1 + 7.0423 x_w97_c2 + 5.6040 x_w97_c3 + 4.7690 x_w97_c4 + 6.0317 x_w97_c5 + 5.6774 x_w97_c6 + 3.3157 x_w97_c7 + 4.5392 x_w97_c8 + 7.9115 x_w97_c9 + 4.8705 x_w97_c10 + 6.4063 x_w97_c11 + 6.1924 x_w97_c12 + 3.9691 x_w97_c13 + 3.3531 x_w97_c14 + 5.7461 x_w97_c15 + 7.2104 x_w97_c16 + 4.8708 x_w97_c17 + 3.2262 x_w97_c18 + 5.1950 x_w97_c19 + 1.0284 x_w98_c0 + 3.4020 x_w98_c1 + 5.0494 x_w98_c2 + 4.8304 x_w98_c3 + 6.7124 x_w98_c4 + 5.7749 x_w98_c5 + 6.7212 x_w98_c6 + 3.8699 x_w98_c7 + 5.7779 x_w98_c8 + 5.0816 x_w98_c9 + 6.1817 x_w98_c10 + 7.9865 x_w98_c11 + 6.3243 x_w98_c12 + 7.3745 x_w98_c13 + 7.0375 x_w98_c14 + 3.8466 x_w98_c15 + 3.3825 x_w98_c16 + 3.9775 x_w98_c17 + 4.2017 x_w98_c18 + 6.8929 x_w98_c19 + 0.5977 x_w99_c0 + 4.3649 x_w99_c1 + 4.9157 x_w99_c2 + 6.7928 x_w99_c3 + 6.9984 x_w99_c4 + 3.5129 x_w99_c5 + 3.4645 x_w99_c6 + 7.2777 x_w99_c7 + 4.6778 x_w99_c8 + 4.4478 x_w99_c9 + 4.4259 x_w99_c10 + 7.3817 x_w99_c11 + 3.4719 x_w99_c12 + 7.5270 x_w99_c13 + 7.7667 x_w99_c14 + 6.8443 x_w99_c15 + 7.0452 x_w99_c16 + 4.3583 x_w99_c17 + 6.7252 x_w99_c18 + 3.9623 x_w99_c19 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w0_c2 + y_w0_c3 + y_w0_c4 + y_w0_c5 + y_w0_c6 + y_w0_c7 + y_w0_c8 + y_w0_c9 + y_w0_c10 + y_w0_c11 + y_w0_c12 + y_w0_c13 + y_w0_c14 + y_w0_c15 + y_w0_c16 + y_w0_c17 + y_w0_c18 + y_w0_c19 + y_w1_c0 + y_w1_c1 + y_w1_c2 + y_w1_c3 + y_w1_c4 + y_w1_c5 + y_w1_c6 + y_w1_c7 + y_w1_c8 + y_w1_c9 + y_w1_c10 + y_w1_c11 + y_w1_c12 + y_w1_c13 + y_w1_c14 + y_w1_c15 + y_w1_c16 + y_w1_c17 + y_w1_c18 + y_w1_c19 + y_w2_c0 + y_w2_c1 + y_w2_c2 + y_w2_c3 + y_w2_c4 + y_w2_c5 + y_w2_c6 + y_w2_c7 + y_w2_c8 + y_w2_c9 + y_w2_c10 + y_w2_c11 + y_w2_c12 + y_w2_c13 + y_w2_c14 + y_w2_c15 + y_w2_c16 + y_w2_c17 + y_w2_c18 + y_w2_c19 + y_w3_c0 + y_w3_c1 + y_w3_c2 + y_w3_c3 + y_w3_c4 + y_w3_c5 + y_w3_c6 + y_w3_c7 + y_w3_c8 + y_w3_c9 + y_w3_c10 + y_w3_c11 + y_w3_c12 + y_w3_c13 + y_w3_c14 + y_w3_c15 + y_w3_c16 + y_w3_c17 + y_w3_c18 + y_w3_c19 + y_w4_c0 + y_w4_c1 + y_w4_c2 + y_w4_c3 + y_w4_c4 + y_w4_c5 + y_w4_c6 + y_w4_c7 + y_w4_c8 + y_w4_c9 + y_w4_c10 + y_w4_c11 + y_w4_c12 + y_w4_c13 + y_w4_c14 + y_w4_c15 + y_w4_c16 + y_w4_c17 + y_w4_c18 + y_w4_c19 + y_w5_c0 + y_w5_c1 + y_w5_c2 + y_w5_c3 + y_w5_c4 + y_w5_c5 + y_w5_c6 + y_w5_c7 + y_w5_c8 + y_w5_c9 + y_w5_c10 + y_w5_c11 + y_w5_c12 + y_w5_c13 + y_w5_c14 + y_w5_c15 + y_w5_c16 + y_w5_c17 + y_w5_c18 + y_w5_c19 + y_w6_c0 + y_w6_c1 + y_w6_c2 + y_w6_c3 + y_w6_c4 + y_w6_c5 + y_w6_c6 + y_w6_c7 + y_w6_c8 + y_w6_c9 + y_w6_c10 + y_w6_c11 + y_w6_c12 + y_w6_c13 + y_w6_c14 + y_w6_c15 + y_w6_c16 + y_w6_c17 + y_w6_c18 + y_w6_c19 + y_w7_c0 + y_w7_c1 + y_w7_c2 + y_w7_c3 + y_w7_c4 + y_w7_c5 + y_w7_c6 + y_w7_c7 + y_w7_c8 + y_w7_c9 + y_w7_c10 + y_w7_c11 + y_w7_c12 + y_w7_c13 + y_w7_c14 + y_w7_c15 + y_w7_c16 + y_w7_c17 + y_w7_c18 + y_w7_c19 + y_w8_c0 + y_w8_c1 + y_w8_c2 + y_w8_c3 + y_w8_c4 + y_w8_c5 + y_w8_c6 + y_w8_c7 + y_w8_c8 + y_w8_c9 + y_w8_c10 + y_w8_c11 + y_w8_c12 + y_w8_c13 + y_w8_c14 + y_w8_c15 + y_w8_c16 + y_w8_c17 + y_w8_c18 + y_w8_c19 + y_w9_c0 + y_w9_c1 + y_w9_c2 + y_w9_c3 + y_w9_c4 + y_w9_c5 + y_w9_c6 + y_w9_c7 + y_w9_c8 + y_w9_c9 + y_w9_c10 + y_w9_c11 + y_w9_c12 + y_w9_c13 + y_w9_c14 + y_w9_c15 + y_w9_c16 + y_w9_c17 + y_w9_c18 + y_w9_c19 + y_w10_c0 + y_w10_c1 + y_w10_c2 + y_w10_c3 + y_w10_c4 + y_w10_c5 + y_w10_c6 + y_w10_c7 + y_w10_c8 + y_w10_c9 + y_w10_c10 + y_w10_c11 + y_w10_c12 + y_w10_c13 + y_w10_c14 + y_w10_c15 + y_w10_c16 + y_w10_c17 + y_w10_c18 + y_w10_c19 + y_w11_c0 + y_w11_c1 + y_w11_c2 + y_w11_c3 + y_w11_c4 + y_w11_c5 + y_w11_c6 + y_w11_c7 + y_w11_c8 + y_w11_c9 + y_w11_c10 + y_w11_c11 + y_w11_c12 + y_w11_c13 + y_w11_c14 + y_w11_c15 + y_w11_c16 + y_w11_c17 + y_w11_c18 + y_w11_c19 + y_w12_c0 + y_w12_c1 + y_w12_c2 + y_w12_c3 + y_w12_c4 + y_w12_c5 + y_w12_c6 + y_w12_c7 + y_w12_c8 + y_w12_c9 + y_w12_c10 + y_w12_c11 + y_w12_c12 + y_w12_c13 + y_w12_c14 + y_w12_c15 + y_w12_c16 + y_w12_c17 + y_w12_c18 + y_w12_c19 + y_w13_c0 + y_w13_c1 + y_w13_c2 + y_w13_c3 + y_w13_c4 + y_w13_c5 + y_w13_c6 + y_w13_c7 + y_w13_c8 + y_w13_c9 + y_w13_c10 + y_w13_c11 + y_w13_c12 + y_w13_c13 + y_w13_c14 + y_w13_c15 + y_w13_c16 + y_w13_c17 + y_w13_c18 + y_w13_c19 + y_w14_c0 + y_w14_c1 + y_w14_c2 + y_w14_c3 + y_w14_c4 + y_w14_c5 + y_w14_c6 + y_w14_c7 + y_w14_c8 + y_w14_c9 + y_w14_c10 + y_w14_c11 + y_w14_c12 + y_w14_c13 + y_w14_c14 + y_w14_c15 + y_w14_c16 + y_w14_c17 + y_w14_c18 + y_w14_c19 + y_w15_c0 + y_w15_c1 + y_w15_c2 + y_w15_c3 + y_w15_c4 + y_w15_c5 + y_w15_c6 + y_w15_c7 + y_w15_c8 + y_w15_c9 + y_w15_c10 + y_w15_c11 + y_w15_c12 + y_w15_c13 + y_w15_c14 + y_w15_c15 + y_w15_c16 + y_w15_c17 + y_w15_c18 + y_w15_c19 + y_w16_c0 + y_w16_c1 + y_w16_c2 + y_w16_c3 + y_w16_c4 + y_w16_c5 + y_w16_c6 + y_w16_c7 + y_w16_c8 + y_w16_c9 + y_w16_c10 + y_w16_c11 + y_w16_c12 + y_w16_c13 + y_w16_c14 + y_w16_c15 + y_w16_c16 + y_w16_c17 + y_w16_c18 + y_w16_c19 + y_w17_c0 + y_w17_c1 + y_w17_c2 + y_w17_c3 + y_w17_c4 + y_w17_c5 + y_w17_c6 + y_w17_c7 + y_w17_c8 + y_w17_c9 + y_w17_c10 + y_w17_c11 + y_w17_c12 + y_w17_c13 + y_w17_c14 + y_w17_c15 + y_w17_c16 + y_w17_c17 + y_w17_c18 + y_w17_c19 + y_w18_c0 + y_w18_c1 + y_w18_c2 + y_w18_c3 + y_w18_c4 + y_w18_c5 + y_w18_c6 + y_w18_c7 + y_w18_c8 + y_w18_c9 + y_w18_c10 + y_w18_c11 + y_w18_c12 + y_w18_c13 + y_w18_c14 + y_w18_c15 + y_w18_c16 + y_w18_c17 + y_w18_c18 + y_w18_c19 + y_w19_c0 + y_w19_c1 + y_w19_c2 + y_w19_c3 + y_w19_c4 + y_w19_c5 + y_w19_c6 + y_w19_c7 + y_w19_c8 + y_w19_c9 + y_w19_c10 + y_w19_c11 + y_w19_c12 + y_w19_c13 + y_w19_c14 + y_w19_c15 + y_w19_c16 + y_w19_c17 + y_w19_c18 + y_w19_c19 + y_w20_c0 + y_w20_c1 + y_w20_c2 + y_w20_c3 + y_w20_c4 + y_w20_c5 + y_w20_c6 + y_w20_c7 + y_w20_c8 + y_w20_c9 + y_w20_c10 + y_w20_c11 + y_w20_c12 + y_w20_c13 + y_w20_c14 + y_w20_c15 + y_w20_c16 + y_w20_c17 + y_w20_c18 + y_w20_c19 + y_w21_c0 + y_w21_c1 + y_w21_c2 + y_w21_c3 + y_w21_c4 + y_w21_c5 + y_w21_c6 + y_w21_c7 + y_w21_c8 + y_w21_c9 + y_w21_c10 + y_w21_c11 + y_w21_c12 + y_w21_c13 + y_w21_c14 + y_w21_c15 + y_w21_c16 + y_w21_c17 + y_w21_c18 + y_w21_c19 + y_w22_c0 + y_w22_c1 + y_w22_c2 + y_w22_c3 + y_w22_c4 + y_w22_c5 + y_w22_c6 + y_w22_c7 + y_w22_c8 + y_w22_c9 + y_w22_c10 + y_w22_c11 + y_w22_c12 + y_w22_c13 + y_w22_c14 + y_w22_c15 + y_w22_c16 + y_w22_c17 + y_w22_c18 + y_w22_c19 + y_w23_c0 + y_w23_c1 + y_w23_c2 + y_w23_c3 + y_w23_c4 + y_w23_c5 + y_w23_c6 + y_w23_c7 + y_w23_c8 + y_w23_c9 + y_w23_c10 + y_w23_c11 + y_w23_c12 + y_w23_c13 + y_w23_c14 + y_w23_c15 + y_w23_c16 + y_w23_c17 + y_w23_c18 + y_w23_c19 + y_w24_c0 + y_w24_c1 + y_w24_c2 + y_w24_c3 + y_w24_c4 + y_w24_c5 + y_w24_c6 + y_w24_c7 + y_w24_c8 + y_w24_c9 + y_w24_c10 + y_w24_c11 + y_w24_c12 + y_w24_c13 + y_w24_c14 + y_w24_c15 + y_w24_c16 + y_w24_c17 + y_w24_c18 + y_w24_c19 + y_w25_c0 + y_w25_c1 + y_w25_c2 + y_w25_c3 + y_w25_c4 + y_w25_c5 + y_w25_c6 + y_w25_c7 + y_w25_c8 + y_w25_c9 + y_w25_c10 + y_w25_c11 + y_w25_c12 + y_w25_c13 + y_w25_c14 + y_w25_c15 + y_w25_c16 + y_w25_c17 + y_w25_c18 + y_w25_c19 + y_w26_c0 + y_w26_c1 + y_w26_c2 + y_w26_c3 + y_w26_c4 + y_w26_c5 + y_w26_c6 + y_w26_c7 + y_w26_c8 + y_w26_c9 + y_w26_c10 + y_w26_c11 + y_w26_c12 + y_w26_c13 + y_w26_c14 + y_w26_c15 + y_w26_c16 + y_w26_c17 + y_w26_c18 + y_w26_c19 + y_w27_c0 + y_w27_c1 + y_w27_c2 + y_w27_c3 + y_w27_c4 + y_w27_c5 + y_w27_c6 + y_w27_c7 + y_w27_c8 + y_w27_c9 + y_w27_c10 + y_w27_c11 + y_w27_c12 + y_w27_c13 + y_w27_c14 + y_w27_c15 + y_w27_c16 + y_w27_c17 + y_w27_c18 + y_w27_c19 + y_w28_c0 + y_w28_c1 + y_w28_c2 + y_w28_c3 + y_w28_c4 + y_w28_c5 + y_w28_c6 + y_w28_c7 + y_w28_c8 + y_w28_c9 + y_w28_c10 + y_w28_c11 + y_w28_c12 + y_w28_c13 + y_w28_c14 + y_w28_c15 + y_w28_c16 + y_w28_c17 + y_w28_c18 + y_w28_c19 + y_w29_c0 + y_w29_c1 + y_w29_c2 + y_w29_c3 + y_w29_c4 + y_w29_c5 + y_w29_c6 + y_w29_c7 + y_w29_c8 + y_w29_c9 + y_w29_c10 + y_w29_c11 + y_w29_c12 + y_w29_c13 + y_w29_c14 + y_w29_c15 + y_w29_c16 + y_w29_c17 + y_w29_c18 + y_w29_c19 + y_w30_c0 + y_w30_c1 + y_w30_c2 + y_w30_c3 + y_w30_c4 + y_w30_c5 + y_w30_c6 + y_w30_c7 + y_w30_c8 + y_w30_c9 + y_w30_c10 + y_w30_c11 + y_w30_c12 + y_w30_c13 + y_w30_c14 + y_w30_c15 + y_w30_c16 + y_w30_c17 + y_w30_c18 + y_w30_c19 + y_w31_c0 + y_w31_c1 + y_w31_c2 + y_w31_c3 + y_w31_c4 + y_w31_c5 + y_w31_c6 + y_w31_c7 + y_w31_c8 + y_w31_c9 + y_w31_c10 + y_w31_c11 + y_w31_c12 + y_w31_c13 + y_w31_c14 + y_w31_c15 + y_w31_c16 + y_w31_c17 + y_w31_c18 + y_w31_c19 + y_w32_c0 + y_w32_c1 + y_w32_c2 + y_w32_c3 + y_w32_c4 + y_w32_c5 + y_w32_c6 + y_w32_c7 + y_w32_c8 + y_w32_c9 + y_w32_c10 + y_w32_c11 + y_w32_c12 + y_w32_c13 + y_w32_c14 + y_w32_c15 + y_w32_c16 + y_w32_c17 + y_w32_c18 + y_w32_c19 + y_w33_c0 + y_w33_c1 + y_w33_c2 + y_w33_c3 + y_w33_c4 + y_w33_c5 + y_w33_c6 + y_w33_c7 + y_w33_c8 + y_w33_c9 + y_w33_c10 + y_w33_c11 + y_w33_c12 + y_w33_c13 + y_w33_c14 + y_w33_c15 + y_w33_c16 + y_w33_c17 + y_w33_c18 + y_w33_c19 + y_w34_c0 + y_w34_c1 + y_w34_c2 + y_w34_c3 + y_w34_c4 + y_w34_c5 + y_w34_c6 + y_w34_c7 + y_w34_c8 + y_w34_c9 + y_w34_c10 + y_w34_c11 + y_w34_c12 + y_w34_c13 + y_w34_c14 + y_w34_c15 + y_w34_c16 + y_w34_c17 + y_w34_c18 + y_w34_c19 + y_w35_c0 + y_w35_c1 + y_w35_c2 + y_w35_c3 + y_w35_c4 + y_w35_c5 + y_w35_c6 + y_w35_c7 + y_w35_c8 + y_w35_c9 + y_w35_c10 + y_w35_c11 + y_w35_c12 + y_w35_c13 + y_w35_c14 + y_w35_c15 + y_w35_c16 + y_w35_c17 + y_w35_c18 + y_w35_c19 + y_w36_c0 + y_w36_c1 + y_w36_c2 + y_w36_c3 + y_w36_c4 + y_w36_c5 + y_w36_c6 + y_w36_c7 + y_w36_c8 + y_w36_c9 + y_w36_c10 + y_w36_c11 + y_w36_c12 + y_w36_c13 + y_w36_c14 + y_w36_c15 + y_w36_c16 + y_w36_c17 + y_w36_c18 + y_w36_c19 + y_w37_c0 + y_w37_c1 + y_w37_c2 + y_w37_c3 + y_w37_c4 + y_w37_c5 + y_w37_c6 + y_w37_c7 + y_w37_c8 + y_w37_c9 + y_w37_c10 + y_w37_c11 + y_w37_c12 + y_w37_c13 + y_w37_c14 + y_w37_c15 + y_w37_c16 + y_w37_c17 + y_w37_c18 + y_w37_c19 + y_w38_c0 + y_w38_c1 + y_w38_c2 + y_w38_c3 + y_w38_c4 + y_w38_c5 + y_w38_c6 + y_w38_c7 + y_w38_c8 + y_w38_c9 + y_w38_c10 + y_w38_c11 + y_w38_c12 + y_w38_c13 + y_w38_c14 + y_w38_c15 + y_w38_c16 + y_w38_c17 + y_w38_c18 + y_w38_c19 + y_w39_c0 + y_w39_c1 + y_w39_c2 + y_w39_c3 + y_w39_c4 + y_w39_c5 + y_w39_c6 + y_w39_c7 + y_w39_c8 + y_w39_c9 + y_w39_c10 + y_w39_c11 + y_w39_c12 + y_w39_c13 + y_w39_c14 + y_w39_c15 + y_w39_c16 + y_w39_c17 + y_w39_c18 + y_w39_c19 + y_w40_c0 + y_w40_c1 + y_w40_c2 + y_w40_c3 + y_w40_c4 + y_w40_c5 + y_w40_c6 + y_w40_c7 + y_w40_c8 + y_w40_c9 + y_w40_c10 + y_w40_c11 + y_w40_c12 + y_w40_c13 + y_w40_c14 + y_w40_c15 + y_w40_c16 + y_w40_c17 + y_w40_c18 + y_w40_c19 + y_w41_c0 + y_w41_c1 + y_w41_c2 + y_w41_c3 + y_w41_c4 + y_w41_c5 + y_w41_c6 + y_w41_c7 + y_w41_c8 + y_w41_c9 + y_w41_c10 + y_w41_c11 + y_w41_c12 + y_w41_c13 + y_w41_c14 + y_w41_c15 + y_w41_c16 + y_w41_c17 + y_w41_c18 + y_w41_c19 + y_w42_c0 + y_w42_c1 + y_w42_c2 + y_w42_c3 + y_w42_c4 + y_w42_c5 + y_w42_c6 + y_w42_c7 + y_w42_c8 + y_w42_c9 + y_w42_c10 + y_w42_c11 + y_w42_c12 + y_w42_c13 + y_w42_c14 + y_w42_c15 + y_w42_c16 + y_w42_c17 + y_w42_c18 + y_w42_c19 + y_w43_c0 + y_w43_c1 + y_w43_c2 + y_w43_c3 + y_w43_c4 + y_w43_c5 + y_w43_c6 + y_w43_c7 + y_w43_c8 + y_w43_c9 + y_w43_c10 + y_w43_c11 + y_w43_c12 + y_w43_c13 + y_w43_c14 + y_w43_c15 + y_w43_c16 + y_w43_c17 + y_w43_c18 + y_w43_c19 + y_w44_c0 + y_w44_c1 + y_w44_c2 + y_w44_c3 + y_w44_c4 + y_w44_c5 + y_w44_c6 + y_w44_c7 + y_w44_c8 + y_w44_c9 + y_w44_c10 + y_w44_c11 + y_w44_c12 + y_w44_c13 + y_w44_c14 + y_w44_c15 + y_w44_c16 + y_w44_c17 + y_w44_c18 + y_w44_c19 + y_w45_c0 + y_w45_c1 + y_w45_c2 + y_w45_c3 + y_w45_c4 + y_w45_c5 + y_w45_c6 + y_w45_c7 + y_w45_c8 + y_w45_c9 + y_w45_c10 + y_w45_c11 + y_w45_c12 + y_w45_c13 + y_w45_c14 + y_w45_c15 + y_w45_c16 + y_w45_c17 + y_w45_c18 + y_w45_c19 + y_w46_c0 + y_w46_c1 + y_w46_c2 + y_w46_c3 + y_w46_c4 + y_w46_c5 + y_w46_c6 + y_w46_c7 + y_w46_c8 + y_w46_c9 + y_w46_c10 + y_w46_c11 + y_w46_c12 + y_w46_c13 + y_w46_c14 + y_w46_c15 + y_w46_c16 + y_w46_c17 + y_w46_c18 + y_w46_c19 + y_w47_c0 + y_w47_c1 + y_w47_c2 + y_w47_c3 + y_w47_c4 + y_w47_c5 + y_w47_c6 + y_w47_c7 + y_w47_c8 + y_w47_c9 + y_w47_c10 + y_w47_c11 + y_w47_c12 + y_w47_c13 + y_w47_c14 + y_w47_c15 + y_w47_c16 + y_w47_c17 + y_w47_c18 + y_w47_c19 + y_w48_c0 + y_w48_c1 + y_w48_c2 + y_w48_c3 + y_w48_c4 + y_w48_c5 + y_w48_c6 + y_w48_c7 + y_w48_c8 + y_w48_c9 + y_w48_c10 + y_w48_c11 + y_w48_c12 + y_w48_c13 + y_w48_c14 + y_w48_c15 + y_w48_c16 + y_w48_c17 + y_w48_c18 + y_w48_c19 + y_w49_c0 + y_w49_c1 + y_w49_c2 + y_w49_c3 + y_w49_c4 + y_w49_c5 + y_w49_c6 + y_w49_c7 + y_w49_c8 + y_w49_c9 + y_w49_c10 + y_w49_c11 + y_w49_c12 + y_w49_c13 + y_w49_c14 + y_w49_c15 + y_w49_c16 + y_w49_c17 + y_w49_c18 + y_w49_c19 + y_w50_c0 + y_w50_c1 + y_w50_c2 + y_w50_c3 + y_w50_c4 + y_w50_c5 + y_w50_c6 + y_w50_c7 + y_w50_c8 + y_w50_c9 + y_w50_c10 + y_w50_c11 + y_w50_c12 + y_w50_c13 + y_w50_c14 + y_w50_c15 + y_w50_c16 + y_w50_c17 + y_w50_c18 + y_w50_c19 + y_w51_c0 + y_w51_c1 + y_w51_c2 + y_w51_c3 + y_w51_c4 + y_w51_c5 + y_w51_c6 + y_w51_c7 + y_w51_c8 + y_w51_c9 + y_w51_c10 + y_w51_c11 + y_w51_c12 + y_w51_c13 + y_w51_c14 + y_w51_c15 + y_w51_c16 + y_w51_c17 + y_w51_c18 + y_w51_c19 + y_w52_c0 + y_w52_c1 + y_w52_c2 + y_w52_c3 + y_w52_c4 + y_w52_c5 + y_w52_c6 + y_w52_c7 + y_w52_c8 + y_w52_c9 + y_w52_c10 + y_w52_c11 + y_w52_c12 + y_w52_c13 + y_w52_c14 + y_w52_c15 + y_w52_c16 + y_w52_c17 + y_w52_c18 + y_w52_c19 + y_w53_c0 + y_w53_c1 + y_w53_c2 + y_w53_c3 + y_w53_c4 + y_w53_c5 + y_w53_c6 + y_w53_c7 + y_w53_c8 + y_w53_c9 + y_w53_c10 + y_w53_c11 + y_w53_c12 + y_w53_c13 + y_w53_c14 + y_w53_c15 + y_w53_c16 + y_w53_c17 + y_w53_c18 + y_w53_c19 + y_w54_c0 + y_w54_c1 + y_w54_c2 + y_w54_c3 + y_w54_c4 + y_w54_c5 + y_w54_c6 + y_w54_c7 + y_w54_c8 + y_w54_c9 + y_w54_c10 + y_w54_c11 + y_w54_c12 + y_w54_c13 + y_w54_c14 + y_w54_c15 + y_w54_c16 + y_w54_c17 + y_w54_c18 + y_w54_c19 + y_w55_c0 + y_w55_c1 + y_w55_c2 + y_w55_c3 + y_w55_c4 + y_w55_c5 + y_w55_c6 + y_w55_c7 + y_w55_c8 + y_w55_c9 + y_w55_c10 + y_w55_c11 + y_w55_c12 + y_w55_c13 + y_w55_c14 + y_w55_c15 + y_w55_c16 + y_w55_c17 + y_w55_c18 + y_w55_c19 + y_w56_c0 + y_w56_c1 + y_w56_c2 + y_w56_c3 + y_w56_c4 + y_w56_c5 + y_w56_c6 + y_w56_c7 + y_w56_c8 + y_w56_c9 + y_w56_c10 + y_w56_c11 + y_w56_c12 + y_w56_c13 + y_w56_c14 + y_w56_c15 + y_w56_c16 + y_w56_c17 + y_w56_c18 + y_w56_c19 + y_w57_c0 + y_w57_c1 + y_w57_c2 + y_w57_c3 + y_w57_c4 + y_w57_c5 + y_w57_c6 + y_w57_c7 + y_w57_c8 + y_w57_c9 + y_w57_c10 + y_w57_c11 + y_w57_c12 + y_w57_c13 + y_w57_c14 + y_w57_c15 + y_w57_c16 + y_w57_c17 + y_w57_c18 + y_w57_c19 + y_w58_c0 + y_w58_c1 + y_w58_c2 + y_w58_c3 + y_w58_c4 + y_w58_c5 + y_w58_c6 + y_w58_c7 + y_w58_c8 + y_w58_c9 + y_w58_c10 + y_w58_c11 + y_w58_c12 + y_w58_c13 + y_w58_c14 + y_w58_c15 + y_w58_c16 + y_w58_c17 + y_w58_c18 + y_w58_c19 + y_w59_c0 + y_w59_c1 + y_w59_c2 + y_w59_c3 + y_w59_c4 + y_w59_c5 + y_w59_c6 + y_w59_c7 + y_w59_c8 + y_w59_c9 + y_w59_c10 + y_w59_c11 + y_w59_c12 + y_w59_c13 + y_w59_c14 + y_w59_c15 + y_w59_c16 + y_w59_c17 + y_w59_c18 + y_w59_c19 + y_w60_c0 + y_w60_c1 + y_w60_c2 + y_w60_c3 + y_w60_c4 + y_w60_c5 + y_w60_c6 + y_w60_c7 + y_w60_c8 + y_w60_c9 + y_w60_c10 + y_w60_c11 + y_w60_c12 + y_w60_c13 + y_w60_c14 + y_w60_c15 + y_w60_c16 + y_w60_c17 + y_w60_c18 + y_w60_c19 + y_w61_c0 + y_w61_c1 + y_w61_c2 + y_w61_c3 + y_w61_c4 + y_w61_c5 + y_w61_c6 + y_w61_c7 + y_w61_c8 + y_w61_c9 + y_w61_c10 + y_w61_c11 + y_w61_c12 + y_w61_c13 + y_w61_c14 + y_w61_c15 + y_w61_c16 + y_w61_c17 + y_w61_c18 + y_w61_c19 + y_w62_c0 + y_w62_c1 + y_w62_c2 + y_w62_c3 + y_w62_c4 + y_w62_c5 + y_w62_c6 + y_w62_c7 + y_w62_c8 + y_w62_c9 + y_w62_c10 + y_w62_c11 + y_w62_c12 + y_w62_c13 + y_w62_c14 + y_w62_c15 + y_w62_c16 + y_w62_c17 + y_w62_c18 + y_w62_c19 + y_w63_c0 + y_w63_c1 + y_w63_c2 + y_w63_c3 + y_w63_c4 + y_w63_c5 + y_w63_c6 + y_w63_c7 + y_w63_c8 + y_w63_c9 + y_w63_c10 + y_w63_c11 + y_w63_c12 + y_w63_c13 + y_w63_c14 + y_w63_c15 + y_w63_c16 + y_w63_c17 + y_w63_c18 + y_w63_c19 + y_w64_c0 + y_w64_c1 + y_w64_c2 + y_w64_c3 + y_w64_c4 + y_w64_c5 + y_w64_c6 + y_w64_c7 + y_w64_c8 + y_w64_c9 + y_w64_c10 + y_w64_c11 + y_w64_c12 + y_w64_c13 + y_w64_c14 + y_w64_c15 + y_w64_c16 + y_w64_c17 + y_w64_c18 + y_w64_c19 + y_w65_c0 + y_w65_c1 + y_w65_c2 + y_w65_c3 + y_w65_c4 + y_w65_c5 + y_w65_c6 + y_w65_c7 + y_w65_c8 + y_w65_c9 + y_w65_c10 + y_w65_c11 + y_w65_c12 + y_w65_c13 + y_w65_c14 + y_w65_c15 + y_w65_c16 + y_w65_c17 + y_w65_c18 + y_w65_c19 + y_w66_c0 + y_w66_c1 + y_w66_c2 + y_w66_c3 + y_w66_c4 + y_w66_c5 + y_w66_c6 + y_w66_c7 + y_w66_c8 + y_w66_c9 + y_w66_c10 + y_w66_c11 + y_w66_c12 + y_w66_c13 + y_w66_c14 + y_w66_c15 + y_w66_c16 + y_w66_c17 + y_w66_c18 + y_w66_c19 + y_w67_c0 + y_w67_c1 + y_w67_c2 + y_w67_c3 + y_w67_c4 + y_w67_c5 + y_w67_c6 + y_w67_c7 + y_w67_c8 + y_w67_c9 + y_w67_c10 + y_w67_c11 + y_w67_c12 + y_w67_c13 + y_w67_c14 + y_w67_c15 + y_w67_c16 + y_w67_c17 + y_w67_c18 + y_w67_c19 + y_w68_c0 + y_w68_c1 + y_w68_c2 + y_w68_c3 + y_w68_c4 + y_w68_c5 + y_w68_c6 + y_w68_c7 + y_w68_c8 + y_w68_c9 + y_w68_c10 + y_w68_c11 + y_w68_c12 + y_w68_c13 + y_w68_c14 + y_w68_c15 + y_w68_c16 + y_w68_c17 + y_w68_c18 + y_w68_c19 + y_w69_c0 + y_w69_c1 + y_w69_c2 + y_w69_c3 + y_w69_c4 + y_w69_c5 + y_w69_c6 + y_w69_c7 + y_w69_c8 + y_w69_c9 + y_w69_c10 + y_w69_c11 + y_w69_c12 + y_w69_c13 + y_w69_c14 + y_w69_c15 + y_w69_c16 + y_w69_c17 + y_w69_c18 + y_w69_c19 + y_w70_c0 + y_w70_c1 + y_w70_c2 + y_w70_c3 + y_w70_c4 + y_w70_c5 + y_w70_c6 + y_w70_c7 + y_w70_c8 + y_w70_c9 + y_w70_c10 + y_w70_c11 + y_w70_c12 + y_w70_c13 + y_w70_c14 + y_w70_c15 + y_w70_c16 + y_w70_c17 + y_w70_c18 + y_w70_c19 + y_w71_c0 + y_w71_c1 + y_w71_c2 + y_w71_c3 + y_w71_c4 + y_w71_c5 + y_w71_c6 + y_w71_c7 + y_w71_c8 + y_w71_c9 + y_w71_c10 + y_w71_c11 + y_w71_c12 + y_w71_c13 + y_w71_c14 + y_w71_c15 + y_w71_c16 + y_w71_c17 + y_w71_c18 + y_w71_c19 + y_w72_c0 + y_w72_c1 + y_w72_c2 + y_w72_c3 + y_w72_c4 + y_w72_c5 + y_w72_c6 + y_w72_c7 + y_w72_c8 + y_w72_c9 + y_w72_c10 + y_w72_c11 + y_w72_c12 + y_w72_c13 + y_w72_c14 + y_w72_c15 + y_w72_c16 + y_w72_c17 + y_w72_c18 + y_w72_c19 + y_w73_c0 + y_w73_c1 + y_w73_c2 + y_w73_c3 + y_w73_c4 + y_w73_c5 + y_w73_c6 + y_w73_c7 + y_w73_c8 + y_w73_c9 + y_w73_c10 + y_w73_c11 + y_w73_c12 + y_w73_c13 + y_w73_c14 + y_w73_c15 + y_w73_c16 + y_w73_c17 + y_w73_c18 + y_w73_c19 + y_w74_c0 + y_w74_c1 + y_w74_c2 + y_w74_c3 + y_w74_c4 + y_w74_c5 + y_w74_c6 + y_w74_c7 + y_w74_c8 + y_w74_c9 + y_w74_c10 + y_w74_c11 + y_w74_c12 + y_w74_c13 + y_w74_c14 + y_w74_c15 + y_w74_c16 + y_w74_c17 + y_w74_c18 + y_w74_c19 + y_w75_c0 + y_w75_c1 + y_w75_c2 + y_w75_c3 + y_w75_c4 + y_w75_c5 + y_w75_c6 + y_w75_c7 + y_w75_c8 + y_w75_c9 + y_w75_c10 + y_w75_c11 + y_w75_c12 + y_w75_c13 + y_w75_c14 + y_w75_c15 + y_w75_c16 + y_w75_c17 + y_w75_c18 + y_w75_c19 + y_w76_c0 + y_w76_c1 + y_w76_c2 + y_w76_c3 + y_w76_c4 + y_w76_c5 + y_w76_c6 + y_w76_c7 + y_w76_c8 + y_w76_c9 + y_w76_c10 + y_w76_c11 + y_w76_c12 + y_w76_c13 + y_w76_c14 + y_w76_c15 + y_w76_c16 + y_w76_c17 + y_w76_c18 + y_w76_c19 + y_w77_c0 + y_w77_c1 + y_w77_c2 + y_w77_c3 + y_w77_c4 + y_w77_c5 + y_w77_c6 + y_w77_c7 + y_w77_c8 + y_w77_c9 + y_w77_c10 + y_w77_c11 + y_w77_c12 + y_w77_c13 + y_w77_c14 + y_w77_c15 + y_w77_c16 + y_w77_c17 + y_w77_c18 + y_w77_c19 + y_w78_c0 + y_w78_c1 + y_w78_c2 + y_w78_c3 + y_w78_c4 + y_w78_c5 + y_w78_c6 + y_w78_c7 + y_w78_c8 + y_w78_c9 + y_w78_c10 + y_w78_c11 + y_w78_c12 + y_w78_c13 + y_w78_c14 + y_w78_c15 + y_w78_c16 + y_w78_c17 + y_w78_c18 + y_w78_c19 + y_w79_c0 + y_w79_c1 + y_w79_c2 + y_w79_c3 + y_w79_c4 + y_w79_c5 + y_w79_c6 + y_w79_c7 + y_w79_c8 + y_w79_c9 + y_w79_c10 + y_w79_c11 + y_w79_c12 + y_w79_c13 + y_w79_c14 + y_w79_c15 + y_w79_c16 + y_w79_c17 + y_w79_c18 + y_w79_c19 + y_w80_c0 + y_w80_c1 + y_w80_c2 + y_w80_c3 + y_w80_c4 + y_w80_c5 + y_w80_c6 + y_w80_c7 + y_w80_c8 + y_w80_c9 + y_w80_c10 + y_w80_c11 + y_w80_c12 + y_w80_c13 + y_w80_c14 + y_w80_c15 + y_w80_c16 + y_w80_c17 + y_w80_c18 + y_w80_c19 + y_w81_c0 + y_w81_c1 + y_w81_c2 + y_w81_c3 + y_w81_c4 + y_w81_c5 + y_w81_c6 + y_w81_c7 + y_w81_c8 + y_w81_c9 + y_w81_c10 + y_w81_c11 + y_w81_c12 + y_w81_c13 + y_w81_c14 + y_w81_c15 + y_w81_c16 + y_w81_c17 + y_w81_c18 + y_w81_c19 + y_w82_c0 + y_w82_c1 + y_w82_c2 + y_w82_c3 + y_w82_c4 + y_w82_c5 + y_w82_c6 + y_w82_c7 + y_w82_c8 + y_w82_c9 + y_w82_c10 + y_w82_c11 + y_w82_c12 + y_w82_c13 + y_w82_c14 + y_w82_c15 + y_w82_c16 + y_w82_c17 + y_w82_c18 + y_w82_c19 + y_w83_c0 + y_w83_c1 + y_w83_c2 + y_w83_c3 + y_w83_c4 + y_w83_c5 + y_w83_c6 + y_w83_c7 + y_w83_c8 + y_w83_c9 + y_w83_c10 + y_w83_c11 + y_w83_c12 + y_w83_c13 + y_w83_c14 + y_w83_c15 + y_w83_c16 + y_w83_c17 + y_w83_c18 + y_w83_c19 + y_w84_c0 + y_w84_c1 + y_w84_c2 + y_w84_c3 + y_w84_c4 + y_w84_c5 + y_w84_c6 + y_w84_c7 + y_w84_c8 + y_w84_c9 + y_w84_c10 + y_w84_c11 + y_w84_c12 + y_w84_c13 + y_w84_c14 + y_w84_c15 + y_w84_c16 + y_w84_c17 + y_w84_c18 + y_w84_c19 + y_w85_c0 + y_w85_c1 + y_w85_c2 + y_w85_c3 + y_w85_c4 + y_w85_c5 + y_w85_c6 + y_w85_c7 + y_w85_c8 + y_w85_c9 + y_w85_c10 + y_w85_c11 + y_w85_c12 + y_w85_c13 + y_w85_c14 + y_w85_c15 + y_w85_c16 + y_w85_c17 + y_w85_c18 + y_w85_c19 + y_w86_c0 + y_w86_c1 + y_w86_c2 + y_w86_c3 + y_w86_c4 + y_w86_c5 + y_w86_c6 + y_w86_c7 + y_w86_c8 + y_w86_c9 + y_w86_c10 + y_w86_c11 + y_w86_c12 + y_w86_c13 + y_w86_c14 + y_w86_c15 + y_w86_c16 + y_w86_c17 + y_w86_c18 + y_w86_c19 + y_w87_c0 + y_w87_c1 + y_w87_c2 + y_w87_c3 + y_w87_c4 + y_w87_c5 + y_w87_c6 + y_w87_c7 + y_w87_c8 + y_w87_c9 + y_w87_c10 + y_w87_c11 + y_w87_c12 + y_w87_c13 + y_w87_c14 + y_w87_c15 + y_w87_c16 + y_w87_c17 + y_w87_c18 + y_w87_c19 + y_w88_c0 + y_w88_c1 + y_w88_c2 + y_w88_c3 + y_w88_c4 + y_w88_c5 + y_w88_c6 + y_w88_c7 + y_w88_c8 + y_w88_c9 + y_w88_c10 + y_w88_c11 + y_w88_c12 + y_w88_c13 + y_w88_c14 + y_w88_c15 + y_w88_c16 + y_w88_c17 + y_w88_c18 + y_w88_c19 + y_w89_c0 + y_w89_c1 + y_w89_c2 + y_w89_c3 + y_w89_c4 + y_w89_c5 + y_w89_c6 + y_w89_c7 + y_w89_c8 + y_w89_c9 + y_w89_c10 + y_w89_c11 + y_w89_c12 + y_w89_c13 + y_w89_c14 + y_w89_c15 + y_w89_c16 + y_w89_c17 + y_w89_c18 + y_w89_c19 + y_w90_c0 + y_w90_c1 + y_w90_c2 + y_w90_c3 + y_w90_c4 + y_w90_c5 + y_w90_c6 + y_w90_c7 + y_w90_c8 + y_w90_c9 + y_w90_c10 + y_w90_c11 + y_w90_c12 + y_w90_c13 + y_w90_c14 + y_w90_c15 + y_w90_c16 + y_w90_c17 + y_w90_c18 + y_w90_c19 + y_w91_c0 + y_w91_c1 + y_w91_c2 + y_w91_c3 + y_w91_c4 + y_w91_c5 + y_w91_c6 + y_w91_c7 + y_w91_c8 + y_w91_c9 + y_w91_c10 + y_w91_c11 + y_w91_c12 + y_w91_c13 + y_w91_c14 + y_w91_c15 + y_w91_c16 + y_w91_c17 + y_w91_c18 + y_w91_c19 + y_w92_c0 + y_w92_c1 + y_w92_c2 + y_w92_c3 + y_w92_c4 + y_w92_c5 + y_w92_c6 + y_w92_c7 + y_w92_c8 + y_w92_c9 + y_w92_c10 + y_w92_c11 + y_w92_c12 + y_w92_c13 + y_w92_c14 + y_w92_c15 + y_w92_c16 + y_w92_c17 + y_w92_c18 + y_w92_c19 + y_w93_c0 + y_w93_c1 + y_w93_c2 + y_w93_c3 + y_w93_c4 + y_w93_c5 + y_w93_c6 + y_w93_c7 + y_w93_c8 + y_w93_c9 + y_w93_c10 + y_w93_c11 + y_w93_c12 + y_w93_c13 + y_w93_c14 + y_w93_c15 + y_w93_c16 + y_w93_c17 + y_w93_c18 + y_w93_c19 + y_w94_c0 + y_w94_c1 + y_w94_c2 + y_w94_c3 + y_w94_c4 + y_w94_c5 + y_w94_c6 + y_w94_c7 + y_w94_c8 + y_w94_c9 + y_w94_c10 + y_w94_c11 + y_w94_c12 + y_w94_c13 + y_w94_c14 + y_w94_c15 + y_w94_c16 + y_w94_c17 + y_w94_c18 + y_w94_c19 + y_w95_c0 + y_w95_c1 + y_w95_c2 + y_w95_c3 + y_w95_c4 + y_w95_c5 + y_w95_c6 + y_w95_c7 + y_w95_c8 + y_w95_c9 + y_w95_c10 + y_w95_c11 + y_w95_c12 + y_w95_c13 + y_w95_c14 + y_w95_c15 + y_w95_c16 + y_w95_c17 + y_w95_c18 + y_w95_c19 + y_w96_c0 + y_w96_c1 + y_w96_c2 + y_w96_c3 + y_w96_c4 + y_w96_c5 + y_w96_c6 + y_w96_c7 + y_w96_c8 + y_w96_c9 + y_w96_c10 + y_w96_c11 + y_w96_c12 + y_w96_c13 + y_w96_c14 + y_w96_c15 + y_w96_c16 + y_w96_c17 + y_w96_c18 + y_w96_c19 + y_w97_c0 + y_w97_c1 + y_w97_c2 + y_w97_c3 + y_w97_c4 + y_w97_c5 + y_w97_c6 + y_w97_c7 + y_w97_c8 + y_w97_c9 + y_w97_c10 + y_w97_c11 + y_w97_c12 + y_w97_c13 + y_w97_c14 + y_w97_c15 + y_w97_c16 + y_w97_c17 + y_w97_c18 + y_w97_c19 + y_w98_c0 + y_w98_c1 + y_w98_c2 + y_w98_c3 + y_w98_c4 + y_w98_c5 + y_w98_c6 + y_w98_c7 + y_w98_c8 + y_w98_c9 + y_w98_c10 + y_w98_c11 + y_w98_c12 + y_w98_c13 + y_w98_c14 + y_w98_c15 + y_w98_c16 + y_w98_c17 + y_w98_c18 + y_w98_c19 + y_w99_c0 + y_w99_c1 + y_w99_c2 + y_w99_c3 + y_w99_c4 + y_w99_c5 + y_w99_c6 + y_w99_c7 + y_w99_c8 + y_w99_c9 + y_w99_c10 + y_w99_c11 + y_w99_c12 + y_w99_c13 + y_w99_c14 + y_w99_c15 + y_w99_c16 + y_w99_c17 + y_w99_c18 + y_w99_c19 - TotalLatency = 0
  cap_cpu_c0: 0.27 x_w0_c0 + 0.16 x_w1_c0 + 0.14 x_w2_c0 + 0.41 x_w3_c0 + 0.46 x_w4_c0 + 0.31 x_w5_c0 + 0.26 x_w6_c0 + 0.43 x_w7_c0 + 0.33 x_w8_c0 + 0.50 x_w9_c0 + 0.29 x_w10_c0 + 0.24 x_w11_c0 + 0.40 x_w12_c0 + 0.11 x_w13_c0 + 0.15 x_w14_c0 + 0.32 x_w15_c0 + 0.11 x_w16_c0 + 0.34 x_w17_c0 + 0.11 x_w18_c0 + 0.24 x_w19_c0 + 0.17 x_w20_c0 + 0.33 x_w21_c0 + 0.37 x_w22_c0 + 0.31 x_w23_c0 + 0.41 x_w24_c0 + 0.43 x_w25_c0 + 0.36 x_w26_c0 + 0.10 x_w27_c0 + 0.13 x_w28_c0 + 0.42 x_w29_c0 + 0.17 x_w30_c0 + 0.41 x_w31_c0 + 0.30 x_w32_c0 + 0.16 x_w33_c0 + 0.12 x_w34_c0 + 0.18 x_w35_c0 + 0.28 x_w36_c0 + 0.23 x_w37_c0 + 0.36 x_w38_c0 + 0.14 x_w39_c0 + 0.16 x_w40_c0 + 0.35 x_w41_c0 + 0.14 x_w42_c0 + 0.24 x_w43_c0 + 0.12 x_w44_c0 + 0.44 x_w45_c0 + 0.22 x_w46_c0 + 0.27 x_w47_c0 + 0.21 x_w48_c0 + 0.25 x_w49_c0 + 0.31 x_w50_c0 + 0.15 x_w51_c0 + 0.35 x_w52_c0 + 0.32 x_w53_c0 + 0.34 x_w54_c0 + 0.36 x_w55_c0 + 0.33 x_w56_c0 + 0.48 x_w57_c0 + 0.30 x_w58_c0 + 0.41 x_w59_c0 + 0.48 x_w60_c0 + 0.31 x_w61_c0 + 0.17 x_w62_c0 + 0.47 x_w63_c0 + 0.29 x_w64_c0 + 0.37 x_w65_c0 + 0.30 x_w66_c0 + 0.14 x_w67_c0 + 0.39 x_w68_c0 + 0.36 x_w69_c0 + 0.24 x_w70_c0 + 0.38 x_w71_c0 + 0.30 x_w72_c0 + 0.31 x_w73_c0 + 0.33 x_w74_c0 + 0.49 x_w75_c0 + 0.26 x_w76_c0 + 0.39 x_w77_c0 + 0.30 x_w78_c0 + 0.44 x_w79_c0 + 0.23 x_w80_c0 + 0.12 x_w81_c0 + 0.50 x_w82_c0 + 0.37 x_w83_c0 + 0.15 x_w84_c0 + 0.33 x_w85_c0 + 0.29 x_w86_c0 + 0.30 x_w87_c0 + 0.26 x_w88_c0 + 0.22 x_w89_c0 + 0.19 x_w90_c0 + 0.25 x_w91_c0 + 0.18 x_w92_c0 + 0.24 x_w93_c0 + 0.19 x_w94_c0 + 0.37 x_w95_c0 + 0.23 x_w96_c0 + 0.39 x_w97_c0 + 0.16 x_w98_c0 + 0.17 x_w99_c0 <= 200

Generals
  x_w0_c0
  x_w0_c1
  x_w0_c2
  x_w0_c3
  x_w0_c4
  x_w0_c5
  x_w0_c6
  x_w0_c7
  x_w0_c8
  x_w0_c9
  x_w0_c10
  x_w0_c11
  x_w0_c12
  x_w0_c13
  x_w0_c14
  x_w0_c15
  x_w0_c16
  x_w0_c17
  x_w0_c18
  x_w0_c19
  x_w1_c0
  x_w1_c1
  x_w1_c2
  x_w1_c3
  x_w1_c4
  x_w1_c5
  x_w1_c6
  x_w1_c7
  x_w1_c8
  x_w1_c9
  x_w1_c10
  x_w1_c11
  x_w1_c12
  x_w1_c13
  x_w1_c14
  x_w1_c15
  x_w1_c16
  x_w1_c17
  x_w1_c18
  x_w1_c19
  x_w2_c0
  x_w2_c1
  x_w2_c2
  x_w2_c3
  x_w2_c4
  x_w2_c5
  x_w2_c6
  x_w2_c7
  x_w2_c8
  x_w2_c9
  x_w2_c10
  x_w2_c11
  x_w2_c12
  x_w2_c13
  x_w2_c14
  x_w2_c15
  x_w2_c16
  x_w2_c17
  x_w2_c18
  x_w2_c19
  x_w3_c0
  x_w3_c1
  x_w3_c2
  x_w3_c3
  x_w3_c4
  x_w3_c5
  x_w3_c6
  x_w3_c7
  x_w3_c8
  x_w3_c9
  x_w3_c10
  x_w3_c11
  x_w3_c12
  x_w3_c13
  x_w3_c14
  x_w3_c15
  x_w3_c16
  x_w3_c17
  x_w3_c18
  x_w3_c19
  x_w4_c0
  x_w4_c1
  x_w4_c2
  x_w4_c3
  x_w4_c4
  x_w4_c5
  x_w4_c6
  x_w4_c7
  x_w4_c8
  x_w4_c9
  x_w4_c10
  x_w4_c11
  x_w4_c12
  x_w4_c13
  x_w4_c14
  x_w4_c15
  x_w4_c16
  x_w4_c17
  x_w4_c18
  x_w4_c19
  x_w5_c0
  x_w5_c1
  x_w5_c2
  x_w5_c3
  x_w5_c4
  x_w5_c5
  x_w5_c6
  x_w5_c7
  x_w5_c8
  x_w5_c9
  x_w5_c10
  x_w5_c11
  x_w5_c12
  x_w5_c13
  x_w5_c14
  x_w5_c15
  x_w5_c16
  x_w5_c17
  x_w5_c18
  x_w5_c19
  x_w6_c0
  x_w6_c1
  x_w6_c2
  x_w6_c3
  x_w6_c4
  x_w6_c5
  x_w6_c6
  x_w6_c7
  x_w6_c8
  x_w6_c9
  x_w6_c10
  x_w6_c11
  x_w6_c12
  x_w6_c13
  x_w6_c14
  x_w6_c15
  x_w6_c16
  x_w6_c17
  x_w6_c18
  x_w6_c19
  x_w7_c0
  x_w7_c1
  x_w7_c2
  x_w7_c3
  x_w7_c4
  x_w7_c5
  x_w7_c6
  x_w7_c7
  x_w7_c8
  x_w7_c9
  x_w7_c10
  x_w7_c11
  x_w7_c12
  x_w7_c13
  x_w7_c14
  x_w7_c15
  x_w7_c16
  x_w7_c17
  x_w7_c18
  x_w7_c19
  x_w8_c0
  x_w8_c1
  x_w8_c2
  x_w8_c3
  x_w8_c4
  x_w8_c5
  x_w8_c6
  x_w8_c7
  x_w8_c8
  x_w8_c9
  x_w8_c10
  x_w8_c11
  x_w8_c12
  x_w8_c13
  x_w8_c14
  x_w8_c15
  x_w8_c16
  x_w8_c17
  x_w8_c18
  x_w8_c19
  x_w9_c0
  x_w9_c1
  x_w9_c2
  x_w9_c3
  x_w9_c4
  x_w9_c5
  x_w9_c6
  x_w9_c7
  x_w9_c8
  x_w9_c9
  x_w9_c10
  x_w9_c11
  x_w9_c12
  x_w9_c13
  x_w9_c14
  x_w9_c15
  x_w9_c16
  x_w9_c17
  x_w9_c18
  x_w9_c19
  x_w10_c0
  x_w10_c1
  x_w10_c2
  x_w10_c3
  x_w10_c4
  x_w10_c5
  x_w10_c6
  x_w10_c7
  x_w10_c8
  x_w10_c9
  x_w10_c10
  x_w10_c11
  x_w10_c12
  x_w10_c13
  x_w10_c14
  x_w10_c15
  x_w10_c16
  x_w10_c17
  x_w10_c18
  x_w10_c19
  x_w11_c0
  x_w11_c1
  x_w11_c2
  x_w11_c3
  x_w11_c4
  x_w11_c5
  x_w11_c6
  x_w11_c7
  x_w11_c8
  x_w11_c9
  x_w11_c10
  x_w11_c11
  x_w11_c12
  x_w11_c13
  x_w11_c14
  x_w11_c15
  x_w11_c16
  x_w11_c17
  x_w11_c18
  x_w11_c19
  x_w12_c0
  x_w12_c1
  x_w12_c2
  x_w12_c3
  x_w12_c4
  x_w12_c5
  x_w12_c6
  x_w12_c7
  x_w12_c8
  x_w12_c9
  x_w12_c10
  x_w12_c11
  x_w12_c12
  x_w12_c13
  x_w12_c14
  x_w12_c15
  x_w12_c16
  x_w12_c17
  x_w12_c18
  x_w12_c19
  x_w13_c0
  x_w13_c1
  x_w13_c2
  x_w13_c3
  x_w13_c4
  x_w13_c5
  x_w13_c6
  x_w13_c7
  x_w13_c8
  x_w13_c9
  x_w13_c10
  x_w13_c11
  x_w13_c12
  x_w13_c13
  x_w13_c14
  x_w13_c15
  x_w13_c16
  x_w13_c17
  x_w13_c18
  x_w13_c19
  x_w14_c0
  x_w14_c1
  x_w14_c2
  x_w14_c3
  x_w14_c4
  x_w14_c5
  x_w14_c6
  x_w14_c7
  x_w14_c8
  x_w14_c9
  x_w14_c10
  x_w14_c11
  x_w14_c12
  x_w14_c13
  x_w14_c14
  x_w14_c15
  x_w14_c16
  x_w14_c17
  x_w14_c18
  x_w14_c19
  x_w15_c0
  x_w15_c1
  x_w15_c2
  x_w15_c3
  x_w15_c4
  x_w15_c5
  x_w15_c6
  x_w15_c7
  x_w15_c8
  x_w15_c9
  x_w15_c10
  x_w15_c11
  x_w15_c12
  x_w15_c13
  x_w15_c14
  x_w15_c15
  x_w15_c16
  x_w15_c17
  x_w15_c18
  x_w15_c19
  x_w16_c0
  x_w16_c1
  x_w16_c2
  x_w16_c3
  x_w16_c4
  x_w16_c5
  x_w16_c6
  x_w16_c7
  x_w16_c8
  x_w16_c9
  x_w16_c10
  x_w16_c11
  x_w16_c12
  x_w16_c13
  x_w16_c14
  x_w16_c15
  x_w16_c16
  x_w16_c17
  x_w16_c18
  x_w16_c19
  x_w17_c0
  x_w17_c1
  x_w17_c2
  x_w17_c3
  x_w17_c4
  x_w17_c5
  x_w17_c6
  x_w17_c7
  x_w17_c8
  x_w17_c9
  x_w17_c10
  x_w17_c11
  x_w17_c12
  x_w17_c13
  x_w17_c14
  x_w17_c15
  x_w17_c16
  x_w17_c17
  x_w17_c18
  x_w17_c19
  x_w18_c0
  x_w18_c1
  x_w18_c2
  x_w18_c3
  x_w18_c4
  x_w18_c5
  x_w18_c6
  x_w18_c7
  x_w18_c8
  x_w18_c9
  x_w18_c10
  x_w18_c11
  x_w18_c12
  x_w18_c13
  x_w18_c14
  x_w18_c15
  x_w18_c16
  x_w18_c17
  x_w18_c18
  x_w18_c19
  x_w19_c0
  x_w19_c1
  x_w19_c2
  x_w19_c3
  x_w19_c4
  x_w19_c5
  x_w19_c6
  x_w19_c7
  x_w19_c8
  x_w19_c9
  x_w19_c10
  x_w19_c11
  x_w19_c12
  x_w19_c13
  x_w19_c14
  x_w19_c15
  x_w19_c16
  x_w19_c17
  x_w19_c18
  x_w19_c19
  x_w20_c0
  x_w20_c1
  x_w20_c2
  x_w20_c3
  x_w20_c4
  x_w20_c5
  x_w20_c6
  x_w20_c7
  x_w20_c8
  x_w20_c9
  x_w20_c10
  x_w20_c11
  x_w20_c12
  x_w20_c13
  x_w20_c14
  x_w20_c15
  x_w20_c16
  x_w20_c17
  x_w20_c18
  x_w20_c19
  x_w21_c0
  x_w21_c1
  x_w21_c2
  x_w21_c3
  x_w21_c4
  x_w21_c5
  x_w21_c6
  x_w21_c7
  x_w21_c8
  x_w21_c9
  x_w21_c10
  x_w21_c11
  x_w21_c12
  x_w21_c13
  x_w21_c14
  x_w21_c15
  x_w21_c16
  x_w21_c17
  x_w21_c18
  x_w21_c19
  x_w22_c0
  x_w22_c1
  x_w22_c2
  x_w22_c3
  x_w22_c4
  x_w22_c5
  x_w22_c6
  x_w22_c7
  x_w22_c8
  x_w22_c9
  x_w22_c10
  x_w22_c11
  x_w22_c12
  x_w22_c13
  x_w22_c14
  x_w22_c15
  x_w22_c16
  x_w22_c17
  x_w22_c18
  x_w22_c19
  x_w23_c0
  x_w23_c1
  x_w23_c2
  x_w23_c3
  x_w23_c4
  x_w23_c5
  x_w23_c6
  x_w23_c7
  x_w23_c8
  x_w23_c9
  x_w23_c10
  x_w23_c11
  x_w23_c12
  x_w23_c13
  x_w23_c14
  x_w23_c15
  x_w23_c16
  x_w23_c17
  x_w23_c18
  x_w23_c19
  x_w24_c0
  x_w24_c1
  x_w24_c2
  x_w24_c3
  x_w24_c4
  x_w24_c5
  x_w24_c6
  x_w24_c7
  x_w24_c8
  x_w24_c9
  x_w24_c10
  x_w24_c11
  x_w24_c12
  x_w24_c13
  x_w24_c14
  x_w24_c15
  x_w24_c16
  x_w24_c17
  x_w24_c18
  x_w24_c19
  x_w25_c0
  x_w25_c1
  x_w25_c2
  x_w25_c3
  x_w25_c4
  x_w25_c5
  x_w25_c6
  x_w25_c7
  x_w25_c8
  x_w25_c9
  x_w25_c10
  x_w25_c11
  x_w25_c12
  x_w25_c13
  x_w25_c14
  x_w25_c15
  x_w25_c16
  x_w25_c17
  x_w25_c18
  x_w25_c19
  x_w26_c0
  x_w26_c1
  x_w26_c2
  x_w26_c3
  x_w26_c4
  x_w26_c5
  x_w26_c6
  x_w26_c7
  x_w26_c8
  x_w26_c9
  x_w26_c10
  x_w26_c11
  x_w26_c12
  x_w26_c13
  x_w26_c14
  x_w26_c15
  x_w26_c16
  x_w26_c17
  x_w26_c18
  x_w26_c19
  x_w27_c0
  x_w27_c1
  x_w27_c2
  x_w27_c3
  x_w27_c4
  x_w27_c5
  x_w27_c6
  x_w27_c7
  x_w27_c8
  x_w27_c9
  x_w27_c10
  x_w27_c11
  x_w27_c12
  x_w27_c13
  x_w27_c14
  x_w27_c15
  x_w27_c16
  x_w27_c17
  x_w27_c18
  x_w27_c19
  x_w28_c0
  x_w28_c1
  x_w28_c2
  x_w28_c3
  x_w28_c4
  x_w28_c5
  x_w28_c6
  x_w28_c7
  x_w28_c8
  x_w28_c9
  x_w28_c10
  x_w28_c11
  x_w28_c12
  x_w28_c13
  x_w28_c14
  x_w28_c15
  x_w28_c16
  x_w28_c17
  x_w28_c18
  x_w28_c19
  x_w29_c0
  x_w29_c1
  x_w29_c2
  x_w29_c3
  x_w29_c4
  x_w29_c5
  x_w29_c6
  x_w29_c7
  x_w29_c8
  x_w29_c9
  x_w29_c10
  x_w29_c11
  x_w29_c12
  x_w29_c13
  x_w29_c14
  x_w29_c15
  x_w29_c16
  x_w29_c17
  x_w29_c18
  x_w29_c19
  x_w30_c0
  x_w30_c1
  x_w30_c2
  x_w30_c3
  x_w30_c4
  x_w30_c5
  x_w30_c6
  x_w30_c7
  x_w30_c8
  x_w30_c9
  x_w30_c10
  x_w30_c11
  x_w30_c12
  x_w30_c13
  x_w30_c14
  x_w30_c15
  x_w30_c16
  x_w30_c17
  x_w30_c18
  x_w30_c19
  x_w31_c0
  x_w31_c1
  x_w31_c2
  x_w31_c3
  x_w31_c4
  x_w31_c5
  x_w31_c6
  x_w31_c7
  x_w31_c8
  x_w31_c9
  x_w31_c10
  x_w31_c11
  x_w31_c12
  x_w31_c13
  x_w31_c14
  x_w31_c15
  x_w31_c16
  x_w31_c17
  x_w31_c18
  x_w31_c19
  x_w32_c0
  x_w32_c1
  x_w32_c2
  x_w32_c3
  x_w32_c4
  x_w32_c5
  x_w32_c6
  x_w32_c7
  x_w32_c8
  x_w32_c9
  x_w32_c10
  x_w32_c11
  x_w32_c12
  x_w32_c13
  x_w32_c14
  x_w32_c15
  x_w32_c16
  x_w32_c17
  x_w32_c18
  x_w32_c19
  x_w33_c0
  x_w33_c1
  x_w33_c2
  x_w33_c3
  x_w33_c4
  x_w33_c5
  x_w33_c6
  x_w33_c7
  x_w33_c8
  x_w33_c9
  x_w33_c10
  x_w33_c11
  x_w33_c12
  x_w33_c13
  x_w33_c14
  x_w33_c15
  x_w33_c16
  x_w33_c17
  x_w33_c18
  x_w33_c19
  x_w34_c0
  x_w34_c1
  x_w34_c2
  x_w34_c3
  x_w34_c4
  x_w34_c5
  x_w34_c6
  x_w34_c7
  x_w34_c8
  x_w34_c9
  x_w34_c10
  x_w34_c11
  x_w34_c12
  x_w34_c13
  x_w34_c14
  x_w34_c15
  x_w34_c16
  x_w34_c17
  x_w34_c18
  x_w34_c19
  x_w35_c0
  x_w35_c1
  x_w35_c2
  x_w35_c3
  x_w35_c4
  x_w35_c5
  x_w35_c6
  x_w35_c7
  x_w35_c8
  x_w35_c9
  x_w35_c10
  x_w35_c11
  x_w35_c12
  x_w35_c13
  x_w35_c14
  x_w35_c15
  x_w35_c16
  x_w35_c17
  x_w35_c18
  x_w35_c19
  x_w36_c0
  x_w36_c1
  x_w36_c2
  x_w36_c3
  x_w36_c4
  x_w36_c5
  x_w36_c6
  x_w36_c7
  x_w36_c8
  x_w36_c9
  x_w36_c10
  x_w36_c11
  x_w36_c12
  x_w36_c13
  x_w36_c14
  x_w36_c15
  x_w36_c16
  x_w36_c17
  x_w36_c18
  x_w36_c19
  x_w37_c0
  x_w37_c1
  x_w37_c2
  x_w37_c3
  x_w37_c4
  x_w37_c5
  x_w37_c6
  x_w37_c7
  x_w37_c8
  x_w37_c9
  x_w37_c10
  x_w37_c11
  x_w37_c12
  x_w37_c13
  x_w37_c14
  x_w37_c15
  x_w37_c16
  x_w37_c17
  x_w37_c18
  x_w37_c19
  x_w38_c0
  x_w38_c1
  x_w38_c2
  x_w38_c3
  x_w38_c4
  x_w38_c5
  x_w38_c6
  x_w38_c7
  x_w38_c8
  x_w38_c9
  x_w38_c10
  x_w38_c11
  x_w38_c12
  x_w38_c13
  x_w38_c14
  x_w38_c15
  x_w38_c16
  x_w38_c17
  x_w38_c18
  x_w38_c19
  x_w39_c0
  x_w39_c1
  x_w39_c2
  x_w39_c3
  x_w39_c4
  x_w39_c5
  x_w39_c6
  x_w39_c7
  x_w39_c8
  x_w39_c9
  x_w39_c10
  x_w39_c11
  x_w39_c12
  x_w39_c13
  x_w39_c14
  x_w39_c15
  x_w39_c16
  x_w39_c17
  x_w39_c18
  x_w39_c19
  x_w40_c0
  x_w40_c1
  x_w40_c2
  x_w40_c3
  x_w40_c4
  x_w40_c5
  x_w40_c6
  x_w40_c7
  x_w40_c8
  x_w40_c9
  x_w40_c10
  x_w40_c11
  x_w40_c12
  x_w40_c13
  x_w40_c14
  x_w40_c15
  x_w40_c16
  x_w40_c17
  x_w40_c18
  x_w40_c19
  x_w41_c0
  x_w41_c1
  x_w41_c2
  x_w41_c3
  x_w41_c4
  x_w41_c5
  x_w41_c6
  x_w41_c7
  x_w41_c8
  x_w41_c9
  x_w41_c10
  x_w41_c11
  x_w41_c12
  x_w41_c13
  x_w41_c14
  x_w41_c15
  x_w41_c16
  x_w41_c17
  x_w41_c18
  x_w41_c19
  x_w42_c0
  x_w42_c1
  x_w42_c2
  x_w42_c3
  x_w42_c4
  x_w42_c5
  x_w42_c6
  x_w42_c7
  x_w42_c8
  x_w42_c9
  x_w42_c10
  x_w42_c11
  x_w42_c12
  x_w42_c13
  x_w42_c14
  x_w42_c15
  x_w42_c16
  x_w42_c17
  x_w42_c18
  x_w42_c19
  x_w43_c0
  x_w43_c1
  x_w43_c2
  x_w43_c3
  x_w43_c4
  x_w43_c5
  x_w43_c6
  x_w43_c7
  x_w43_c8
  x_w43_c9
  x_w43_c10
  x_w43_c11
  x_w43_c12
  x_w43_c13
  x_w43_c14
  x_w43_c15
  x_w43_c16
  x_w43_c17
  x_w43_c18
  x_w43_c19
  x_w44_c0
  x_w44_c1
  x_w44_c2
  x_w44_c3
  x_w44_c4
  x_w44_c5
  x_w44_c6
  x_w44_c7
  x_w44_c8
  x_w44_c9
  x_w44_c10
  x_w44_c11
  x_w44_c12
  x_w44_c13
  x_w44_c14
  x_w44_c15
  x_w44_c16
  x_w44_c17
  x_w44_c18
  x_w44_c19
  x_w45_c0
  x_w45_c1
  x_w45_c2
  x_w45_c3
  x_w45_c4
  x_w45_c5
  x_w45_c6
  x_w45_c7
  x_w45_c8
  x_w45_c9
  x_w45_c10
  x_w45_c11
  x_w45_c12
  x_w45_c13
  x_w45_c14
  x_w45_c15
  x_w45_c16
  x_w45_c17
  x_w45_c18
  x_w45_c19
  x_w46_c0
  x_w46_c1
  x_w46_c2
  x_w46_c3
  x_w46_c4
  x_w46_c5
  x_w46_c6
  x_w46_c7
  x_w46_c8
  x_w46_c9
  x_w46_c10
  x_w46_c11
  x_w46_c12
  x_w46_c13
  x_w46_c14
  x_w46_c15
  x_w46_c16
  x_w46_c17
  x_w46_c18
  x_w46_c19
  x_w47_c0
  x_w47_c1
  x_w47_c2
  x_w47_c3
  x_w47_c4
  x_w47_c5
  x_w47_c6
  x_w47_c7
  x_w47_c8
  x_w47_c9
  x_w47_c10
  x_w47_c11
  x_w47_c12
  x_w47_c13
  x_w47_c14
  x_w47_c15
  x_w47_c16
  x_w47_c17
  x_w47_c18
  x_w47_c19
  x_w48_c0
  x_w48_c1
  x_w48_c2
  x_w48_c3
  x_w48_c4
  x_w48_c5
  x_w48_c6
  x_w48_c7
  x_w48_c8
  x_w48_c9
  x_w48_c10
  x_w48_c11
  x_w48_c12
  x_w48_c13
  x_w48_c14
  x_w48_c15
  x_w48_c16
  x_w48_c17
  x_w48_c18
  x_w48_c19
  x_w49_c0
  x_w49_c1
  x_w49_c2
  x_w49_c3
  x_w49_c4
  x_w49_c5
  x_w49_c6
  x_w49_c7
  x_w49_c8
  x_w49_c9
  x_w49_c10
  x_w49_c11
  x_w49_c12
  x_w49_c13
  x_w49_c14
  x_w49_c15
  x_w49_c16
  x_w49_c17
  x_w49_c18
  x_w49_c19
  x_w50_c0
  x_w50_c1
  x_w50_c2
  x_w50_c3
  x_w50_c4
  x_w50_c5
  x_w50_c6
  x_w50_c7
  x_w50_c8
  x_w50_c9
  x_w50_c10
  x_w50_c11
  x_w50_c12
  x_w50_c13
  x_w50_c14
  x_w50_c15
  x_w50_c16
  x_w50_c17
  x_w50_c18
  x_w50_c19
  x_w51_c0
  x_w51_c1
  x_w51_c2
  x_w51_c3
  x_w51_c4
  x_w51_c5
  x_w51_c6
  x_w51_c7
  x_w51_c8
  x_w51_c9
  x_w51_c10
  x_w51_c11
  x_w51_c12
  x_w51_c13
  x_w51_c14
  x_w51_c15
  x_w51_c16
  x_w51_c17
  x_w51_c18
  x_w51_c19
  x_w52_c0
  x_w52_c1
  x_w52_c2
  x_w52_c3
  x_w52_c4
  x_w52_c5
  x_w52_c6
  x_w52_c7
  x_w52_c8
  x_w52_c9
  x_w52_c10
  x_w52_c11
  x_w52_c12
  x_w52_c13
  x_w52_c14
  x_w52_c15
  x_w52_c16
  x_w52_c17
  x_w52_c18
  x_w52_c19
  x_w53_c0
  x_w53_c1
  x_w53_c2
  x_w53_c3
  x_w53_c4
  x_w53_c5
  x_w53_c6
  x_w53_c7
  x_w53_c8
  x_w53_c9
  x_w53_c10
  x_w53_c11
  x_w53_c12
  x_w53_c13
  x_w53_c14
  x_w53_c15
  x_w53_c16
  x_w53_c17
  x_w53_c18
  x_w53_c19
  x_w54_c0
  x_w54_c1
  x_w54_c2
  x_w54_c3
  x_w54_c4
  x_w54_c5
  x_w54_c6
  x_w54_c7
  x_w54_c8
  x_w54_c9
  x_w54_c10
  x_w54_c11
  x_w54_c12
  x_w54_c13
  x_w54_c14
  x_w54_c15
  x_w54_c16
  x_w54_c17
  x_w54_c18
  x_w54_c19
  x_w55_c0
  x_w55_c1
  x_w55_c2
  x_w55_c3
  x_w55_c4
  x_w55_c5
  x_w55_c6
  x_w55_c7
  x_w55_c8
  x_w55_c9
  x_w55_c10
  x_w55_c11
  x_w55_c12
  x_w55_c13
  x_w55_c14
  x_w55_c15
  x_w55_c16
  x_w55_c17
  x_w55_c18
  x_w55_c19
  x_w56_c0
  x_w56_c1
  x_w56_c2
  x_w56_c3
  x_w56_c4
  x_w56_c5
  x_w56_c6
  x_w56_c7
  x_w56_c8
  x_w56_c9
  x_w56_c10
  x_w56_c11
  x_w56_c12
  x_w56_c13
  x_w56_c14
  x_w56_c15
  x_w56_c16
  x_w56_c17
  x_w56_c18
  x_w56_c19
  x_w57_c0
  x_w57_c1
  x_w57_c2
  x_w57_c3
  x_w57_c4
  x_w57_c5
  x_w57_c6
  x_w57_c7
  x_w57_c8
  x_w57_c9
  x_w57_c10
  x_w57_c11
  x_w57_c12
  x_w57_c13
  x_w57_c14
  x_w57_c15
  x_w57_c16
  x_w57_c17
  x_w57_c18
  x_w57_c19
  x_w58_c0
  x_w58_c1
  x_w58_c2
  x_w58_c3
  x_w58_c4
  x_w58_c5
  x_w58_c6
  x_w58_c7
  x_w58_c8
  x_w58_c9
  x_w58_c10
  x_w58_c11
  x_w58_c12
  x_w58_c13
  x_w58_c14
  x_w58_c15
  x_w58_c16
  x_w58_c17
  x_w58_c18
  x_w58_c19
  x_w59_c0
  x_w59_c1
  x_w59_c2
  x_w59_c3
  x_w59_c4
  x_w59_c5
  x_w59_c6
  x_w59_c7
  x_w59_c8
  x_w59_c9
  x_w59_c10
  x_w59_c11
  x_w59_c12
  x_w59_c13
  x_w59_c14
  x_w59_c15
  x_w59_c16
  x_w59_c17
  x_w59_c18
  x_w59_c19
  x_w60_c0
  x_w60_c1
  x_w60_c2
  x_w60_c3
  x_w60_c4
  x_w60_c5
  x_w60_c6
  x_w60_c7
  x_w60_c8
  x_w60_c9
  x_w60_c10
  x_w60_c11
  x_w60_c12
  x_w60_c13
  x_w60_c14
  x_w60_c15
  x_w60_c16
  x_w60_c17
  x_w60_c18
  x_w60_c19
  x_w61_c0
  x_w61_c1
  x_w61_c2
  x_w61_c3
  x_w61_c4
  x_w61_c5
  x_w61_c6
  x_w61_c7
  x_w61_c8
  x_w61_c9
  x_w61_c10
  x_w61_c11
  x_w61_c12
  x_w61_c13
  x_w61_c14
  x_w61_c15
  x_w61_c16
  x_w61_c17
  x_w61_c18
  x_w61_c19
  x_w62_c0
  x_w62_c1
  x_w62_c2
  x_w62_c3
  x_w62_c4
  x_w62_c5
  x_w62_c6
  x_w62_c7
  x_w62_c8
  x_w62_c9
  x_w62_c10
  x_w62_c11
  x_w62_c12
  x_w62_c13
  x_w62_c14
  x_w62_c15
  x_w62_c16
  x_w62_c17
  x_w62_c18
  x_w62_c19
  x_w63_c0
  x_w63_c1
  x_w63_c2
  x_w63_c3
  x_w63_c4
  x_w63_c5
  x_w63_c6
  x_w63_c7
  x_w63_c8
  x_w63_c9
  x_w63_c10
  x_w63_c11
  x_w63_c12
  x_w63_c13
  x_w63_c14
  x_w63_c15
  x_w63_c16
  x_w63_c17
  x_w63_c18
  x_w63_c19
  x_w64_c0
  x_w64_c1
  x_w64_c2
  x_w64_c3
  x_w64_c4
  x_w64_c5
  x_w64_c6
  x_w64_c7
  x_w64_c8
  x_w64_c9
  x_w64_c10
  x_w64_c11
  x_w64_c12
  x_w64_c13
  x_w64_c14
  x_w64_c15
  x_w64_c16
  x_w64_c17
  x_w64_c18
  x_w64_c19
  x_w65_c0
  x_w65_c1
  x_w65_c2
  x_w65_c3
  x_w65_c4
  x_w65_c5
  x_w65_c6
  x_w65_c7
  x_w65_c8
  x_w65_c9
  x_w65_c10
  x_w65_c11
  x_w65_c12
  x_w65_c13
  x_w65_c14
  x_w65_c15
  x_w65_c16
  x_w65_c17
  x_w65_c18
  x_w65_c19
  x_w66_c0
  x_w66_c1
  x_w66_c2
  x_w66_c3
  x_w66_c4
  x_w66_c5
  x_w66_c6
  x_w66_c7
  x_w66_c8
  x_w66_c9
  x_w66_c10
  x_w66_c11
  x_w66_c12
  x_w66_c13
  x_w66_c14
  x_w66_c15
  x_w66_c16
  x_w66_c17
  x_w66_c18
  x_w66_c19
  x_w67_c0
  x_w67_c1
  x_w67_c2
  x_w67_c3
  x_w67_c4
  x_w67_c5
  x_w67_c6
  x_w67_c7
  x_w67_c8
  x_w67_c9
  x_w67_c10
  x_w67_c11
  x_w67_c12
  x_w67_c13
  x_w67_c14
  x_w67_c15
  x_w67_c16
  x_w67_c17
  x_w67_c18
  x_w67_c19
  x_w68_c0
  x_w68_c1
  x_w68_c2
  x_w68_c3
  x_w68_c4
  x_w68_c5
  x_w68_c6
  x_w68_c7
  x_w68_c8
  x_w68_c9
  x_w68_c10
  x_w68_c11
  x_w68_c12
  x_w68_c13
  x_w68_c14
  x_w68_c15
  x_w68_c16
  x_w68_c17
  x_w68_c18
  x_w68_c19
  x_w69_c0
  x_w69_c1
  x_w69_c2
  x_w69_c3
  x_w69_c4
  x_w69_c5
  x_w69_c6
  x_w69_c7
  x_w69_c8
  x_w69_c9
  x_w69_c10
  x_w69_c11
  x_w69_c12
  x_w69_c13
  x_w69_c14
  x_w69_c15
  x_w69_c16
  x_w69_c17
  x_w69_c18
  x_w69_c19
  x_w70_c0
  x_w70_c1
  x_w70_c2
  x_w70_c3
  x_w70_c4
  x_w70_c5
  x_w70_c6
  x_w70_c7
  x_w70_c8
  x_w70_c9
  x_w70_c10
  x_w70_c11
  x_w70_c12
  x_w70_c13
  x_w70_c14
  x_w70_c15
  x_w70_c16
  x_w70_c17
  x_w70_c18
  x_w70_c19
  x_w71_c0
  x_w71_c1
  x_w71_c2
  x_w71_c3
  x_w71_c4
  x_w71_c5
  x_w71_c6
  x_w71_c7
  x_w71_c8
  x_w71_c9
  x_w71_c10
  x_w71_c11
  x_w71_c12
  x_w71_c13
  x_w71_c14
  x_w71_c15
  x_w71_c16
  x_w71_c17
  x_w71_c18
  x_w71_c19
  x_w72_c0
  x_w72_c1
  x_w72_c2
  x_w72_c3
  x_w72_c4
  x_w72_c5
  x_w72_c6
  x_w72_c7
  x_w72_c8
  x_w72_c9
  x_w72_c10
  x_w72_c11
  x_w72_c12
  x_w72_c13
  x_w72_c14
  x_w72_c15
  x_w72_c16
  x_w72_c17
  x_w72_c18
  x_w72_c19
  x_w73_c0
  x_w73_c1
  x_w73_c2
  x_w73_c3
  x_w73_c4
  x_w73_c5
  x_w73_c6
  x_w73_c7
  x_w73_c8
  x_w73_c9
  x_w73_c10
  x_w73_c11
  x_w73_c12
  x_w73_c13
  x_w73_c14
  x_w73_c15
  x_w73_c16
  x_w73_c17
  x_w73_c18
  x_w73_c19
  x_w74_c0
  x_w74_c1
  x_w74_c2
  x_w74_c3
  x_w74_c4
  x_w74_c5
  x_w74_c6
  x_w74_c7
  x_w74_c8
  x_w74_c9
  x_w74_c10
  x_w74_c11
  x_w74_c12
  x_w74_c13
  x_w74_c14
  x_w74_c15
  x_w74_c16
  x_w74_c17
  x_w74_c18
  x_w74_c19
  x_w75_c0
  x_w75_c1
  x_w75_c2
  x_w75_c3
  x_w75_c4
  x_w75_c5
  x_w75_c6
  x_w75_c7
  x_w75_c8
  x_w75_c9
  x_w75_c10
  x_w75_c11
  x_w75_c12
  x_w75_c13
  x_w75_c14
  x_w75_c15
  x_w75_c16
  x_w75_c17
  x_w75_c18
  x_w75_c19
  x_w76_c0
  x_w76_c1
  x_w76_c2
  x_w76_c3
  x_w76_c4
  x_w76_c5
  x_w76_c6
  x_w76_c7
  x_w76_c8
  x_w76_c9
  x_w76_c10
  x_w76_c11
  x_w76_c12
  x_w76_c13
  x_w76_c14
  x_w76_c15
  x_w76_c16
  x_w76_c17
  x_w76_c18
  x_w76_c19
  x_w77_c0
  x_w77_c1
  x_w77_c2
  x_w77_c3
  x_w77_c4
  x_w77_c5
  x_w77_c6
  x_w77_c7
  x_w77_c8
  x_w77_c9
  x_w77_c10
  x_w77_c11
  x_w77_c12
  x_w77_c13
  x_w77_c14
  x_w77_c15
  x_w77_c16
  x_w77_c17
  x_w77_c18
  x_w77_c19
  x_w78_c0
  x_w78_c1
  x_w78_c2
  x_w78_c3
  x_w78_c4
  x_w78_c5
  x_w78_c6
  x_w78_c7
  x_w78_c8
  x_w78_c9
  x_w78_c10
  x_w78_c11
  x_w78_c12
  x_w78_c13
  x_w78_c14
  x_w78_c15
  x_w78_c16
  x_w78_c17
  x_w78_c18
  x_w78_c19
  x_w79_c0
  x_w79_c1
  x_w79_c2
  x_w79_c3
  x_w79_c4
  x_w79_c5
  x_w79_c6
  x_w79_c7
  x_w79_c8
  x_w79_c9
  x_w79_c10
  x_w79_c11
  x_w79_c12
  x_w79_c13
  x_w79_c14
  x_w79_c15
  x_w79_c16
  x_w79_c17
  x_w79_c18
  x_w79_c19
  x_w80_c0
  x_w80_c1
  x_w80_c2
  x_w80_c3
  x_w80_c4
  x_w80_c5
  x_w80_c6
  x_w80_c7
  x_w80_c8
  x_w80_c9
  x_w80_c10
  x_w80_c11
  x_w80_c12
  x_w80_c13
  x_w80_c14
  x_w80_c15
  x_w80_c16
  x_w80_c17
  x_w80_c18
  x_w80_c19
  x_w81_c0
  x_w81_c1
  x_w81_c2
  x_w81_c3
  x_w81_c4
  x_w81_c5
  x_w81_c6
  x_w81_c7
  x_w81_c8
  x_w81_c9
  x_w81_c10
  x_w81_c11
  x_w81_c12
  x_w81_c13
  x_w81_c14
  x_w81_c15
  x_w81_c16
  x_w81_c17
  x_w81_c18
  x_w81_c19
  x_w82_c0
  x_w82_c1
  x_w82_c2
  x_w82_c3
  x_w82_c4
  x_w82_c5
  x_w82_c6
  x_w82_c7
  x_w82_c8
  x_w82_c9
  x_w82_c10
  x_w82_c11
  x_w82_c12
  x_w82_c13
  x_w82_c14
  x_w82_c15
  x_w82_c16
  x_w82_c17
  x_w82_c18
  x_w82_c19
  x_w83_c0
  x_w83_c1
  x_w83_c2
  x_w83_c3
  x_w83_c4
  x_w83_c5
  x_w83_c6
  x_w83_c7
  x_w83_c8
  x_w83_c9
  x_w83_c10
  x_w83_c11
  x_w83_c12
  x_w83_c13
  x_w83_c14
  x_w83_c15
  x_w83_c16
  x_w83_c17
  x_w83_c18
  x_w83_c19
  x_w84_c0
  x_w84_c1
  x_w84_c2
  x_w84_c3
  x_w84_c4
  x_w84_c5
  x_w84_c6
  x_w84_c7
  x_w84_c8
  x_w84_c9
  x_w84_c10
  x_w84_c11
  x_w84_c12
  x_w84_c13
  x_w84_c14
  x_w84_c15
  x_w84_c16
  x_w84_c17
  x_w84_c18
  x_w84_c19
  x_w85_c0
  x_w85_c1
  x_w85_c2
  x_w85_c3
  x_w85_c4
  x_w85_c5
  x_w85_c6
  x_w85_c7
  x_w85_c8
  x_w85_c9
  x_w85_c10
  x_w85_c11
  x_w85_c12
  x_w85_c13
  x_w85_c14
  x_w85_c15
  x_w85_c16
  x_w85_c17
  x_w85_c18
  x_w85_c19
  x_w86_c0
  x_w86_c1
  x_w86_c2
  x_w86_c3
  x_w86_c4
  x_w86_c5
  x_w86_c6
  x_w86_c7
  x_w86_c8
  x_w86_c9
  x_w86_c10
  x_w86_c11
  x_w86_c12
  x_w86_c13
  x_w86_c14
  x_w86_c15
  x_w86_c16
  x_w86_c17
  x_w86_c18
  x_w86_c19
  x_w87_c0
  x_w87_c1
  x_w87_c2
  x_w87_c3
  x_w87_c4
  x_w87_c5
  x_w87_c6
  x_w87_c7
  x_w87_c8
  x_w87_c9
  x_w87_c10
  x_w87_c11
  x_w87_c12
  x_w87_c13
  x_w87_c14
  x_w87_c15
  x_w87_c16
  x_w87_c17
  x_w87_c18
  x_w87_c19
  x_w88_c0
  x_w88_c1
  x_w88_c2
  x_w88_c3
  x_w88_c4
  x_w88_c5
  x_w88_c6
  x_w88_c7
  x_w88_c8
  x_w88_c9
  x_w88_c10
  x_w88_c11
  x_w88_c12
  x_w88_c13
  x_w88_c14
  x_w88_c15
  x_w88_c16
  x_w88_c17
  x_w88_c18
  x_w88_c19
  x_w89_c0
  x_w89_c1
  x_w89_c2
  x_w89_c3
  x_w89_c4
  x_w89_c5
  x_w89_c6
  x_w89_c7
  x_w89_c8
  x_w89_c9
  x_w89_c10
  x_w89_c11
  x_w89_c12
  x_w89_c13
  x_w89_c14
  x_w89_c15
  x_w89_c16
  x_w89_c17
  x_w89_c18
  x_w89_c19
  x_w90_c0
  x_w90_c1
  x_w90_c2
  x_w90_c3
  x_w90_c4
  x_w90_c5
  x_w90_c6
  x_w90_c7
  x_w90_c8
  x_w90_c9
  x_w90_c10
  x_w90_c11
  x_w90_c12
  x_w90_c13
  x_w90_c14
  x_w90_c15
  x_w90_c16
  x_w90_c17
  x_w90_c18
  x_w90_c19
  x_w91_c0
  x_w91_c1
  x_w91_c2
  x_w91_c3
  x_w91_c4
  x_w91_c5
  x_w91_c6
  x_w91_c7
  x_w91_c8
  x_w91_c9
  x_w91_c10
  x_w91_c11
  x_w91_c12
  x_w91_c13
  x_w91_c14
  x_w91_c15
  x_w91_c16
  x_w91_c17
  x_w91_c18
  x_w91_c19
  x_w92_c0
  x_w92_c1
  x_w92_c2
  x_w92_c3
  x_w92_c4
  x_w92_c5
  x_w92_c6
  x_w92_c7
  x_w92_c8
  x_w92_c9
  x_w92_c10
  x_w92_c11
  x_w92_c12
  x_w92_c13
  x_w92_c14
  x_w92_c15
  x_w92_c16
  x_w92_c17
  x_w92_c18
  x_w92_c19
  x_w93_c0
  x_w93_c1
  x_w93_c2
  x_w93_c3
  x_w93_c4
  x_w93_c5
  x_w93_c6
  x_w93_c7
  x_w93_c8
  x_w93_c9
  x_w93_c10
  x_w93_c11
  x_w93_c12
  x_w93_c13
  x_w93_c14
  x_w93_c15
  x_w93_c16
  x_w93_c17
  x_w93_c18
  x_w93_c19
  x_w94_c0
  x_w94_c1
  x_w94_c2
  x_w94_c3
  x_w94_c4
  x_w94_c5
  x_w94_c6
  x_w94_c7
  x_w94_c8
  x_w94_c9
  x_w94_c10
  x_w94_c11
  x_w94_c12
  x_w94_c13
  x_w94_c14
  x_w94_c15
  x_w94_c16
  x_w94_c17
  x_w94_c18
  x_w94_c19
  x_w95_c0
  x_w95_c1
  x_w95_c2
  x_w95_c3
  x_w95_c4
  x_w95_c5
  x_w95_c6
  x_w95_c7
  x_w95_c8
  x_w95_c9
  x_w95_c10
  x_w95_c11
  x_w95_c12
  x_w95_c13
  x_w95_c14
  x_w95_c15
  x_w95_c16
  x_w95_c17
  x_w95_c18
  x_w95_c19
  x_w96_c0
  x_w96_c1
  x_w96_c2
  x_w96_c3
  x_w96_c4
  x_w96_c5
  x_w96_c6
  x_w96_c7
  x_w96_c8
  x_w96_c9
  x_w96_c10
  x_w96_c11
  x_w96_c12
  x_w96_c13
  x_w96_c14
  x_w96_c15
  x_w96_c16
  x_w96_c17
  x_w96_c18
  x_w96_c19
  x_w97_c0
  x_w97_c1
  x_w97_c2
  x_w97_c3
  x_w97_c4
  x_w97_c5
  x_w97_c6
  x_w97_c7
  x_w97_c8
  x_w97_c9
  x_w97_c10
  x_w97_c11
  x_w97_c12
  x_w97_c13
  x_w97_c14
  x_w97_c15
  x_w97_c16
  x_w97_c17
  x_w97_c18
  x_w97_c19
  x_w98_c0
  x_w98_c1
  x_w98_c2
  x_w98_c3
  x_w98_c4
  x_w98_c5
  x_w98_c6
  x_w98_c7
  x_w98_c8
  x_w98_c9
  x_w98_c10
  x_w98_c11
  x_w98_c12
  x_w98_c13
  x_w98_c14
  x_w98_c15
  x_w98_c16
  x_w98_c17
  x_w98_c18
  x_w98_c19
  x_w99_c0
  x_w99_c1
  x_w99_c2
  x_w99_c3
  x_w99_c4
  x_w99_c5
  x_w99_c6
  x_w99_c7
  x_w99_c8
  x_w99_c9
  x_w99_c10
  x_w99_c11
  x_w99_c12
  x_w99_c13
  x_w99_c14
  x_w99_c15
  x_w99_c16
  x_w99_c17
  x_w99_c18
  x_w99_c19
End