begin_metric
0
end_metric
begin_variables
28
var0 10 -1
var1 10 -1
var2 10 -1
var3 10 -1
var4 2 -1
var5 2 -1
var6 2 0
var7 2 -1
var8 2 -1
var9 2 -1
var10 2 -1
var11 2 0
var12 2 -1
var13 2 -1
var14 2 -1
var15 2 -1
var16 2 -1
var17 2 -1
var18 2 -1
var19 2 -1
var20 2 0
var21 2 -1
var22 2 0
var23 2 -1
var24 2 0
var25 2 0
var26 2 -1
var27 2 -1
end_variables
begin_state
9
8
9
5
0
1
0
0
1
1
1
0
1
0
1
0
0
1
1
1
0
1
0
1
0
0
0
1
end_state
begin_goal
5
6 1
11 1
20 1
24 1
25 1
end_goal
136
begin_operator
move-on-arrival train1 v1 t0
1
8 1
3
0 3 5 6
0 16 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-track train1 t0 t1 track1
0
5
0 3 6 3
0 8 -1 0
0 10 -1 0
0 15 0 1
0 16 -1 0
0
end_operator
begin_operator
move-to-track train1 t0 t5 track1
0
5
0 3 6 9
0 7 0 1
0 8 -1 0
0 10 -1 0
0 16 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v2 v1
1
23 1
3
0 1 8 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train2 v2 v1
1
22 1
3
0 1 8 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train1 t0 v1
1
22 1
3
0 3 6 5
0 16 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train1 t1 t2 track1
0
3
0 3 3 8
0 15 -1 0
0 26 0 1
0
end_operator
begin_operator
move-from-track-to-departure train1 t1 t0 track1
1
22 1
4
0 3 3 6
0 10 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train1 t5 t4 track1
0
3
0 3 9 2
0 7 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track-to-departure train1 t5 t0 track1
1
22 1
4
0 3 9 6
0 7 -1 0
0 10 -1 1
0 16 0 1
0
end_operator
begin_operator
move-on-arrival train2 v1 t0
1
23 1
3
0 1 5 7
0 16 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v1 v2
1
8 1
3
0 3 5 4
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v1 v2
1
23 1
3
0 1 5 8
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v3 v2
1
14 1
3
0 2 9 0
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-from-track train1 t1 t0 track1
1
8 1
4
0 3 3 6
0 10 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t1 t0 track1
1
23 1
4
0 3 3 6
0 10 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t1 t0 track1
1
14 1
4
0 3 3 6
0 10 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t1 t0 track1
1
5 1
4
0 3 3 6
0 10 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t5 t0 track1
1
8 1
4
0 3 9 6
0 7 -1 0
0 10 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t5 t0 track1
1
23 1
4
0 3 9 6
0 7 -1 0
0 10 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t5 t0 track1
1
14 1
4
0 3 9 6
0 7 -1 0
0 10 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train1 t5 t0 track1
1
5 1
4
0 3 9 6
0 7 -1 0
0 10 -1 1
0 16 0 1
0
end_operator
begin_operator
move-to-departure train1 v1 v2
1
22 1
3
0 3 5 4
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train2 v1 v2
1
22 1
3
0 1 5 8
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train3 v3 v2
1
22 1
3
0 2 9 0
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-to-departure train2 t0 v1
1
22 1
3
0 1 7 5
0 16 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train1 v2 v1
1
22 1
3
0 3 4 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train3 v2 v1
1
22 1
3
0 2 0 6
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train1 t2 t1 track1
0
3
0 3 8 3
0 15 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train1 t2 t3 track1
0
3
0 3 8 7
0 4 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train1 t4 t3 track1
0
3
0 3 2 7
0 4 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train1 t4 t5 track1
0
3
0 3 2 9
0 7 0 1
0 13 -1 0
0
end_operator
begin_operator
move-to-track train2 t0 t1 track1
0
5
0 1 7 0
0 9 -1 0
0 15 0 1
0 16 -1 0
0 23 -1 0
0
end_operator
begin_operator
move-to-track train2 t0 t5 track1
0
5
0 1 7 6
0 7 0 1
0 9 -1 0
0 16 -1 0
0 23 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v2 v1
1
8 1
3
0 3 4 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-on-arrival train3 v2 v1
1
14 1
3
0 2 0 6
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-on-arrival train2 v2 v3
1
23 1
3
0 1 8 3
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v2 v3
1
8 1
3
0 3 4 1
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v2 v3
1
14 1
3
0 2 0 9
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v4 v3
1
5 1
3
0 0 9 8
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-to-departure train2 v2 v3
1
22 1
3
0 1 8 3
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-departure train1 v2 v3
1
22 1
3
0 3 4 1
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-departure train3 v2 v3
1
22 1
3
0 2 0 9
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-departure train4 v4 v3
1
22 1
3
0 0 9 8
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-to-departure train3 v1 v2
1
22 1
3
0 2 6 0
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v1 t0
1
14 1
3
0 2 6 8
0 16 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v1 v2
1
14 1
3
0 2 6 0
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train2 v3 v2
1
22 1
3
0 1 3 8
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-to-departure train1 v3 v2
1
22 1
3
0 3 1 4
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-to-departure train4 v3 v2
1
22 1
3
0 0 8 7
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-along-track train1 t3 t2 track1
0
3
0 3 7 8
0 4 -1 0
0 26 0 1
0
end_operator
begin_operator
move-along-track train1 t3 t4 track1
0
3
0 3 7 2
0 4 -1 0
0 13 0 1
0
end_operator
begin_operator
move-along-track train2 t1 t2 track1
0
3
0 1 0 2
0 15 -1 0
0 26 0 1
0
end_operator
begin_operator
move-from-track-to-departure train2 t1 t0 track1
1
22 1
4
0 1 0 7
0 9 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train2 t5 t4 track1
0
3
0 1 6 1
0 7 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track-to-departure train2 t5 t0 track1
1
22 1
4
0 1 6 7
0 7 -1 0
0 9 -1 1
0 16 0 1
0
end_operator
begin_operator
move-on-arrival train2 v3 v2
1
23 1
3
0 1 3 8
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-on-arrival train1 v3 v2
1
8 1
3
0 3 1 4
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-on-arrival train4 v3 v2
1
5 1
3
0 0 8 7
0 18 -1 0
0 21 0 1
0
end_operator
begin_operator
move-on-arrival train3 v3 v4
1
14 1
3
0 2 9 3
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v3 v4
1
23 1
3
0 1 3 9
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v3 v4
1
8 1
3
0 3 1 0
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v3 v4
1
5 1
3
0 0 8 9
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-from-track train2 t1 t0 track1
1
8 1
4
0 1 0 7
0 9 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t1 t0 track1
1
23 1
4
0 1 0 7
0 9 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t1 t0 track1
1
14 1
4
0 1 0 7
0 9 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t1 t0 track1
1
5 1
4
0 1 0 7
0 9 -1 1
0 15 -1 0
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t5 t0 track1
1
8 1
4
0 1 6 7
0 7 -1 0
0 9 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t5 t0 track1
1
23 1
4
0 1 6 7
0 7 -1 0
0 9 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t5 t0 track1
1
14 1
4
0 1 6 7
0 7 -1 0
0 9 -1 1
0 16 0 1
0
end_operator
begin_operator
move-from-track train2 t5 t0 track1
1
5 1
4
0 1 6 7
0 7 -1 0
0 9 -1 1
0 16 0 1
0
end_operator
begin_operator
move-to-departure train3 v3 v4
1
22 1
3
0 2 9 3
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-to-departure train2 v3 v4
1
22 1
3
0 1 3 9
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-to-departure train1 v3 v4
1
22 1
3
0 3 1 0
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-to-departure train4 v3 v4
1
22 1
3
0 0 8 9
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
move-to-departure train3 t0 v1
1
22 1
3
0 2 8 6
0 16 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train4 v2 v1
1
22 1
3
0 0 7 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train4 v2 v3
1
22 1
3
0 0 7 8
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t1 track1
0
5
0 2 8 7
0 14 -1 0
0 15 0 1
0 16 -1 0
0 17 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t5 track1
0
5
0 2 8 2
0 7 0 1
0 14 -1 0
0 16 -1 0
0 17 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v2 v1
1
5 1
3
0 0 7 5
0 21 -1 0
0 27 0 1
0
end_operator
begin_operator
move-on-arrival train4 v2 v3
1
5 1
3
0 0 7 8
0 18 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-departure train3 v4 v3
1
22 1
3
0 2 3 9
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-to-departure train2 v4 v3
1
22 1
3
0 1 9 3
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-to-departure train1 v4 v3
1
22 1
3
0 3 0 1
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-along-track train2 t2 t1 track1
0
3
0 1 2 0
0 15 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train2 t2 t3 track1
0
3
0 1 2 4
0 4 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train2 t4 t3 track1
0
3
0 1 1 4
0 4 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train2 t4 t5 track1
0
3
0 1 1 6
0 7 0 1
0 13 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v4 v3
1
14 1
3
0 2 3 9
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-on-arrival train2 v4 v3
1
23 1
3
0 1 9 3
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-on-arrival train1 v4 v3
1
8 1
3
0 3 0 1
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
move-to-departure train4 v1 v2
1
22 1
3
0 0 5 7
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v1 t0
1
5 1
3
0 0 5 4
0 16 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v1 v2
1
5 1
3
0 0 5 7
0 21 0 1
0 27 -1 0
0
end_operator
begin_operator
move-along-track train3 t1 t2 track1
0
3
0 2 7 5
0 15 -1 0
0 26 0 1
0
end_operator
begin_operator
move-from-track-to-departure train3 t1 t0 track1
1
22 1
4
0 2 7 8
0 15 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-along-track train3 t5 t4 track1
0
3
0 2 2 4
0 7 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track-to-departure train3 t5 t0 track1
1
22 1
4
0 2 2 8
0 7 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-along-track train2 t3 t2 track1
0
3
0 1 4 2
0 4 -1 0
0 26 0 1
0
end_operator
begin_operator
move-along-track train2 t3 t4 track1
0
3
0 1 4 1
0 4 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track train3 t1 t0 track1
1
8 1
4
0 2 7 8
0 15 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t1 t0 track1
1
23 1
4
0 2 7 8
0 15 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t1 t0 track1
1
14 1
4
0 2 7 8
0 15 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t1 t0 track1
1
5 1
4
0 2 7 8
0 15 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t5 t0 track1
1
8 1
4
0 2 2 8
0 7 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t5 t0 track1
1
23 1
4
0 2 2 8
0 7 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t5 t0 track1
1
14 1
4
0 2 2 8
0 7 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-from-track train3 t5 t0 track1
1
5 1
4
0 2 2 8
0 7 -1 0
0 16 0 1
0 17 -1 1
0
end_operator
begin_operator
move-to-departure train4 t0 v1
1
22 1
3
0 0 4 5
0 16 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-track train4 t0 t1 track1
0
5
0 0 4 6
0 5 -1 0
0 15 0 1
0 16 -1 0
0 19 -1 0
0
end_operator
begin_operator
move-to-track train4 t0 t5 track1
0
5
0 0 4 1
0 5 -1 0
0 7 0 1
0 16 -1 0
0 19 -1 0
0
end_operator
begin_operator
move-along-track train3 t2 t1 track1
0
3
0 2 5 7
0 15 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train3 t2 t3 track1
0
3
0 2 5 1
0 4 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train3 t4 t3 track1
0
3
0 2 4 1
0 4 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train3 t4 t5 track1
0
3
0 2 4 2
0 7 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train4 t1 t2 track1
0
3
0 0 6 2
0 15 -1 0
0 26 0 1
0
end_operator
begin_operator
move-from-track-to-departure train4 t1 t0 track1
1
22 1
4
0 0 6 4
0 15 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-along-track train4 t5 t4 track1
0
3
0 0 1 0
0 7 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track-to-departure train4 t5 t0 track1
1
22 1
4
0 0 1 4
0 7 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-along-track train3 t3 t2 track1
0
3
0 2 1 5
0 4 -1 0
0 26 0 1
0
end_operator
begin_operator
move-along-track train3 t3 t4 track1
0
3
0 2 1 4
0 4 -1 0
0 13 0 1
0
end_operator
begin_operator
move-from-track train4 t1 t0 track1
1
8 1
4
0 0 6 4
0 15 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t1 t0 track1
1
23 1
4
0 0 6 4
0 15 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t1 t0 track1
1
14 1
4
0 0 6 4
0 15 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t1 t0 track1
1
5 1
4
0 0 6 4
0 15 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t5 t0 track1
1
8 1
4
0 0 1 4
0 7 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t5 t0 track1
1
23 1
4
0 0 1 4
0 7 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t5 t0 track1
1
14 1
4
0 0 1 4
0 7 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-from-track train4 t5 t0 track1
1
5 1
4
0 0 1 4
0 7 -1 0
0 16 0 1
0 19 -1 1
0
end_operator
begin_operator
move-along-track train4 t2 t1 track1
0
3
0 0 2 6
0 15 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train4 t2 t3 track1
0
3
0 0 2 3
0 4 0 1
0 26 -1 0
0
end_operator
begin_operator
move-along-track train4 t4 t3 track1
0
3
0 0 0 3
0 4 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train4 t4 t5 track1
0
3
0 0 0 1
0 7 0 1
0 13 -1 0
0
end_operator
begin_operator
move-along-track train4 t3 t2 track1
0
3
0 0 3 2
0 4 -1 0
0 26 0 1
0
end_operator
begin_operator
move-along-track train4 t3 t4 track1
0
3
0 0 3 0
0 4 -1 0
0 13 0 1
0
end_operator
6
begin_rule
1
0 5
6 0 1
end_rule
begin_rule
1
1 8
11 0 1
end_rule
begin_rule
4
8 0
5 0
14 0
23 0
22 0 1
end_rule
begin_rule
1
2 9
25 0 1
end_rule
begin_rule
4
8 0
5 0
14 0
23 0
20 0 1
end_rule
begin_rule
1
3 0
24 0 1
end_rule
