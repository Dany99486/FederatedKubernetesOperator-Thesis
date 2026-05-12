Minimize
  obj: TotalCost_Weighted + TotalLatency_Weighted

Subject To
  w_cost: TotalCost_Weighted - 0.5 TotalCost = 0
  w_lat: TotalLatency_Weighted - 50.0 TotalLatency = 0
  global_budget: TotalCost <= 2500.0
  lat_lin_w0_c0: x_w0_c0 + y_w0_c0 >= 0.0936
  lat_lin_w0_c1: x_w0_c1 + y_w0_c1 >= 0.4664
  lat_lin_w0_c2: x_w0_c2 + y_w0_c2 >= 0.5350
  lat_lin_w0_c3: x_w0_c3 + y_w0_c3 >= 0.1654
  lat_lin_w0_c4: x_w0_c4 + y_w0_c4 >= 0.1366
  lat_lin_w0_c5: x_w0_c5 + y_w0_c5 >= 0.3500
  lat_lin_w0_c6: x_w0_c6 + y_w0_c6 >= 0.0790
  lat_lin_w0_c7: x_w0_c7 + y_w0_c7 >= 0.5066
  lat_lin_w0_c8: x_w0_c8 + y_w0_c8 >= 0.2331
  lat_lin_w0_c9: x_w0_c9 + y_w0_c9 >= 0.4342
  demand_w0: x_w0_c0 + x_w0_c1 + x_w0_c2 + x_w0_c3 + x_w0_c4 + x_w0_c5 + x_w0_c6 + x_w0_c7 + x_w0_c8 + x_w0_c9 = 3
  lat_lin_w1_c0: x_w1_c0 + y_w1_c0 >= 0.7893
  lat_lin_w1_c1: x_w1_c1 + y_w1_c1 >= 0.5853
  lat_lin_w1_c2: x_w1_c2 + y_w1_c2 >= 0.2711
  lat_lin_w1_c3: x_w1_c3 + y_w1_c3 >= 0.1167
  lat_lin_w1_c4: x_w1_c4 + y_w1_c4 >= 1.0237
  lat_lin_w1_c5: x_w1_c5 + y_w1_c5 >= 0.9008
  lat_lin_w1_c6: x_w1_c6 + y_w1_c6 >= 0.0281
  lat_lin_w1_c7: x_w1_c7 + y_w1_c7 >= 0.2434
  lat_lin_w1_c8: x_w1_c8 + y_w1_c8 >= 0.3885
  lat_lin_w1_c9: x_w1_c9 + y_w1_c9 >= 0.6532
  demand_w1: x_w1_c0 + x_w1_c1 + x_w1_c2 + x_w1_c3 + x_w1_c4 + x_w1_c5 + x_w1_c6 + x_w1_c7 + x_w1_c8 + x_w1_c9 = 5
  lat_lin_w2_c0: x_w2_c0 + y_w2_c0 >= 1.2188
  lat_lin_w2_c1: x_w2_c1 + y_w2_c1 >= 0.5192
  lat_lin_w2_c2: x_w2_c2 + y_w2_c2 >= 0.5778
  lat_lin_w2_c3: x_w2_c3 + y_w2_c3 >= 1.5471
  lat_lin_w2_c4: x_w2_c4 + y_w2_c4 >= 0.3785
  lat_lin_w2_c5: x_w2_c5 + y_w2_c5 >= 1.5698
  lat_lin_w2_c6: x_w2_c6 + y_w2_c6 >= 1.0366
  lat_lin_w2_c7: x_w2_c7 + y_w2_c7 >= 0.6672
  lat_lin_w2_c8: x_w2_c8 + y_w2_c8 >= 1.1623
  lat_lin_w2_c9: x_w2_c9 + y_w2_c9 >= 1.3227
  demand_w2: x_w2_c0 + x_w2_c1 + x_w2_c2 + x_w2_c3 + x_w2_c4 + x_w2_c5 + x_w2_c6 + x_w2_c7 + x_w2_c8 + x_w2_c9 = 10
  lat_lin_w3_c0: x_w3_c0 + y_w3_c0 >= 1.7366
  lat_lin_w3_c1: x_w3_c1 + y_w3_c1 >= 0.0083
  lat_lin_w3_c2: x_w3_c2 + y_w3_c2 >= 0.7703
  lat_lin_w3_c3: x_w3_c3 + y_w3_c3 >= 1.4699
  lat_lin_w3_c4: x_w3_c4 + y_w3_c4 >= 0.5250
  lat_lin_w3_c5: x_w3_c5 + y_w3_c5 >= 0.6537
  lat_lin_w3_c6: x_w3_c6 + y_w3_c6 >= 0.5006
  lat_lin_w3_c7: x_w3_c7 + y_w3_c7 >= 0.8703
  lat_lin_w3_c8: x_w3_c8 + y_w3_c8 >= 1.3209
  lat_lin_w3_c9: x_w3_c9 + y_w3_c9 >= 0.1445
  demand_w3: x_w3_c0 + x_w3_c1 + x_w3_c2 + x_w3_c3 + x_w3_c4 + x_w3_c5 + x_w3_c6 + x_w3_c7 + x_w3_c8 + x_w3_c9 = 8
  lat_lin_w4_c0: x_w4_c0 + y_w4_c0 >= 0.2393
  lat_lin_w4_c1: x_w4_c1 + y_w4_c1 >= 1.9942
  lat_lin_w4_c2: x_w4_c2 + y_w4_c2 >= 1.1484
  lat_lin_w4_c3: x_w4_c3 + y_w4_c3 >= 0.0000
  lat_lin_w4_c4: x_w4_c4 + y_w4_c4 >= 1.9405
  lat_lin_w4_c5: x_w4_c5 + y_w4_c5 >= 0.2212
  lat_lin_w4_c6: x_w4_c6 + y_w4_c6 >= 0.8423
  lat_lin_w4_c7: x_w4_c7 + y_w4_c7 >= 0.7683
  lat_lin_w4_c8: x_w4_c8 + y_w4_c8 >= 0.7867
  lat_lin_w4_c9: x_w4_c9 + y_w4_c9 >= 2.0592
  demand_w4: x_w4_c0 + x_w4_c1 + x_w4_c2 + x_w4_c3 + x_w4_c4 + x_w4_c5 + x_w4_c6 + x_w4_c7 + x_w4_c8 + x_w4_c9 = 10
  lat_lin_w5_c0: x_w5_c0 + y_w5_c0 >= 0.0032
  lat_lin_w5_c1: x_w5_c1 + y_w5_c1 >= 1.3687
  lat_lin_w5_c2: x_w5_c2 + y_w5_c2 >= 0.3046
  lat_lin_w5_c3: x_w5_c3 + y_w5_c3 >= 1.9617
  lat_lin_w5_c4: x_w5_c4 + y_w5_c4 >= 0.5441
  lat_lin_w5_c5: x_w5_c5 + y_w5_c5 >= 1.9346
  lat_lin_w5_c6: x_w5_c6 + y_w5_c6 >= 0.6571
  lat_lin_w5_c7: x_w5_c7 + y_w5_c7 >= 0.6213
  lat_lin_w5_c8: x_w5_c8 + y_w5_c8 >= 1.2679
  lat_lin_w5_c9: x_w5_c9 + y_w5_c9 >= 0.3367
  demand_w5: x_w5_c0 + x_w5_c1 + x_w5_c2 + x_w5_c3 + x_w5_c4 + x_w5_c5 + x_w5_c6 + x_w5_c7 + x_w5_c8 + x_w5_c9 = 9
  lat_lin_w6_c0: x_w6_c0 + y_w6_c0 >= 0.4549
  lat_lin_w6_c1: x_w6_c1 + y_w6_c1 >= 0.2752
  lat_lin_w6_c2: x_w6_c2 + y_w6_c2 >= 0.0873
  lat_lin_w6_c3: x_w6_c3 + y_w6_c3 >= 2.2939
  lat_lin_w6_c4: x_w6_c4 + y_w6_c4 >= 0.6427
  lat_lin_w6_c5: x_w6_c5 + y_w6_c5 >= 2.2829
  lat_lin_w6_c6: x_w6_c6 + y_w6_c6 >= 2.7357
  lat_lin_w6_c7: x_w6_c7 + y_w6_c7 >= 1.4108
  lat_lin_w6_c8: x_w6_c8 + y_w6_c8 >= 2.5501
  lat_lin_w6_c9: x_w6_c9 + y_w6_c9 >= 2.2665
  demand_w6: x_w6_c0 + x_w6_c1 + x_w6_c2 + x_w6_c3 + x_w6_c4 + x_w6_c5 + x_w6_c6 + x_w6_c7 + x_w6_c8 + x_w6_c9 = 15
  lat_lin_w7_c0: x_w7_c0 + y_w7_c0 >= 1.3054
  lat_lin_w7_c1: x_w7_c1 + y_w7_c1 >= 1.3682
  lat_lin_w7_c2: x_w7_c2 + y_w7_c2 >= 0.9731
  lat_lin_w7_c3: x_w7_c3 + y_w7_c3 >= 0.5428
  lat_lin_w7_c4: x_w7_c4 + y_w7_c4 >= 0.0093
  lat_lin_w7_c5: x_w7_c5 + y_w7_c5 >= 1.1087
  lat_lin_w7_c6: x_w7_c6 + y_w7_c6 >= 1.2887
  lat_lin_w7_c7: x_w7_c7 + y_w7_c7 >= 1.4605
  lat_lin_w7_c8: x_w7_c8 + y_w7_c8 >= 0.5968
  lat_lin_w7_c9: x_w7_c9 + y_w7_c9 >= 0.3466
  demand_w7: x_w7_c0 + x_w7_c1 + x_w7_c2 + x_w7_c3 + x_w7_c4 + x_w7_c5 + x_w7_c6 + x_w7_c7 + x_w7_c8 + x_w7_c9 = 9
  lat_lin_w8_c0: x_w8_c0 + y_w8_c0 >= 0.4256
  lat_lin_w8_c1: x_w8_c1 + y_w8_c1 >= 0.5180
  lat_lin_w8_c2: x_w8_c2 + y_w8_c2 >= 0.4916
  lat_lin_w8_c3: x_w8_c3 + y_w8_c3 >= 0.1391
  lat_lin_w8_c4: x_w8_c4 + y_w8_c4 >= 1.4851
  lat_lin_w8_c5: x_w8_c5 + y_w8_c5 >= 1.1182
  lat_lin_w8_c6: x_w8_c6 + y_w8_c6 >= 1.7678
  lat_lin_w8_c7: x_w8_c7 + y_w8_c7 >= 1.6319
  lat_lin_w8_c8: x_w8_c8 + y_w8_c8 >= 0.5987
  lat_lin_w8_c9: x_w8_c9 + y_w8_c9 >= 1.8240
  demand_w8: x_w8_c0 + x_w8_c1 + x_w8_c2 + x_w8_c3 + x_w8_c4 + x_w8_c5 + x_w8_c6 + x_w8_c7 + x_w8_c8 + x_w8_c9 = 10
  lat_lin_w9_c0: x_w9_c0 + y_w9_c0 >= 0.6944
  lat_lin_w9_c1: x_w9_c1 + y_w9_c1 >= 1.5011
  lat_lin_w9_c2: x_w9_c2 + y_w9_c2 >= 1.8781
  lat_lin_w9_c3: x_w9_c3 + y_w9_c3 >= 0.7198
  lat_lin_w9_c4: x_w9_c4 + y_w9_c4 >= 0.3342
  lat_lin_w9_c5: x_w9_c5 + y_w9_c5 >= 2.1112
  lat_lin_w9_c6: x_w9_c6 + y_w9_c6 >= 1.0403
  lat_lin_w9_c7: x_w9_c7 + y_w9_c7 >= 0.6880
  lat_lin_w9_c8: x_w9_c8 + y_w9_c8 >= 2.1009
  lat_lin_w9_c9: x_w9_c9 + y_w9_c9 >= 0.9321
  demand_w9: x_w9_c0 + x_w9_c1 + x_w9_c2 + x_w9_c3 + x_w9_c4 + x_w9_c5 + x_w9_c6 + x_w9_c7 + x_w9_c8 + x_w9_c9 = 12
  lat_lin_w10_c0: x_w10_c0 + y_w10_c0 >= 0.5064
  lat_lin_w10_c1: x_w10_c1 + y_w10_c1 >= 0.1356
  lat_lin_w10_c2: x_w10_c2 + y_w10_c2 >= 1.0669
  lat_lin_w10_c3: x_w10_c3 + y_w10_c3 >= 0.0179
  lat_lin_w10_c4: x_w10_c4 + y_w10_c4 >= 1.0871
  lat_lin_w10_c5: x_w10_c5 + y_w10_c5 >= 0.9538
  lat_lin_w10_c6: x_w10_c6 + y_w10_c6 >= 1.6863
  lat_lin_w10_c7: x_w10_c7 + y_w10_c7 >= 1.6978
  lat_lin_w10_c8: x_w10_c8 + y_w10_c8 >= 0.4427
  lat_lin_w10_c9: x_w10_c9 + y_w10_c9 >= 0.4055
  demand_w10: x_w10_c0 + x_w10_c1 + x_w10_c2 + x_w10_c3 + x_w10_c4 + x_w10_c5 + x_w10_c6 + x_w10_c7 + x_w10_c8 + x_w10_c9 = 8
  lat_lin_w11_c0: x_w11_c0 + y_w11_c0 >= 2.9304
  lat_lin_w11_c1: x_w11_c1 + y_w11_c1 >= 2.1680
  lat_lin_w11_c2: x_w11_c2 + y_w11_c2 >= 0.7635
  lat_lin_w11_c3: x_w11_c3 + y_w11_c3 >= 0.2520
  lat_lin_w11_c4: x_w11_c4 + y_w11_c4 >= 0.3776
  lat_lin_w11_c5: x_w11_c5 + y_w11_c5 >= 0.5547
  lat_lin_w11_c6: x_w11_c6 + y_w11_c6 >= 1.8771
  lat_lin_w11_c7: x_w11_c7 + y_w11_c7 >= 2.7537
  lat_lin_w11_c8: x_w11_c8 + y_w11_c8 >= 1.4507
  lat_lin_w11_c9: x_w11_c9 + y_w11_c9 >= 1.8724
  demand_w11: x_w11_c0 + x_w11_c1 + x_w11_c2 + x_w11_c3 + x_w11_c4 + x_w11_c5 + x_w11_c6 + x_w11_c7 + x_w11_c8 + x_w11_c9 = 15
  lat_lin_w12_c0: x_w12_c0 + y_w12_c0 >= 0.1542
  lat_lin_w12_c1: x_w12_c1 + y_w12_c1 >= 0.2630
  lat_lin_w12_c2: x_w12_c2 + y_w12_c2 >= 0.4163
  lat_lin_w12_c3: x_w12_c3 + y_w12_c3 >= 0.1507
  lat_lin_w12_c4: x_w12_c4 + y_w12_c4 >= 0.0315
  lat_lin_w12_c5: x_w12_c5 + y_w12_c5 >= 0.0668
  lat_lin_w12_c6: x_w12_c6 + y_w12_c6 >= 0.4283
  lat_lin_w12_c7: x_w12_c7 + y_w12_c7 >= 0.2821
  lat_lin_w12_c8: x_w12_c8 + y_w12_c8 >= 0.3763
  lat_lin_w12_c9: x_w12_c9 + y_w12_c9 >= 0.8309
  demand_w12: x_w12_c0 + x_w12_c1 + x_w12_c2 + x_w12_c3 + x_w12_c4 + x_w12_c5 + x_w12_c6 + x_w12_c7 + x_w12_c8 + x_w12_c9 = 3
  lat_lin_w13_c0: x_w13_c0 + y_w13_c0 >= 0.5152
  lat_lin_w13_c1: x_w13_c1 + y_w13_c1 >= 0.7175
  lat_lin_w13_c2: x_w13_c2 + y_w13_c2 >= 0.5314
  lat_lin_w13_c3: x_w13_c3 + y_w13_c3 >= 0.2964
  lat_lin_w13_c4: x_w13_c4 + y_w13_c4 >= 1.0430
  lat_lin_w13_c5: x_w13_c5 + y_w13_c5 >= 1.0707
  lat_lin_w13_c6: x_w13_c6 + y_w13_c6 >= 1.0844
  lat_lin_w13_c7: x_w13_c7 + y_w13_c7 >= 0.4220
  lat_lin_w13_c8: x_w13_c8 + y_w13_c8 >= 0.7957
  lat_lin_w13_c9: x_w13_c9 + y_w13_c9 >= 1.5236
  demand_w13: x_w13_c0 + x_w13_c1 + x_w13_c2 + x_w13_c3 + x_w13_c4 + x_w13_c5 + x_w13_c6 + x_w13_c7 + x_w13_c8 + x_w13_c9 = 8
  lat_lin_w14_c0: x_w14_c0 + y_w14_c0 >= 0.2918
  lat_lin_w14_c1: x_w14_c1 + y_w14_c1 >= 0.4316
  lat_lin_w14_c2: x_w14_c2 + y_w14_c2 >= 0.3815
  lat_lin_w14_c3: x_w14_c3 + y_w14_c3 >= 0.4090
  lat_lin_w14_c4: x_w14_c4 + y_w14_c4 >= 0.1575
  lat_lin_w14_c5: x_w14_c5 + y_w14_c5 >= 0.3757
  lat_lin_w14_c6: x_w14_c6 + y_w14_c6 >= 0.5721
  lat_lin_w14_c7: x_w14_c7 + y_w14_c7 >= 0.0589
  lat_lin_w14_c8: x_w14_c8 + y_w14_c8 >= 0.0073
  lat_lin_w14_c9: x_w14_c9 + y_w14_c9 >= 0.3145
  demand_w14: x_w14_c0 + x_w14_c1 + x_w14_c2 + x_w14_c3 + x_w14_c4 + x_w14_c5 + x_w14_c6 + x_w14_c7 + x_w14_c8 + x_w14_c9 = 3
  lat_lin_w15_c0: x_w15_c0 + y_w15_c0 >= 1.5981
  lat_lin_w15_c1: x_w15_c1 + y_w15_c1 >= 1.2032
  lat_lin_w15_c2: x_w15_c2 + y_w15_c2 >= 1.2152
  lat_lin_w15_c3: x_w15_c3 + y_w15_c3 >= 1.2374
  lat_lin_w15_c4: x_w15_c4 + y_w15_c4 >= 1.9042
  lat_lin_w15_c5: x_w15_c5 + y_w15_c5 >= 1.3690
  lat_lin_w15_c6: x_w15_c6 + y_w15_c6 >= 1.6420
  lat_lin_w15_c7: x_w15_c7 + y_w15_c7 >= 0.5590
  lat_lin_w15_c8: x_w15_c8 + y_w15_c8 >= 1.4991
  lat_lin_w15_c9: x_w15_c9 + y_w15_c9 >= 1.7729
  demand_w15: x_w15_c0 + x_w15_c1 + x_w15_c2 + x_w15_c3 + x_w15_c4 + x_w15_c5 + x_w15_c6 + x_w15_c7 + x_w15_c8 + x_w15_c9 = 14
  lat_lin_w16_c0: x_w16_c0 + y_w16_c0 >= 1.8879
  lat_lin_w16_c1: x_w16_c1 + y_w16_c1 >= 0.7383
  lat_lin_w16_c2: x_w16_c2 + y_w16_c2 >= 2.0211
  lat_lin_w16_c3: x_w16_c3 + y_w16_c3 >= 0.6804
  lat_lin_w16_c4: x_w16_c4 + y_w16_c4 >= 2.1232
  lat_lin_w16_c5: x_w16_c5 + y_w16_c5 >= 1.6438
  lat_lin_w16_c6: x_w16_c6 + y_w16_c6 >= 0.0345
  lat_lin_w16_c7: x_w16_c7 + y_w16_c7 >= 1.8972
  lat_lin_w16_c8: x_w16_c8 + y_w16_c8 >= 2.0776
  lat_lin_w16_c9: x_w16_c9 + y_w16_c9 >= 0.8960
  demand_w16: x_w16_c0 + x_w16_c1 + x_w16_c2 + x_w16_c3 + x_w16_c4 + x_w16_c5 + x_w16_c6 + x_w16_c7 + x_w16_c8 + x_w16_c9 = 14
  lat_lin_w17_c0: x_w17_c0 + y_w17_c0 >= 1.1265
  lat_lin_w17_c1: x_w17_c1 + y_w17_c1 >= 1.4041
  lat_lin_w17_c2: x_w17_c2 + y_w17_c2 >= 2.0234
  lat_lin_w17_c3: x_w17_c3 + y_w17_c3 >= 0.1472
  lat_lin_w17_c4: x_w17_c4 + y_w17_c4 >= 1.8020
  lat_lin_w17_c5: x_w17_c5 + y_w17_c5 >= 1.7563
  lat_lin_w17_c6: x_w17_c6 + y_w17_c6 >= 0.2760
  lat_lin_w17_c7: x_w17_c7 + y_w17_c7 >= 0.2307
  lat_lin_w17_c8: x_w17_c8 + y_w17_c8 >= 0.9784
  lat_lin_w17_c9: x_w17_c9 + y_w17_c9 >= 0.2555
  demand_w17: x_w17_c0 + x_w17_c1 + x_w17_c2 + x_w17_c3 + x_w17_c4 + x_w17_c5 + x_w17_c6 + x_w17_c7 + x_w17_c8 + x_w17_c9 = 10
  lat_lin_w18_c0: x_w18_c0 + y_w18_c0 >= 1.1563
  lat_lin_w18_c1: x_w18_c1 + y_w18_c1 >= 2.3044
  lat_lin_w18_c2: x_w18_c2 + y_w18_c2 >= 1.0506
  lat_lin_w18_c3: x_w18_c3 + y_w18_c3 >= 0.8285
  lat_lin_w18_c4: x_w18_c4 + y_w18_c4 >= 0.1791
  lat_lin_w18_c5: x_w18_c5 + y_w18_c5 >= 1.4005
  lat_lin_w18_c6: x_w18_c6 + y_w18_c6 >= 1.2953
  lat_lin_w18_c7: x_w18_c7 + y_w18_c7 >= 1.4012
  lat_lin_w18_c8: x_w18_c8 + y_w18_c8 >= 1.1497
  lat_lin_w18_c9: x_w18_c9 + y_w18_c9 >= 0.2343
  demand_w18: x_w18_c0 + x_w18_c1 + x_w18_c2 + x_w18_c3 + x_w18_c4 + x_w18_c5 + x_w18_c6 + x_w18_c7 + x_w18_c8 + x_w18_c9 = 11
  lat_lin_w19_c0: x_w19_c0 + y_w19_c0 >= 1.2754
  lat_lin_w19_c1: x_w19_c1 + y_w19_c1 >= 0.5877
  lat_lin_w19_c2: x_w19_c2 + y_w19_c2 >= 2.3833
  lat_lin_w19_c3: x_w19_c3 + y_w19_c3 >= 2.4390
  lat_lin_w19_c4: x_w19_c4 + y_w19_c4 >= 1.9239
  lat_lin_w19_c5: x_w19_c5 + y_w19_c5 >= 0.0519
  lat_lin_w19_c6: x_w19_c6 + y_w19_c6 >= 1.1772
  lat_lin_w19_c7: x_w19_c7 + y_w19_c7 >= 0.4632
  lat_lin_w19_c8: x_w19_c8 + y_w19_c8 >= 2.5740
  lat_lin_w19_c9: x_w19_c9 + y_w19_c9 >= 0.1243
  demand_w19: x_w19_c0 + x_w19_c1 + x_w19_c2 + x_w19_c3 + x_w19_c4 + x_w19_c5 + x_w19_c6 + x_w19_c7 + x_w19_c8 + x_w19_c9 = 13
  lat_lin_w20_c0: x_w20_c0 + y_w20_c0 >= 0.8102
  lat_lin_w20_c1: x_w20_c1 + y_w20_c1 >= 0.9122
  lat_lin_w20_c2: x_w20_c2 + y_w20_c2 >= 0.6761
  lat_lin_w20_c3: x_w20_c3 + y_w20_c3 >= 0.2945
  lat_lin_w20_c4: x_w20_c4 + y_w20_c4 >= 0.9464
  lat_lin_w20_c5: x_w20_c5 + y_w20_c5 >= 0.9526
  lat_lin_w20_c6: x_w20_c6 + y_w20_c6 >= 0.7473
  lat_lin_w20_c7: x_w20_c7 + y_w20_c7 >= 0.8416
  lat_lin_w20_c8: x_w20_c8 + y_w20_c8 >= 0.1179
  lat_lin_w20_c9: x_w20_c9 + y_w20_c9 >= 0.7013
  demand_w20: x_w20_c0 + x_w20_c1 + x_w20_c2 + x_w20_c3 + x_w20_c4 + x_w20_c5 + x_w20_c6 + x_w20_c7 + x_w20_c8 + x_w20_c9 = 7
  lat_lin_w21_c0: x_w21_c0 + y_w21_c0 >= 0.0635
  lat_lin_w21_c1: x_w21_c1 + y_w21_c1 >= 0.2516
  lat_lin_w21_c2: x_w21_c2 + y_w21_c2 >= 0.1066
  lat_lin_w21_c3: x_w21_c3 + y_w21_c3 >= 0.2993
  lat_lin_w21_c4: x_w21_c4 + y_w21_c4 >= 0.5388
  lat_lin_w21_c5: x_w21_c5 + y_w21_c5 >= 0.3767
  lat_lin_w21_c6: x_w21_c6 + y_w21_c6 >= 0.5565
  lat_lin_w21_c7: x_w21_c7 + y_w21_c7 >= 0.4249
  lat_lin_w21_c8: x_w21_c8 + y_w21_c8 >= 0.2810
  lat_lin_w21_c9: x_w21_c9 + y_w21_c9 >= 0.1011
  demand_w21: x_w21_c0 + x_w21_c1 + x_w21_c2 + x_w21_c3 + x_w21_c4 + x_w21_c5 + x_w21_c6 + x_w21_c7 + x_w21_c8 + x_w21_c9 = 3
  lat_lin_w22_c0: x_w22_c0 + y_w22_c0 >= 0.7995
  lat_lin_w22_c1: x_w22_c1 + y_w22_c1 >= 1.6544
  lat_lin_w22_c2: x_w22_c2 + y_w22_c2 >= 1.3291
  lat_lin_w22_c3: x_w22_c3 + y_w22_c3 >= 1.0619
  lat_lin_w22_c4: x_w22_c4 + y_w22_c4 >= 0.2310
  lat_lin_w22_c5: x_w22_c5 + y_w22_c5 >= 0.4697
  lat_lin_w22_c6: x_w22_c6 + y_w22_c6 >= 1.2208
  lat_lin_w22_c7: x_w22_c7 + y_w22_c7 >= 1.1996
  lat_lin_w22_c8: x_w22_c8 + y_w22_c8 >= 1.2934
  lat_lin_w22_c9: x_w22_c9 + y_w22_c9 >= 1.7406
  demand_w22: x_w22_c0 + x_w22_c1 + x_w22_c2 + x_w22_c3 + x_w22_c4 + x_w22_c5 + x_w22_c6 + x_w22_c7 + x_w22_c8 + x_w22_c9 = 11
  lat_lin_w23_c0: x_w23_c0 + y_w23_c0 >= 1.0563
  lat_lin_w23_c1: x_w23_c1 + y_w23_c1 >= 0.6169
  lat_lin_w23_c2: x_w23_c2 + y_w23_c2 >= 2.8827
  lat_lin_w23_c3: x_w23_c3 + y_w23_c3 >= 2.4270
  lat_lin_w23_c4: x_w23_c4 + y_w23_c4 >= 0.6706
  lat_lin_w23_c5: x_w23_c5 + y_w23_c5 >= 0.8443
  lat_lin_w23_c6: x_w23_c6 + y_w23_c6 >= 1.4144
  lat_lin_w23_c7: x_w23_c7 + y_w23_c7 >= 0.4432
  lat_lin_w23_c8: x_w23_c8 + y_w23_c8 >= 0.2967
  lat_lin_w23_c9: x_w23_c9 + y_w23_c9 >= 0.3479
  demand_w23: x_w23_c0 + x_w23_c1 + x_w23_c2 + x_w23_c3 + x_w23_c4 + x_w23_c5 + x_w23_c6 + x_w23_c7 + x_w23_c8 + x_w23_c9 = 11
  lat_lin_w24_c0: x_w24_c0 + y_w24_c0 >= 1.2548
  lat_lin_w24_c1: x_w24_c1 + y_w24_c1 >= 0.5341
  lat_lin_w24_c2: x_w24_c2 + y_w24_c2 >= 0.2523
  lat_lin_w24_c3: x_w24_c3 + y_w24_c3 >= 0.0677
  lat_lin_w24_c4: x_w24_c4 + y_w24_c4 >= 0.1483
  lat_lin_w24_c5: x_w24_c5 + y_w24_c5 >= 1.4483
  lat_lin_w24_c6: x_w24_c6 + y_w24_c6 >= 0.1693
  lat_lin_w24_c7: x_w24_c7 + y_w24_c7 >= 0.2441
  lat_lin_w24_c8: x_w24_c8 + y_w24_c8 >= 1.2420
  lat_lin_w24_c9: x_w24_c9 + y_w24_c9 >= 0.6390
  demand_w24: x_w24_c0 + x_w24_c1 + x_w24_c2 + x_w24_c3 + x_w24_c4 + x_w24_c5 + x_w24_c6 + x_w24_c7 + x_w24_c8 + x_w24_c9 = 6
  lat_lin_w25_c0: x_w25_c0 + y_w25_c0 >= 0.4065
  lat_lin_w25_c1: x_w25_c1 + y_w25_c1 >= 2.0979
  lat_lin_w25_c2: x_w25_c2 + y_w25_c2 >= 1.5403
  lat_lin_w25_c3: x_w25_c3 + y_w25_c3 >= 0.7547
  lat_lin_w25_c4: x_w25_c4 + y_w25_c4 >= 1.5468
  lat_lin_w25_c5: x_w25_c5 + y_w25_c5 >= 1.9594
  lat_lin_w25_c6: x_w25_c6 + y_w25_c6 >= 1.2680
  lat_lin_w25_c7: x_w25_c7 + y_w25_c7 >= 2.1795
  lat_lin_w25_c8: x_w25_c8 + y_w25_c8 >= 0.7550
  lat_lin_w25_c9: x_w25_c9 + y_w25_c9 >= 0.4920
  demand_w25: x_w25_c0 + x_w25_c1 + x_w25_c2 + x_w25_c3 + x_w25_c4 + x_w25_c5 + x_w25_c6 + x_w25_c7 + x_w25_c8 + x_w25_c9 = 13
  lat_lin_w26_c0: x_w26_c0 + y_w26_c0 >= 1.2346
  lat_lin_w26_c1: x_w26_c1 + y_w26_c1 >= 0.4213
  lat_lin_w26_c2: x_w26_c2 + y_w26_c2 >= 1.0181
  lat_lin_w26_c3: x_w26_c3 + y_w26_c3 >= 0.7588
  lat_lin_w26_c4: x_w26_c4 + y_w26_c4 >= 2.1726
  lat_lin_w26_c5: x_w26_c5 + y_w26_c5 >= 0.7773
  lat_lin_w26_c6: x_w26_c6 + y_w26_c6 >= 0.2572
  lat_lin_w26_c7: x_w26_c7 + y_w26_c7 >= 2.2495
  lat_lin_w26_c8: x_w26_c8 + y_w26_c8 >= 0.0774
  lat_lin_w26_c9: x_w26_c9 + y_w26_c9 >= 2.0333
  demand_w26: x_w26_c0 + x_w26_c1 + x_w26_c2 + x_w26_c3 + x_w26_c4 + x_w26_c5 + x_w26_c6 + x_w26_c7 + x_w26_c8 + x_w26_c9 = 11
  lat_lin_w27_c0: x_w27_c0 + y_w27_c0 >= 1.2581
  lat_lin_w27_c1: x_w27_c1 + y_w27_c1 >= 2.8753
  lat_lin_w27_c2: x_w27_c2 + y_w27_c2 >= 1.8798
  lat_lin_w27_c3: x_w27_c3 + y_w27_c3 >= 1.6889
  lat_lin_w27_c4: x_w27_c4 + y_w27_c4 >= 0.1247
  lat_lin_w27_c5: x_w27_c5 + y_w27_c5 >= 3.0251
  lat_lin_w27_c6: x_w27_c6 + y_w27_c6 >= 1.2895
  lat_lin_w27_c7: x_w27_c7 + y_w27_c7 >= 0.4391
  lat_lin_w27_c8: x_w27_c8 + y_w27_c8 >= 1.7933
  lat_lin_w27_c9: x_w27_c9 + y_w27_c9 >= 0.6261
  demand_w27: x_w27_c0 + x_w27_c1 + x_w27_c2 + x_w27_c3 + x_w27_c4 + x_w27_c5 + x_w27_c6 + x_w27_c7 + x_w27_c8 + x_w27_c9 = 15
  lat_lin_w28_c0: x_w28_c0 + y_w28_c0 >= 1.1790
  lat_lin_w28_c1: x_w28_c1 + y_w28_c1 >= 1.4564
  lat_lin_w28_c2: x_w28_c2 + y_w28_c2 >= 1.7987
  lat_lin_w28_c3: x_w28_c3 + y_w28_c3 >= 1.7112
  lat_lin_w28_c4: x_w28_c4 + y_w28_c4 >= 1.1684
  lat_lin_w28_c5: x_w28_c5 + y_w28_c5 >= 1.9874
  lat_lin_w28_c6: x_w28_c6 + y_w28_c6 >= 1.3572
  lat_lin_w28_c7: x_w28_c7 + y_w28_c7 >= 2.2297
  lat_lin_w28_c8: x_w28_c8 + y_w28_c8 >= 0.5413
  lat_lin_w28_c9: x_w28_c9 + y_w28_c9 >= 0.5708
  demand_w28: x_w28_c0 + x_w28_c1 + x_w28_c2 + x_w28_c3 + x_w28_c4 + x_w28_c5 + x_w28_c6 + x_w28_c7 + x_w28_c8 + x_w28_c9 = 14
  lat_lin_w29_c0: x_w29_c0 + y_w29_c0 >= 0.9087
  lat_lin_w29_c1: x_w29_c1 + y_w29_c1 >= 0.4443
  lat_lin_w29_c2: x_w29_c2 + y_w29_c2 >= 1.0052
  lat_lin_w29_c3: x_w29_c3 + y_w29_c3 >= 2.2039
  lat_lin_w29_c4: x_w29_c4 + y_w29_c4 >= 0.5886
  lat_lin_w29_c5: x_w29_c5 + y_w29_c5 >= 0.7604
  lat_lin_w29_c6: x_w29_c6 + y_w29_c6 >= 1.3735
  lat_lin_w29_c7: x_w29_c7 + y_w29_c7 >= 0.0991
  lat_lin_w29_c8: x_w29_c8 + y_w29_c8 >= 0.4230
  lat_lin_w29_c9: x_w29_c9 + y_w29_c9 >= 0.1933
  demand_w29: x_w29_c0 + x_w29_c1 + x_w29_c2 + x_w29_c3 + x_w29_c4 + x_w29_c5 + x_w29_c6 + x_w29_c7 + x_w29_c8 + x_w29_c9 = 8
  lat_lin_w30_c0: x_w30_c0 + y_w30_c0 >= 0.3245
  lat_lin_w30_c1: x_w30_c1 + y_w30_c1 >= 0.7891
  lat_lin_w30_c2: x_w30_c2 + y_w30_c2 >= 0.4801
  lat_lin_w30_c3: x_w30_c3 + y_w30_c3 >= 0.7898
  lat_lin_w30_c4: x_w30_c4 + y_w30_c4 >= 0.7533
  lat_lin_w30_c5: x_w30_c5 + y_w30_c5 >= 0.1576
  lat_lin_w30_c6: x_w30_c6 + y_w30_c6 >= 0.2494
  lat_lin_w30_c7: x_w30_c7 + y_w30_c7 >= 0.4486
  lat_lin_w30_c8: x_w30_c8 + y_w30_c8 >= 0.4866
  lat_lin_w30_c9: x_w30_c9 + y_w30_c9 >= 0.5210
  demand_w30: x_w30_c0 + x_w30_c1 + x_w30_c2 + x_w30_c3 + x_w30_c4 + x_w30_c5 + x_w30_c6 + x_w30_c7 + x_w30_c8 + x_w30_c9 = 5
  lat_lin_w31_c0: x_w31_c0 + y_w31_c0 >= 0.6769
  lat_lin_w31_c1: x_w31_c1 + y_w31_c1 >= 0.1255
  lat_lin_w31_c2: x_w31_c2 + y_w31_c2 >= 1.6221
  lat_lin_w31_c3: x_w31_c3 + y_w31_c3 >= 0.8374
  lat_lin_w31_c4: x_w31_c4 + y_w31_c4 >= 0.7246
  lat_lin_w31_c5: x_w31_c5 + y_w31_c5 >= 1.4407
  lat_lin_w31_c6: x_w31_c6 + y_w31_c6 >= 0.6264
  lat_lin_w31_c7: x_w31_c7 + y_w31_c7 >= 0.8098
  lat_lin_w31_c8: x_w31_c8 + y_w31_c8 >= 1.4339
  lat_lin_w31_c9: x_w31_c9 + y_w31_c9 >= 0.7027
  demand_w31: x_w31_c0 + x_w31_c1 + x_w31_c2 + x_w31_c3 + x_w31_c4 + x_w31_c5 + x_w31_c6 + x_w31_c7 + x_w31_c8 + x_w31_c9 = 9
  lat_lin_w32_c0: x_w32_c0 + y_w32_c0 >= 0.3930
  lat_lin_w32_c1: x_w32_c1 + y_w32_c1 >= 0.4825
  lat_lin_w32_c2: x_w32_c2 + y_w32_c2 >= 0.9184
  lat_lin_w32_c3: x_w32_c3 + y_w32_c3 >= 0.4748
  lat_lin_w32_c4: x_w32_c4 + y_w32_c4 >= 0.1777
  lat_lin_w32_c5: x_w32_c5 + y_w32_c5 >= 0.2051
  lat_lin_w32_c6: x_w32_c6 + y_w32_c6 >= 0.0868
  lat_lin_w32_c7: x_w32_c7 + y_w32_c7 >= 0.9644
  lat_lin_w32_c8: x_w32_c8 + y_w32_c8 >= 0.4080
  lat_lin_w32_c9: x_w32_c9 + y_w32_c9 >= 0.8893
  demand_w32: x_w32_c0 + x_w32_c1 + x_w32_c2 + x_w32_c3 + x_w32_c4 + x_w32_c5 + x_w32_c6 + x_w32_c7 + x_w32_c8 + x_w32_c9 = 5
  lat_lin_w33_c0: x_w33_c0 + y_w33_c0 >= 0.0745
  lat_lin_w33_c1: x_w33_c1 + y_w33_c1 >= 0.0033
  lat_lin_w33_c2: x_w33_c2 + y_w33_c2 >= 0.2835
  lat_lin_w33_c3: x_w33_c3 + y_w33_c3 >= 0.0718
  lat_lin_w33_c4: x_w33_c4 + y_w33_c4 >= 0.8805
  lat_lin_w33_c5: x_w33_c5 + y_w33_c5 >= 0.3096
  lat_lin_w33_c6: x_w33_c6 + y_w33_c6 >= 0.3521
  lat_lin_w33_c7: x_w33_c7 + y_w33_c7 >= 0.0778
  lat_lin_w33_c8: x_w33_c8 + y_w33_c8 >= 0.3106
  lat_lin_w33_c9: x_w33_c9 + y_w33_c9 >= 0.6363
  demand_w33: x_w33_c0 + x_w33_c1 + x_w33_c2 + x_w33_c3 + x_w33_c4 + x_w33_c5 + x_w33_c6 + x_w33_c7 + x_w33_c8 + x_w33_c9 = 3
  lat_lin_w34_c0: x_w34_c0 + y_w34_c0 >= 0.8016
  lat_lin_w34_c1: x_w34_c1 + y_w34_c1 >= 0.4211
  lat_lin_w34_c2: x_w34_c2 + y_w34_c2 >= 1.3926
  lat_lin_w34_c3: x_w34_c3 + y_w34_c3 >= 0.3475
  lat_lin_w34_c4: x_w34_c4 + y_w34_c4 >= 1.3129
  lat_lin_w34_c5: x_w34_c5 + y_w34_c5 >= 1.0433
  lat_lin_w34_c6: x_w34_c6 + y_w34_c6 >= 1.0344
  lat_lin_w34_c7: x_w34_c7 + y_w34_c7 >= 0.1627
  lat_lin_w34_c8: x_w34_c8 + y_w34_c8 >= 1.2415
  lat_lin_w34_c9: x_w34_c9 + y_w34_c9 >= 1.2425
  demand_w34: x_w34_c0 + x_w34_c1 + x_w34_c2 + x_w34_c3 + x_w34_c4 + x_w34_c5 + x_w34_c6 + x_w34_c7 + x_w34_c8 + x_w34_c9 = 9
  lat_lin_w35_c0: x_w35_c0 + y_w35_c0 >= 0.9071
  lat_lin_w35_c1: x_w35_c1 + y_w35_c1 >= 0.4945
  lat_lin_w35_c2: x_w35_c2 + y_w35_c2 >= 0.4792
  lat_lin_w35_c3: x_w35_c3 + y_w35_c3 >= 0.5412
  lat_lin_w35_c4: x_w35_c4 + y_w35_c4 >= 0.5819
  lat_lin_w35_c5: x_w35_c5 + y_w35_c5 >= 1.0933
  lat_lin_w35_c6: x_w35_c6 + y_w35_c6 >= 1.2276
  lat_lin_w35_c7: x_w35_c7 + y_w35_c7 >= 0.7663
  lat_lin_w35_c8: x_w35_c8 + y_w35_c8 >= 0.7305
  lat_lin_w35_c9: x_w35_c9 + y_w35_c9 >= 1.1783
  demand_w35: x_w35_c0 + x_w35_c1 + x_w35_c2 + x_w35_c3 + x_w35_c4 + x_w35_c5 + x_w35_c6 + x_w35_c7 + x_w35_c8 + x_w35_c9 = 8
  lat_lin_w36_c0: x_w36_c0 + y_w36_c0 >= 0.0954
  lat_lin_w36_c1: x_w36_c1 + y_w36_c1 >= 0.2760
  lat_lin_w36_c2: x_w36_c2 + y_w36_c2 >= 0.7161
  lat_lin_w36_c3: x_w36_c3 + y_w36_c3 >= 0.1623
  lat_lin_w36_c4: x_w36_c4 + y_w36_c4 >= 0.7080
  lat_lin_w36_c5: x_w36_c5 + y_w36_c5 >= 0.1118
  lat_lin_w36_c6: x_w36_c6 + y_w36_c6 >= 0.6569
  lat_lin_w36_c7: x_w36_c7 + y_w36_c7 >= 0.8421
  lat_lin_w36_c8: x_w36_c8 + y_w36_c8 >= 0.8699
  lat_lin_w36_c9: x_w36_c9 + y_w36_c9 >= 0.5614
  demand_w36: x_w36_c0 + x_w36_c1 + x_w36_c2 + x_w36_c3 + x_w36_c4 + x_w36_c5 + x_w36_c6 + x_w36_c7 + x_w36_c8 + x_w36_c9 = 5
  lat_lin_w37_c0: x_w37_c0 + y_w37_c0 >= 1.5757
  lat_lin_w37_c1: x_w37_c1 + y_w37_c1 >= 0.1369
  lat_lin_w37_c2: x_w37_c2 + y_w37_c2 >= 1.1387
  lat_lin_w37_c3: x_w37_c3 + y_w37_c3 >= 0.5628
  lat_lin_w37_c4: x_w37_c4 + y_w37_c4 >= 0.9100
  lat_lin_w37_c5: x_w37_c5 + y_w37_c5 >= 1.0632
  lat_lin_w37_c6: x_w37_c6 + y_w37_c6 >= 1.0871
  lat_lin_w37_c7: x_w37_c7 + y_w37_c7 >= 1.1523
  lat_lin_w37_c8: x_w37_c8 + y_w37_c8 >= 0.9303
  lat_lin_w37_c9: x_w37_c9 + y_w37_c9 >= 1.4429
  demand_w37: x_w37_c0 + x_w37_c1 + x_w37_c2 + x_w37_c3 + x_w37_c4 + x_w37_c5 + x_w37_c6 + x_w37_c7 + x_w37_c8 + x_w37_c9 = 10
  lat_lin_w38_c0: x_w38_c0 + y_w38_c0 >= 0.1787
  lat_lin_w38_c1: x_w38_c1 + y_w38_c1 >= 0.1697
  lat_lin_w38_c2: x_w38_c2 + y_w38_c2 >= 0.2172
  lat_lin_w38_c3: x_w38_c3 + y_w38_c3 >= 0.2577
  lat_lin_w38_c4: x_w38_c4 + y_w38_c4 >= 0.6518
  lat_lin_w38_c5: x_w38_c5 + y_w38_c5 >= 0.3420
  lat_lin_w38_c6: x_w38_c6 + y_w38_c6 >= 0.7126
  lat_lin_w38_c7: x_w38_c7 + y_w38_c7 >= 0.1336
  lat_lin_w38_c8: x_w38_c8 + y_w38_c8 >= 0.1937
  lat_lin_w38_c9: x_w38_c9 + y_w38_c9 >= 0.1430
  demand_w38: x_w38_c0 + x_w38_c1 + x_w38_c2 + x_w38_c3 + x_w38_c4 + x_w38_c5 + x_w38_c6 + x_w38_c7 + x_w38_c8 + x_w38_c9 = 3
  lat_lin_w39_c0: x_w39_c0 + y_w39_c0 >= 1.2321
  lat_lin_w39_c1: x_w39_c1 + y_w39_c1 >= 1.1310
  lat_lin_w39_c2: x_w39_c2 + y_w39_c2 >= 1.7250
  lat_lin_w39_c3: x_w39_c3 + y_w39_c3 >= 1.1575
  lat_lin_w39_c4: x_w39_c4 + y_w39_c4 >= 1.1168
  lat_lin_w39_c5: x_w39_c5 + y_w39_c5 >= 1.4255
  lat_lin_w39_c6: x_w39_c6 + y_w39_c6 >= 1.2165
  lat_lin_w39_c7: x_w39_c7 + y_w39_c7 >= 1.0829
  lat_lin_w39_c8: x_w39_c8 + y_w39_c8 >= 0.0164
  lat_lin_w39_c9: x_w39_c9 + y_w39_c9 >= 0.8964
  demand_w39: x_w39_c0 + x_w39_c1 + x_w39_c2 + x_w39_c3 + x_w39_c4 + x_w39_c5 + x_w39_c6 + x_w39_c7 + x_w39_c8 + x_w39_c9 = 11
  lat_lin_w40_c0: x_w40_c0 + y_w40_c0 >= 1.4915
  lat_lin_w40_c1: x_w40_c1 + y_w40_c1 >= 1.0613
  lat_lin_w40_c2: x_w40_c2 + y_w40_c2 >= 1.0198
  lat_lin_w40_c3: x_w40_c3 + y_w40_c3 >= 1.6258
  lat_lin_w40_c4: x_w40_c4 + y_w40_c4 >= 0.2048
  lat_lin_w40_c5: x_w40_c5 + y_w40_c5 >= 0.8657
  lat_lin_w40_c6: x_w40_c6 + y_w40_c6 >= 1.6113
  lat_lin_w40_c7: x_w40_c7 + y_w40_c7 >= 1.5709
  lat_lin_w40_c8: x_w40_c8 + y_w40_c8 >= 2.0502
  lat_lin_w40_c9: x_w40_c9 + y_w40_c9 >= 1.4986
  demand_w40: x_w40_c0 + x_w40_c1 + x_w40_c2 + x_w40_c3 + x_w40_c4 + x_w40_c5 + x_w40_c6 + x_w40_c7 + x_w40_c8 + x_w40_c9 = 13
  lat_lin_w41_c0: x_w41_c0 + y_w41_c0 >= 0.2795
  lat_lin_w41_c1: x_w41_c1 + y_w41_c1 >= 0.4468
  lat_lin_w41_c2: x_w41_c2 + y_w41_c2 >= 0.4042
  lat_lin_w41_c3: x_w41_c3 + y_w41_c3 >= 0.2236
  lat_lin_w41_c4: x_w41_c4 + y_w41_c4 >= 0.5264
  lat_lin_w41_c5: x_w41_c5 + y_w41_c5 >= 0.0306
  lat_lin_w41_c6: x_w41_c6 + y_w41_c6 >= 0.0768
  lat_lin_w41_c7: x_w41_c7 + y_w41_c7 >= 0.4426
  lat_lin_w41_c8: x_w41_c8 + y_w41_c8 >= 0.4096
  lat_lin_w41_c9: x_w41_c9 + y_w41_c9 >= 0.1599
  demand_w41: x_w41_c0 + x_w41_c1 + x_w41_c2 + x_w41_c3 + x_w41_c4 + x_w41_c5 + x_w41_c6 + x_w41_c7 + x_w41_c8 + x_w41_c9 = 3
  lat_lin_w42_c0: x_w42_c0 + y_w42_c0 >= 0.1072
  lat_lin_w42_c1: x_w42_c1 + y_w42_c1 >= 0.7206
  lat_lin_w42_c2: x_w42_c2 + y_w42_c2 >= 2.2893
  lat_lin_w42_c3: x_w42_c3 + y_w42_c3 >= 1.8940
  lat_lin_w42_c4: x_w42_c4 + y_w42_c4 >= 0.6741
  lat_lin_w42_c5: x_w42_c5 + y_w42_c5 >= 0.8154
  lat_lin_w42_c6: x_w42_c6 + y_w42_c6 >= 0.8951
  lat_lin_w42_c7: x_w42_c7 + y_w42_c7 >= 1.8310
  lat_lin_w42_c8: x_w42_c8 + y_w42_c8 >= 1.7929
  lat_lin_w42_c9: x_w42_c9 + y_w42_c9 >= 0.9804
  demand_w42: x_w42_c0 + x_w42_c1 + x_w42_c2 + x_w42_c3 + x_w42_c4 + x_w42_c5 + x_w42_c6 + x_w42_c7 + x_w42_c8 + x_w42_c9 = 12
  lat_lin_w43_c0: x_w43_c0 + y_w43_c0 >= 1.0376
  lat_lin_w43_c1: x_w43_c1 + y_w43_c1 >= 0.6790
  lat_lin_w43_c2: x_w43_c2 + y_w43_c2 >= 1.8032
  lat_lin_w43_c3: x_w43_c3 + y_w43_c3 >= 2.3403
  lat_lin_w43_c4: x_w43_c4 + y_w43_c4 >= 2.6535
  lat_lin_w43_c5: x_w43_c5 + y_w43_c5 >= 0.5795
  lat_lin_w43_c6: x_w43_c6 + y_w43_c6 >= 1.6852
  lat_lin_w43_c7: x_w43_c7 + y_w43_c7 >= 0.6794
  lat_lin_w43_c8: x_w43_c8 + y_w43_c8 >= 2.1826
  lat_lin_w43_c9: x_w43_c9 + y_w43_c9 >= 1.3598
  demand_w43: x_w43_c0 + x_w43_c1 + x_w43_c2 + x_w43_c3 + x_w43_c4 + x_w43_c5 + x_w43_c6 + x_w43_c7 + x_w43_c8 + x_w43_c9 = 15
  lat_lin_w44_c0: x_w44_c0 + y_w44_c0 >= 2.0325
  lat_lin_w44_c1: x_w44_c1 + y_w44_c1 >= 2.1605
  lat_lin_w44_c2: x_w44_c2 + y_w44_c2 >= 1.5304
  lat_lin_w44_c3: x_w44_c3 + y_w44_c3 >= 0.4574
  lat_lin_w44_c4: x_w44_c4 + y_w44_c4 >= 0.3475
  lat_lin_w44_c5: x_w44_c5 + y_w44_c5 >= 2.0795
  lat_lin_w44_c6: x_w44_c6 + y_w44_c6 >= 1.6627
  lat_lin_w44_c7: x_w44_c7 + y_w44_c7 >= 2.6670
  lat_lin_w44_c8: x_w44_c8 + y_w44_c8 >= 2.0479
  lat_lin_w44_c9: x_w44_c9 + y_w44_c9 >= 0.0147
  demand_w44: x_w44_c0 + x_w44_c1 + x_w44_c2 + x_w44_c3 + x_w44_c4 + x_w44_c5 + x_w44_c6 + x_w44_c7 + x_w44_c8 + x_w44_c9 = 15
  lat_lin_w45_c0: x_w45_c0 + y_w45_c0 >= 0.6394
  lat_lin_w45_c1: x_w45_c1 + y_w45_c1 >= 0.4847
  lat_lin_w45_c2: x_w45_c2 + y_w45_c2 >= 0.7312
  lat_lin_w45_c3: x_w45_c3 + y_w45_c3 >= 0.7728
  lat_lin_w45_c4: x_w45_c4 + y_w45_c4 >= 0.1367
  lat_lin_w45_c5: x_w45_c5 + y_w45_c5 >= 0.4170
  lat_lin_w45_c6: x_w45_c6 + y_w45_c6 >= 0.3905
  lat_lin_w45_c7: x_w45_c7 + y_w45_c7 >= 0.1323
  lat_lin_w45_c8: x_w45_c8 + y_w45_c8 >= 0.4695
  lat_lin_w45_c9: x_w45_c9 + y_w45_c9 >= 0.8258
  demand_w45: x_w45_c0 + x_w45_c1 + x_w45_c2 + x_w45_c3 + x_w45_c4 + x_w45_c5 + x_w45_c6 + x_w45_c7 + x_w45_c8 + x_w45_c9 = 5
  lat_lin_w46_c0: x_w46_c0 + y_w46_c0 >= 1.3873
  lat_lin_w46_c1: x_w46_c1 + y_w46_c1 >= 1.6209
  lat_lin_w46_c2: x_w46_c2 + y_w46_c2 >= 2.2078
  lat_lin_w46_c3: x_w46_c3 + y_w46_c3 >= 0.6028
  lat_lin_w46_c4: x_w46_c4 + y_w46_c4 >= 1.2124
  lat_lin_w46_c5: x_w46_c5 + y_w46_c5 >= 0.9694
  lat_lin_w46_c6: x_w46_c6 + y_w46_c6 >= 2.1815
  lat_lin_w46_c7: x_w46_c7 + y_w46_c7 >= 1.7475
  lat_lin_w46_c8: x_w46_c8 + y_w46_c8 >= 1.5760
  lat_lin_w46_c9: x_w46_c9 + y_w46_c9 >= 0.4944
  demand_w46: x_w46_c0 + x_w46_c1 + x_w46_c2 + x_w46_c3 + x_w46_c4 + x_w46_c5 + x_w46_c6 + x_w46_c7 + x_w46_c8 + x_w46_c9 = 14
  lat_lin_w47_c0: x_w47_c0 + y_w47_c0 >= 0.9642
  lat_lin_w47_c1: x_w47_c1 + y_w47_c1 >= 0.0184
  lat_lin_w47_c2: x_w47_c2 + y_w47_c2 >= 0.7724
  lat_lin_w47_c3: x_w47_c3 + y_w47_c3 >= 0.6356
  lat_lin_w47_c4: x_w47_c4 + y_w47_c4 >= 0.3010
  lat_lin_w47_c5: x_w47_c5 + y_w47_c5 >= 0.9453
  lat_lin_w47_c6: x_w47_c6 + y_w47_c6 >= 0.5964
  lat_lin_w47_c7: x_w47_c7 + y_w47_c7 >= 0.8123
  lat_lin_w47_c8: x_w47_c8 + y_w47_c8 >= 0.0448
  lat_lin_w47_c9: x_w47_c9 + y_w47_c9 >= 0.9095
  demand_w47: x_w47_c0 + x_w47_c1 + x_w47_c2 + x_w47_c3 + x_w47_c4 + x_w47_c5 + x_w47_c6 + x_w47_c7 + x_w47_c8 + x_w47_c9 = 6
  lat_lin_w48_c0: x_w48_c0 + y_w48_c0 >= 1.7136
  lat_lin_w48_c1: x_w48_c1 + y_w48_c1 >= 0.6828
  lat_lin_w48_c2: x_w48_c2 + y_w48_c2 >= 1.6228
  lat_lin_w48_c3: x_w48_c3 + y_w48_c3 >= 0.8187
  lat_lin_w48_c4: x_w48_c4 + y_w48_c4 >= 0.8032
  lat_lin_w48_c5: x_w48_c5 + y_w48_c5 >= 0.1068
  lat_lin_w48_c6: x_w48_c6 + y_w48_c6 >= 1.4309
  lat_lin_w48_c7: x_w48_c7 + y_w48_c7 >= 0.3710
  lat_lin_w48_c8: x_w48_c8 + y_w48_c8 >= 1.3143
  lat_lin_w48_c9: x_w48_c9 + y_w48_c9 >= 0.1358
  demand_w48: x_w48_c0 + x_w48_c1 + x_w48_c2 + x_w48_c3 + x_w48_c4 + x_w48_c5 + x_w48_c6 + x_w48_c7 + x_w48_c8 + x_w48_c9 = 9
  lat_lin_w49_c0: x_w49_c0 + y_w49_c0 >= 0.8084
  lat_lin_w49_c1: x_w49_c1 + y_w49_c1 >= 0.8004
  lat_lin_w49_c2: x_w49_c2 + y_w49_c2 >= 0.5527
  lat_lin_w49_c3: x_w49_c3 + y_w49_c3 >= 0.9554
  lat_lin_w49_c4: x_w49_c4 + y_w49_c4 >= 0.1104
  lat_lin_w49_c5: x_w49_c5 + y_w49_c5 >= 1.3290
  lat_lin_w49_c6: x_w49_c6 + y_w49_c6 >= 0.8290
  lat_lin_w49_c7: x_w49_c7 + y_w49_c7 >= 1.1732
  lat_lin_w49_c8: x_w49_c8 + y_w49_c8 >= 1.3417
  lat_lin_w49_c9: x_w49_c9 + y_w49_c9 >= 0.0998
  demand_w49: x_w49_c0 + x_w49_c1 + x_w49_c2 + x_w49_c3 + x_w49_c4 + x_w49_c5 + x_w49_c6 + x_w49_c7 + x_w49_c8 + x_w49_c9 = 8
  sum_cost: 1.0714 x_w0_c0 + 7.7552 x_w0_c1 + 7.6228 x_w0_c2 + 5.5590 x_w0_c3 + 7.1836 x_w0_c4 + 4.6142 x_w0_c5 + 7.5426 x_w0_c6 + 4.0532 x_w0_c7 + 5.3426 x_w0_c8 + 5.0368 x_w0_c9 + 1.9219 x_w1_c0 + 3.7029 x_w1_c1 + 3.6342 x_w1_c2 + 4.6556 x_w1_c3 + 3.6460 x_w1_c4 + 5.6233 x_w1_c5 + 6.5509 x_w1_c6 + 3.3379 x_w1_c7 + 5.0044 x_w1_c8 + 5.3562 x_w1_c9 + 1.9931 x_w2_c0 + 5.3807 x_w2_c1 + 4.2798 x_w2_c2 + 6.6095 x_w2_c3 + 3.4161 x_w2_c4 + 6.9218 x_w2_c5 + 3.9282 x_w2_c6 + 5.9860 x_w2_c7 + 7.7909 x_w2_c8 + 6.1139 x_w2_c9 + 1.9809 x_w3_c0 + 7.9532 x_w3_c1 + 3.2770 x_w3_c2 + 3.5296 x_w3_c3 + 5.7649 x_w3_c4 + 3.8258 x_w3_c5 + 6.0450 x_w3_c6 + 4.1103 x_w3_c7 + 3.4382 x_w3_c8 + 4.3642 x_w3_c9 + 1.2913 x_w4_c0 + 7.9586 x_w4_c1 + 5.9871 x_w4_c2 + 3.2257 x_w4_c3 + 5.2910 x_w4_c4 + 3.3183 x_w4_c5 + 3.7269 x_w4_c6 + 6.1547 x_w4_c7 + 5.4493 x_w4_c8 + 5.3162 x_w4_c9 + 1.2324 x_w5_c0 + 7.6059 x_w5_c1 + 7.0545 x_w5_c2 + 5.1750 x_w5_c3 + 5.4877 x_w5_c4 + 6.0156 x_w5_c5 + 4.3826 x_w5_c6 + 7.5252 x_w5_c7 + 5.3150 x_w5_c8 + 4.6580 x_w5_c9 + 1.2852 x_w6_c0 + 7.9718 x_w6_c1 + 3.7830 x_w6_c2 + 7.4691 x_w6_c3 + 7.9072 x_w6_c4 + 7.8892 x_w6_c5 + 6.4483 x_w6_c6 + 4.0795 x_w6_c7 + 3.3673 x_w6_c8 + 3.5600 x_w6_c9 + 1.3854 x_w7_c0 + 7.1045 x_w7_c1 + 6.0839 x_w7_c2 + 7.4033 x_w7_c3 + 5.8924 x_w7_c4 + 5.6583 x_w7_c5 + 6.8699 x_w7_c6 + 7.3868 x_w7_c7 + 3.3916 x_w7_c8 + 4.4351 x_w7_c9 + 1.1746 x_w8_c0 + 5.9567 x_w8_c1 + 6.9469 x_w8_c2 + 5.7986 x_w8_c3 + 4.3722 x_w8_c4 + 5.9555 x_w8_c5 + 6.3167 x_w8_c6 + 4.4968 x_w8_c7 + 6.7712 x_w8_c8 + 5.2410 x_w8_c9 + 0.6135 x_w9_c0 + 5.3942 x_w9_c1 + 6.4125 x_w9_c2 + 4.0683 x_w9_c3 + 7.5825 x_w9_c4 + 4.8079 x_w9_c5 + 3.3759 x_w9_c6 + 3.9119 x_w9_c7 + 7.5990 x_w9_c8 + 4.1788 x_w9_c9 + 0.6850 x_w10_c0 + 6.7445 x_w10_c1 + 4.8648 x_w10_c2 + 6.0660 x_w10_c3 + 7.6758 x_w10_c4 + 3.2924 x_w10_c5 + 6.4511 x_w10_c6 + 4.5281 x_w10_c7 + 7.5717 x_w10_c8 + 7.1918 x_w10_c9 + 1.7831 x_w11_c0 + 4.1939 x_w11_c1 + 3.7468 x_w11_c2 + 6.6635 x_w11_c3 + 5.9434 x_w11_c4 + 6.2820 x_w11_c5 + 5.6994 x_w11_c6 + 5.7074 x_w11_c7 + 7.6818 x_w11_c8 + 3.0025 x_w11_c9 + 0.8017 x_w12_c0 + 5.0190 x_w12_c1 + 3.4232 x_w12_c2 + 7.8245 x_w12_c3 + 6.0900 x_w12_c4 + 4.1946 x_w12_c5 + 3.0038 x_w12_c6 + 3.7233 x_w12_c7 + 5.7413 x_w12_c8 + 4.2816 x_w12_c9 + 0.6265 x_w13_c0 + 5.2028 x_w13_c1 + 5.9216 x_w13_c2 + 7.3030 x_w13_c3 + 3.0633 x_w13_c4 + 5.8902 x_w13_c5 + 5.0549 x_w13_c6 + 3.3464 x_w13_c7 + 4.7327 x_w13_c8 + 6.0430 x_w13_c9 + 1.0353 x_w14_c0 + 5.4091 x_w14_c1 + 4.0035 x_w14_c2 + 3.1661 x_w14_c3 + 5.7371 x_w14_c4 + 5.1885 x_w14_c5 + 7.8281 x_w14_c6 + 5.8469 x_w14_c7 + 5.6385 x_w14_c8 + 3.7227 x_w14_c9 + 1.9622 x_w15_c0 + 5.6689 x_w15_c1 + 6.1192 x_w15_c2 + 5.4353 x_w15_c3 + 6.3565 x_w15_c4 + 7.0600 x_w15_c5 + 6.8258 x_w15_c6 + 6.3615 x_w15_c7 + 3.8327 x_w15_c8 + 3.1478 x_w15_c9 + 0.6947 x_w16_c0 + 4.7365 x_w16_c1 + 3.6505 x_w16_c2 + 5.3684 x_w16_c3 + 4.1076 x_w16_c4 + 5.8277 x_w16_c5 + 4.6877 x_w16_c6 + 3.3385 x_w16_c7 + 4.7230 x_w16_c8 + 6.2094 x_w16_c9 + 0.7287 x_w17_c0 + 4.3662 x_w17_c1 + 5.7676 x_w17_c2 + 4.1025 x_w17_c3 + 7.4968 x_w17_c4 + 3.9780 x_w17_c5 + 5.3252 x_w17_c6 + 6.4598 x_w17_c7 + 6.0453 x_w17_c8 + 4.8520 x_w17_c9 + 1.3996 x_w18_c0 + 5.0170 x_w18_c1 + 5.1026 x_w18_c2 + 7.6327 x_w18_c3 + 6.5701 x_w18_c4 + 5.6626 x_w18_c5 + 3.7291 x_w18_c6 + 6.0326 x_w18_c7 + 6.1805 x_w18_c8 + 7.0726 x_w18_c9 + 1.8129 x_w19_c0 + 6.4445 x_w19_c1 + 5.1647 x_w19_c2 + 6.4774 x_w19_c3 + 5.0973 x_w19_c4 + 4.5735 x_w19_c5 + 3.4785 x_w19_c6 + 4.7482 x_w19_c7 + 6.7247 x_w19_c8 + 5.7157 x_w19_c9 + 1.0851 x_w20_c0 + 4.7539 x_w20_c1 + 4.7252 x_w20_c2 + 3.4009 x_w20_c3 + 5.4408 x_w20_c4 + 4.0300 x_w20_c5 + 4.5608 x_w20_c6 + 4.3989 x_w20_c7 + 3.4060 x_w20_c8 + 3.7760 x_w20_c9 + 1.5694 x_w21_c0 + 3.8742 x_w21_c1 + 5.8162 x_w21_c2 + 6.2684 x_w21_c3 + 4.5981 x_w21_c4 + 6.2354 x_w21_c5 + 4.4229 x_w21_c6 + 6.2635 x_w21_c7 + 5.8799 x_w21_c8 + 7.0052 x_w21_c9 + 1.6419 x_w22_c0 + 5.2942 x_w22_c1 + 4.2686 x_w22_c2 + 6.3361 x_w22_c3 + 3.5443 x_w22_c4 + 6.3394 x_w22_c5 + 6.0147 x_w22_c6 + 6.9581 x_w22_c7 + 7.3246 x_w22_c8 + 6.3537 x_w22_c9 + 1.3741 x_w23_c0 + 4.0852 x_w23_c1 + 4.7146 x_w23_c2 + 5.6808 x_w23_c3 + 5.1687 x_w23_c4 + 5.0464 x_w23_c5 + 5.6542 x_w23_c6 + 3.3290 x_w23_c7 + 5.8887 x_w23_c8 + 3.2826 x_w23_c9 + 1.3238 x_w24_c0 + 5.7379 x_w24_c1 + 7.6328 x_w24_c2 + 4.5460 x_w24_c3 + 6.2755 x_w24_c4 + 5.8882 x_w24_c5 + 5.8490 x_w24_c6 + 3.5566 x_w24_c7 + 3.7140 x_w24_c8 + 5.8224 x_w24_c9 + 1.7313 x_w25_c0 + 4.4016 x_w25_c1 + 3.2403 x_w25_c2 + 5.6886 x_w25_c3 + 6.6205 x_w25_c4 + 6.4710 x_w25_c5 + 3.5999 x_w25_c6 + 5.3188 x_w25_c7 + 4.7421 x_w25_c8 + 3.8786 x_w25_c9 + 0.9947 x_w26_c0 + 7.9156 x_w26_c1 + 7.1732 x_w26_c2 + 7.3455 x_w26_c3 + 7.4454 x_w26_c4 + 3.9080 x_w26_c5 + 5.9143 x_w26_c6 + 5.9976 x_w26_c7 + 4.6145 x_w26_c8 + 5.7167 x_w26_c9 + 0.7328 x_w27_c0 + 5.9009 x_w27_c1 + 3.9402 x_w27_c2 + 4.2086 x_w27_c3 + 3.4618 x_w27_c4 + 7.9241 x_w27_c5 + 6.7360 x_w27_c6 + 6.3349 x_w27_c7 + 6.3599 x_w27_c8 + 4.3117 x_w27_c9 + 1.2187 x_w28_c0 + 3.5184 x_w28_c1 + 4.8934 x_w28_c2 + 6.1447 x_w28_c3 + 5.3797 x_w28_c4 + 4.4763 x_w28_c5 + 6.0644 x_w28_c6 + 7.2475 x_w28_c7 + 6.2913 x_w28_c8 + 5.1645 x_w28_c9 + 0.9254 x_w29_c0 + 4.0596 x_w29_c1 + 7.7771 x_w29_c2 + 6.0094 x_w29_c3 + 5.1671 x_w29_c4 + 6.5369 x_w29_c5 + 5.6836 x_w29_c6 + 4.7551 x_w29_c7 + 6.4647 x_w29_c8 + 6.2912 x_w29_c9 + 1.9877 x_w30_c0 + 6.2611 x_w30_c1 + 6.4204 x_w30_c2 + 3.6622 x_w30_c3 + 5.7060 x_w30_c4 + 7.8735 x_w30_c5 + 4.6414 x_w30_c6 + 3.0039 x_w30_c7 + 6.0359 x_w30_c8 + 6.0372 x_w30_c9 + 1.7591 x_w31_c0 + 5.5550 x_w31_c1 + 6.9354 x_w31_c2 + 4.7361 x_w31_c3 + 3.0706 x_w31_c4 + 5.6399 x_w31_c5 + 7.3506 x_w31_c6 + 3.0319 x_w31_c7 + 6.0166 x_w31_c8 + 7.6255 x_w31_c9 + 1.4634 x_w32_c0 + 3.2528 x_w32_c1 + 7.2789 x_w32_c2 + 3.0989 x_w32_c3 + 6.3642 x_w32_c4 + 4.8994 x_w32_c5 + 7.9270 x_w32_c6 + 5.1005 x_w32_c7 + 4.8233 x_w32_c8 + 6.8910 x_w32_c9 + 1.8709 x_w33_c0 + 6.0601 x_w33_c1 + 7.1374 x_w33_c2 + 7.3311 x_w33_c3 + 5.5415 x_w33_c4 + 5.4672 x_w33_c5 + 3.9540 x_w33_c6 + 4.2490 x_w33_c7 + 5.2021 x_w33_c8 + 5.0114 x_w33_c9 + 0.6946 x_w34_c0 + 3.7823 x_w34_c1 + 4.2785 x_w34_c2 + 6.3877 x_w34_c3 + 6.8925 x_w34_c4 + 4.7643 x_w34_c5 + 5.1427 x_w34_c6 + 4.5592 x_w34_c7 + 5.6395 x_w34_c8 + 5.2168 x_w34_c9 + 1.6407 x_w35_c0 + 4.4379 x_w35_c1 + 6.3040 x_w35_c2 + 4.5113 x_w35_c3 + 4.5308 x_w35_c4 + 4.4742 x_w35_c5 + 7.7696 x_w35_c6 + 7.7200 x_w35_c7 + 6.9700 x_w35_c8 + 6.4123 x_w35_c9 + 1.3836 x_w36_c0 + 7.7344 x_w36_c1 + 6.2042 x_w36_c2 + 4.6233 x_w36_c3 + 6.3607 x_w36_c4 + 4.7868 x_w36_c5 + 5.3565 x_w36_c6 + 4.3155 x_w36_c7 + 6.4064 x_w36_c8 + 6.1253 x_w36_c9 + 1.6832 x_w37_c0 + 3.5109 x_w37_c1 + 4.7978 x_w37_c2 + 6.2127 x_w37_c3 + 3.9987 x_w37_c4 + 6.1398 x_w37_c5 + 6.3863 x_w37_c6 + 7.2283 x_w37_c7 + 6.5050 x_w37_c8 + 7.4934 x_w37_c9 + 1.5032 x_w38_c0 + 5.1844 x_w38_c1 + 5.7999 x_w38_c2 + 3.3444 x_w38_c3 + 6.2718 x_w38_c4 + 5.1175 x_w38_c5 + 7.1079 x_w38_c6 + 3.1904 x_w38_c7 + 5.7970 x_w38_c8 + 6.8029 x_w38_c9 + 1.8867 x_w39_c0 + 7.5847 x_w39_c1 + 4.5441 x_w39_c2 + 6.7024 x_w39_c3 + 5.7518 x_w39_c4 + 6.8212 x_w39_c5 + 6.5229 x_w39_c6 + 5.0817 x_w39_c7 + 4.6521 x_w39_c8 + 5.0895 x_w39_c9 + 1.4383 x_w40_c0 + 5.0171 x_w40_c1 + 3.0981 x_w40_c2 + 5.0183 x_w40_c3 + 4.5894 x_w40_c4 + 7.9809 x_w40_c5 + 5.2367 x_w40_c6 + 7.2650 x_w40_c7 + 4.7918 x_w40_c8 + 4.6146 x_w40_c9 + 1.3399 x_w41_c0 + 4.6143 x_w41_c1 + 4.2988 x_w41_c2 + 5.7194 x_w41_c3 + 7.1486 x_w41_c4 + 5.9840 x_w41_c5 + 7.0762 x_w41_c6 + 5.2077 x_w41_c7 + 5.0059 x_w41_c8 + 5.9982 x_w41_c9 + 0.7875 x_w42_c0 + 4.6910 x_w42_c1 + 5.6128 x_w42_c2 + 6.2410 x_w42_c3 + 6.3142 x_w42_c4 + 4.4144 x_w42_c5 + 7.5014 x_w42_c6 + 5.3982 x_w42_c7 + 5.5671 x_w42_c8 + 3.4452 x_w42_c9 + 1.3802 x_w43_c0 + 6.3400 x_w43_c1 + 3.6019 x_w43_c2 + 7.4702 x_w43_c3 + 5.9354 x_w43_c4 + 3.5019 x_w43_c5 + 6.6352 x_w43_c6 + 6.0211 x_w43_c7 + 6.7954 x_w43_c8 + 6.9941 x_w43_c9 + 1.2354 x_w44_c0 + 5.8116 x_w44_c1 + 6.4701 x_w44_c2 + 5.2562 x_w44_c3 + 6.2957 x_w44_c4 + 5.1550 x_w44_c5 + 3.9604 x_w44_c6 + 6.0799 x_w44_c7 + 3.1940 x_w44_c8 + 3.6633 x_w44_c9 + 1.4095 x_w45_c0 + 3.0361 x_w45_c1 + 6.0941 x_w45_c2 + 3.4850 x_w45_c3 + 6.2834 x_w45_c4 + 3.7861 x_w45_c5 + 5.4752 x_w45_c6 + 7.4448 x_w45_c7 + 4.7269 x_w45_c8 + 5.0583 x_w45_c9 + 1.1028 x_w46_c0 + 6.6559 x_w46_c1 + 5.4813 x_w46_c2 + 6.6324 x_w46_c3 + 7.7004 x_w46_c4 + 6.5354 x_w46_c5 + 5.2544 x_w46_c6 + 5.3855 x_w46_c7 + 6.1616 x_w46_c8 + 6.2971 x_w46_c9 + 1.7646 x_w47_c0 + 7.7545 x_w47_c1 + 6.4628 x_w47_c2 + 4.8378 x_w47_c3 + 4.6368 x_w47_c4 + 3.1047 x_w47_c5 + 3.5087 x_w47_c6 + 7.4791 x_w47_c7 + 5.8123 x_w47_c8 + 7.0441 x_w47_c9 + 1.6244 x_w48_c0 + 3.1519 x_w48_c1 + 6.0462 x_w48_c2 + 4.7660 x_w48_c3 + 3.3978 x_w48_c4 + 4.6047 x_w48_c5 + 4.3204 x_w48_c6 + 6.7440 x_w48_c7 + 3.2759 x_w48_c8 + 3.4641 x_w48_c9 + 1.4988 x_w49_c0 + 5.7912 x_w49_c1 + 6.2936 x_w49_c2 + 4.6729 x_w49_c3 + 6.5267 x_w49_c4 + 5.0991 x_w49_c5 + 6.0468 x_w49_c6 + 6.5635 x_w49_c7 + 4.4758 x_w49_c8 + 6.6238 x_w49_c9 - TotalCost = 0
  sum_lat: y_w0_c0 + y_w0_c1 + y_w0_c2 + y_w0_c3 + y_w0_c4 + y_w0_c5 + y_w0_c6 + y_w0_c7 + y_w0_c8 + y_w0_c9 + y_w1_c0 + y_w1_c1 + y_w1_c2 + y_w1_c3 + y_w1_c4 + y_w1_c5 + y_w1_c6 + y_w1_c7 + y_w1_c8 + y_w1_c9 + y_w2_c0 + y_w2_c1 + y_w2_c2 + y_w2_c3 + y_w2_c4 + y_w2_c5 + y_w2_c6 + y_w2_c7 + y_w2_c8 + y_w2_c9 + y_w3_c0 + y_w3_c1 + y_w3_c2 + y_w3_c3 + y_w3_c4 + y_w3_c5 + y_w3_c6 + y_w3_c7 + y_w3_c8 + y_w3_c9 + y_w4_c0 + y_w4_c1 + y_w4_c2 + y_w4_c3 + y_w4_c4 + y_w4_c5 + y_w4_c6 + y_w4_c7 + y_w4_c8 + y_w4_c9 + y_w5_c0 + y_w5_c1 + y_w5_c2 + y_w5_c3 + y_w5_c4 + y_w5_c5 + y_w5_c6 + y_w5_c7 + y_w5_c8 + y_w5_c9 + y_w6_c0 + y_w6_c1 + y_w6_c2 + y_w6_c3 + y_w6_c4 + y_w6_c5 + y_w6_c6 + y_w6_c7 + y_w6_c8 + y_w6_c9 + y_w7_c0 + y_w7_c1 + y_w7_c2 + y_w7_c3 + y_w7_c4 + y_w7_c5 + y_w7_c6 + y_w7_c7 + y_w7_c8 + y_w7_c9 + y_w8_c0 + y_w8_c1 + y_w8_c2 + y_w8_c3 + y_w8_c4 + y_w8_c5 + y_w8_c6 + y_w8_c7 + y_w8_c8 + y_w8_c9 + y_w9_c0 + y_w9_c1 + y_w9_c2 + y_w9_c3 + y_w9_c4 + y_w9_c5 + y_w9_c6 + y_w9_c7 + y_w9_c8 + y_w9_c9 + y_w10_c0 + y_w10_c1 + y_w10_c2 + y_w10_c3 + y_w10_c4 + y_w10_c5 + y_w10_c6 + y_w10_c7 + y_w10_c8 + y_w10_c9 + y_w11_c0 + y_w11_c1 + y_w11_c2 + y_w11_c3 + y_w11_c4 + y_w11_c5 + y_w11_c6 + y_w11_c7 + y_w11_c8 + y_w11_c9 + y_w12_c0 + y_w12_c1 + y_w12_c2 + y_w12_c3 + y_w12_c4 + y_w12_c5 + y_w12_c6 + y_w12_c7 + y_w12_c8 + y_w12_c9 + y_w13_c0 + y_w13_c1 + y_w13_c2 + y_w13_c3 + y_w13_c4 + y_w13_c5 + y_w13_c6 + y_w13_c7 + y_w13_c8 + y_w13_c9 + y_w14_c0 + y_w14_c1 + y_w14_c2 + y_w14_c3 + y_w14_c4 + y_w14_c5 + y_w14_c6 + y_w14_c7 + y_w14_c8 + y_w14_c9 + y_w15_c0 + y_w15_c1 + y_w15_c2 + y_w15_c3 + y_w15_c4 + y_w15_c5 + y_w15_c6 + y_w15_c7 + y_w15_c8 + y_w15_c9 + y_w16_c0 + y_w16_c1 + y_w16_c2 + y_w16_c3 + y_w16_c4 + y_w16_c5 + y_w16_c6 + y_w16_c7 + y_w16_c8 + y_w16_c9 + y_w17_c0 + y_w17_c1 + y_w17_c2 + y_w17_c3 + y_w17_c4 + y_w17_c5 + y_w17_c6 + y_w17_c7 + y_w17_c8 + y_w17_c9 + y_w18_c0 + y_w18_c1 + y_w18_c2 + y_w18_c3 + y_w18_c4 + y_w18_c5 + y_w18_c6 + y_w18_c7 + y_w18_c8 + y_w18_c9 + y_w19_c0 + y_w19_c1 + y_w19_c2 + y_w19_c3 + y_w19_c4 + y_w19_c5 + y_w19_c6 + y_w19_c7 + y_w19_c8 + y_w19_c9 + y_w20_c0 + y_w20_c1 + y_w20_c2 + y_w20_c3 + y_w20_c4 + y_w20_c5 + y_w20_c6 + y_w20_c7 + y_w20_c8 + y_w20_c9 + y_w21_c0 + y_w21_c1 + y_w21_c2 + y_w21_c3 + y_w21_c4 + y_w21_c5 + y_w21_c6 + y_w21_c7 + y_w21_c8 + y_w21_c9 + y_w22_c0 + y_w22_c1 + y_w22_c2 + y_w22_c3 + y_w22_c4 + y_w22_c5 + y_w22_c6 + y_w22_c7 + y_w22_c8 + y_w22_c9 + y_w23_c0 + y_w23_c1 + y_w23_c2 + y_w23_c3 + y_w23_c4 + y_w23_c5 + y_w23_c6 + y_w23_c7 + y_w23_c8 + y_w23_c9 + y_w24_c0 + y_w24_c1 + y_w24_c2 + y_w24_c3 + y_w24_c4 + y_w24_c5 + y_w24_c6 + y_w24_c7 + y_w24_c8 + y_w24_c9 + y_w25_c0 + y_w25_c1 + y_w25_c2 + y_w25_c3 + y_w25_c4 + y_w25_c5 + y_w25_c6 + y_w25_c7 + y_w25_c8 + y_w25_c9 + y_w26_c0 + y_w26_c1 + y_w26_c2 + y_w26_c3 + y_w26_c4 + y_w26_c5 + y_w26_c6 + y_w26_c7 + y_w26_c8 + y_w26_c9 + y_w27_c0 + y_w27_c1 + y_w27_c2 + y_w27_c3 + y_w27_c4 + y_w27_c5 + y_w27_c6 + y_w27_c7 + y_w27_c8 + y_w27_c9 + y_w28_c0 + y_w28_c1 + y_w28_c2 + y_w28_c3 + y_w28_c4 + y_w28_c5 + y_w28_c6 + y_w28_c7 + y_w28_c8 + y_w28_c9 + y_w29_c0 + y_w29_c1 + y_w29_c2 + y_w29_c3 + y_w29_c4 + y_w29_c5 + y_w29_c6 + y_w29_c7 + y_w29_c8 + y_w29_c9 + y_w30_c0 + y_w30_c1 + y_w30_c2 + y_w30_c3 + y_w30_c4 + y_w30_c5 + y_w30_c6 + y_w30_c7 + y_w30_c8 + y_w30_c9 + y_w31_c0 + y_w31_c1 + y_w31_c2 + y_w31_c3 + y_w31_c4 + y_w31_c5 + y_w31_c6 + y_w31_c7 + y_w31_c8 + y_w31_c9 + y_w32_c0 + y_w32_c1 + y_w32_c2 + y_w32_c3 + y_w32_c4 + y_w32_c5 + y_w32_c6 + y_w32_c7 + y_w32_c8 + y_w32_c9 + y_w33_c0 + y_w33_c1 + y_w33_c2 + y_w33_c3 + y_w33_c4 + y_w33_c5 + y_w33_c6 + y_w33_c7 + y_w33_c8 + y_w33_c9 + y_w34_c0 + y_w34_c1 + y_w34_c2 + y_w34_c3 + y_w34_c4 + y_w34_c5 + y_w34_c6 + y_w34_c7 + y_w34_c8 + y_w34_c9 + y_w35_c0 + y_w35_c1 + y_w35_c2 + y_w35_c3 + y_w35_c4 + y_w35_c5 + y_w35_c6 + y_w35_c7 + y_w35_c8 + y_w35_c9 + y_w36_c0 + y_w36_c1 + y_w36_c2 + y_w36_c3 + y_w36_c4 + y_w36_c5 + y_w36_c6 + y_w36_c7 + y_w36_c8 + y_w36_c9 + y_w37_c0 + y_w37_c1 + y_w37_c2 + y_w37_c3 + y_w37_c4 + y_w37_c5 + y_w37_c6 + y_w37_c7 + y_w37_c8 + y_w37_c9 + y_w38_c0 + y_w38_c1 + y_w38_c2 + y_w38_c3 + y_w38_c4 + y_w38_c5 + y_w38_c6 + y_w38_c7 + y_w38_c8 + y_w38_c9 + y_w39_c0 + y_w39_c1 + y_w39_c2 + y_w39_c3 + y_w39_c4 + y_w39_c5 + y_w39_c6 + y_w39_c7 + y_w39_c8 + y_w39_c9 + y_w40_c0 + y_w40_c1 + y_w40_c2 + y_w40_c3 + y_w40_c4 + y_w40_c5 + y_w40_c6 + y_w40_c7 + y_w40_c8 + y_w40_c9 + y_w41_c0 + y_w41_c1 + y_w41_c2 + y_w41_c3 + y_w41_c4 + y_w41_c5 + y_w41_c6 + y_w41_c7 + y_w41_c8 + y_w41_c9 + y_w42_c0 + y_w42_c1 + y_w42_c2 + y_w42_c3 + y_w42_c4 + y_w42_c5 + y_w42_c6 + y_w42_c7 + y_w42_c8 + y_w42_c9 + y_w43_c0 + y_w43_c1 + y_w43_c2 + y_w43_c3 + y_w43_c4 + y_w43_c5 + y_w43_c6 + y_w43_c7 + y_w43_c8 + y_w43_c9 + y_w44_c0 + y_w44_c1 + y_w44_c2 + y_w44_c3 + y_w44_c4 + y_w44_c5 + y_w44_c6 + y_w44_c7 + y_w44_c8 + y_w44_c9 + y_w45_c0 + y_w45_c1 + y_w45_c2 + y_w45_c3 + y_w45_c4 + y_w45_c5 + y_w45_c6 + y_w45_c7 + y_w45_c8 + y_w45_c9 + y_w46_c0 + y_w46_c1 + y_w46_c2 + y_w46_c3 + y_w46_c4 + y_w46_c5 + y_w46_c6 + y_w46_c7 + y_w46_c8 + y_w46_c9 + y_w47_c0 + y_w47_c1 + y_w47_c2 + y_w47_c3 + y_w47_c4 + y_w47_c5 + y_w47_c6 + y_w47_c7 + y_w47_c8 + y_w47_c9 + y_w48_c0 + y_w48_c1 + y_w48_c2 + y_w48_c3 + y_w48_c4 + y_w48_c5 + y_w48_c6 + y_w48_c7 + y_w48_c8 + y_w48_c9 + y_w49_c0 + y_w49_c1 + y_w49_c2 + y_w49_c3 + y_w49_c4 + y_w49_c5 + y_w49_c6 + y_w49_c7 + y_w49_c8 + y_w49_c9 - TotalLatency = 0
  cap_cpu_c0: 0.15 x_w0_c0 + 0.42 x_w1_c0 + 0.45 x_w2_c0 + 0.33 x_w3_c0 + 0.20 x_w4_c0 + 0.39 x_w5_c0 + 0.15 x_w6_c0 + 0.11 x_w7_c0 + 0.28 x_w8_c0 + 0.43 x_w9_c0 + 0.11 x_w10_c0 + 0.28 x_w11_c0 + 0.12 x_w12_c0 + 0.40 x_w13_c0 + 0.26 x_w14_c0 + 0.48 x_w15_c0 + 0.45 x_w16_c0 + 0.11 x_w17_c0 + 0.19 x_w18_c0 + 0.49 x_w19_c0 + 0.34 x_w20_c0 + 0.30 x_w21_c0 + 0.28 x_w22_c0 + 0.32 x_w23_c0 + 0.50 x_w24_c0 + 0.39 x_w25_c0 + 0.40 x_w26_c0 + 0.41 x_w27_c0 + 0.34 x_w28_c0 + 0.26 x_w29_c0 + 0.32 x_w30_c0 + 0.29 x_w31_c0 + 0.39 x_w32_c0 + 0.23 x_w33_c0 + 0.45 x_w34_c0 + 0.20 x_w35_c0 + 0.21 x_w36_c0 + 0.31 x_w37_c0 + 0.37 x_w38_c0 + 0.13 x_w39_c0 + 0.39 x_w40_c0 + 0.48 x_w41_c0 + 0.31 x_w42_c0 + 0.17 x_w43_c0 + 0.27 x_w44_c0 + 0.37 x_w45_c0 + 0.33 x_w46_c0 + 0.45 x_w47_c0 + 0.26 x_w48_c0 + 0.10 x_w49_c0 <= 100

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
End