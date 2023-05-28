begin_metric
0
end_metric
begin_variables
33
var0 12 -1
var1 12 -1
var2 12 -1
var3 12 -1
var4 12 -1
var5 2 -1
var6 2 -1
var7 2 -1
var8 2 -1
var9 2 -1
var10 2 -1
var11 2 -1
var12 2 -1
var13 2 -1
var14 2 -1
var15 2 -1
var16 2 -1
var17 2 -1
var18 2 -1
var19 2 -1
var20 2 -1
var21 2 0
var22 2 -1
var23 2 -1
var24 2 -1
var25 2 -1
var26 2 -1
var27 2 -1
var28 2 -1
var29 2 -1
var30 2 -1
var31 2 -1
var32 2 -1
end_variables
begin_state
11
10
11
3
7
1
1
0
0
1
1
0
1
1
0
1
1
0
1
1
1
0
1
1
1
1
1
1
1
0
1
1
0
end_state
begin_goal
10
0 7
1 11
2 0
3 2
4 0
5 0
9 0
16 0
20 0
24 0
end_goal
190
begin_operator
move-on-arrival train1 v1 t0
1
16 1
3
0 4 7 8
0 11 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v4 t0
1
9 1
3
0 0 11 6
0 11 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-track train1 t0 t1 track1
0
5
0 4 8 4
0 8 0 1
0 11 -1 0
0 16 -1 0
0 25 -1 0
0
end_operator
begin_operator
move-to-track train1 t0 t4 track2
0
5
0 4 8 3
0 11 -1 0
0 16 -1 0
0 19 -1 0
0 32 0 1
0
end_operator
begin_operator
move-on-arrival train2 v2 v1
1
24 1
3
0 1 10 6
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-track train4 t0 t1 track1
0
5
0 0 6 8
0 8 0 1
0 9 -1 0
0 11 -1 0
0 15 -1 0
0
end_operator
begin_operator
move-to-track train4 t0 t4 track2
0
5
0 0 6 0
0 9 -1 0
0 11 -1 0
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
move-on-arrival train5 v5 v4
1
20 1
3
0 3 3 4
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train2 v2 v1
1
21 1
3
0 1 10 6
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train1 t0 v1
1
21 1
3
0 4 8 7
0 11 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train4 t0 v1
1
21 1
3
0 0 6 7
0 11 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train1 t0 v4
1
21 1
3
0 4 8 1
0 11 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train4 t0 v4
1
21 1
3
0 0 6 11
0 11 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train5 v5 v4
1
21 1
3
0 3 3 4
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train1 t1 t2 track1
0
3
0 4 4 10
0 8 -1 0
0 29 0 1
0
end_operator
begin_operator
move-from-track-to-departure train1 t1 t0 track1
1
21 1
4
0 4 4 8
0 8 -1 0
0 11 0 1
0 25 -1 1
0
end_operator
begin_operator
move-along-track train1 t4 t5 track2
0
3
0 4 3 11
0 14 0 1
0 32 -1 0
0
end_operator
begin_operator
move-from-track-to-departure train1 t4 t0 track2
1
21 1
4
0 4 3 8
0 11 0 1
0 19 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v1 t0
1
24 1
3
0 1 6 9
0 11 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v1 v2
1
16 1
3
0 4 7 6
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v1 v2
1
24 1
3
0 1 6 10
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v3 v2
1
5 1
3
0 2 11 0
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-along-track train4 t1 t2 track1
0
3
0 0 8 2
0 8 -1 0
0 29 0 1
0
end_operator
begin_operator
move-from-track-to-departure train4 t1 t0 track1
1
21 1
4
0 0 8 6
0 8 -1 0
0 11 0 1
0 15 -1 1
0
end_operator
begin_operator
move-along-track train4 t4 t5 track2
0
3
0 0 0 1
0 14 0 1
0 32 -1 0
0
end_operator
begin_operator
move-from-track-to-departure train4 t4 t0 track2
1
21 1
4
0 0 0 6
0 11 0 1
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train5 v4 t0
1
20 1
3
0 3 4 5
0 11 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v4 v5
1
9 1
3
0 0 11 3
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train5 v4 v5
1
20 1
3
0 3 4 3
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v1 t0
1
9 1
3
0 0 7 6
0 11 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v1 v2
1
9 1
3
0 0 7 9
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train1 v1 v2
1
21 1
3
0 4 7 6
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train2 v1 v2
1
21 1
3
0 1 6 10
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train4 v1 v2
1
21 1
3
0 0 7 9
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train3 v3 v2
1
21 1
3
0 2 11 0
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-on-arrival train1 v4 t0
1
16 1
3
0 4 1 8
0 11 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v4 v5
1
16 1
3
0 4 1 0
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train4 v4 v5
1
21 1
3
0 0 11 3
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train5 v4 v5
1
21 1
3
0 3 4 3
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train1 v4 v5
1
21 1
3
0 4 1 0
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
switch-track train1 t1 t0 t4 track1 track2
2
11 0
16 1
5
0 4 4 3
0 8 -1 0
0 19 -1 0
0 25 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train1 t1 t0 t4 track1 track2
2
11 0
24 1
5
0 4 4 3
0 8 -1 0
0 19 -1 0
0 25 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train1 t1 t0 t4 track1 track2
2
5 1
11 0
5
0 4 4 3
0 8 -1 0
0 19 -1 0
0 25 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train1 t1 t0 t4 track1 track2
2
9 1
11 0
5
0 4 4 3
0 8 -1 0
0 19 -1 0
0 25 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train1 t1 t0 t4 track1 track2
2
11 0
20 1
5
0 4 4 3
0 8 -1 0
0 19 -1 0
0 25 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train1 t4 t0 t1 track2 track1
2
11 0
16 1
5
0 4 3 4
0 8 0 1
0 19 -1 1
0 25 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train1 t4 t0 t1 track2 track1
2
11 0
24 1
5
0 4 3 4
0 8 0 1
0 19 -1 1
0 25 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train1 t4 t0 t1 track2 track1
2
5 1
11 0
5
0 4 3 4
0 8 0 1
0 19 -1 1
0 25 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train1 t4 t0 t1 track2 track1
2
9 1
11 0
5
0 4 3 4
0 8 0 1
0 19 -1 1
0 25 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train1 t4 t0 t1 track2 track1
2
11 0
20 1
5
0 4 3 4
0 8 0 1
0 19 -1 1
0 25 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train4 t1 t0 t4 track1 track2
2
11 0
16 1
5
0 0 8 0
0 8 -1 0
0 15 -1 1
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train4 t1 t0 t4 track1 track2
2
11 0
24 1
5
0 0 8 0
0 8 -1 0
0 15 -1 1
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train4 t1 t0 t4 track1 track2
2
5 1
11 0
5
0 0 8 0
0 8 -1 0
0 15 -1 1
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train4 t1 t0 t4 track1 track2
2
9 1
11 0
5
0 0 8 0
0 8 -1 0
0 15 -1 1
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train4 t1 t0 t4 track1 track2
2
11 0
20 1
5
0 0 8 0
0 8 -1 0
0 15 -1 1
0 22 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train4 t4 t0 t1 track2 track1
2
11 0
16 1
5
0 0 0 8
0 8 0 1
0 15 -1 0
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train4 t4 t0 t1 track2 track1
2
11 0
24 1
5
0 0 0 8
0 8 0 1
0 15 -1 0
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train4 t4 t0 t1 track2 track1
2
5 1
11 0
5
0 0 0 8
0 8 0 1
0 15 -1 0
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train4 t4 t0 t1 track2 track1
2
9 1
11 0
5
0 0 0 8
0 8 0 1
0 15 -1 0
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train4 t4 t0 t1 track2 track1
2
11 0
20 1
5
0 0 0 8
0 8 0 1
0 15 -1 0
0 22 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-to-departure train2 t0 v1
1
21 1
3
0 1 9 6
0 11 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train2 t0 v4
1
21 1
3
0 1 9 11
0 11 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train1 v2 v1
1
21 1
3
0 4 6 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train3 v2 v1
1
21 1
3
0 2 0 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train5 t0 v1
1
21 1
3
0 3 5 10
0 11 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train5 t0 v4
1
21 1
3
0 3 5 4
0 11 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train4 v5 v4
1
21 1
3
0 0 3 11
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train1 t2 t1 track1
0
3
0 4 10 4
0 8 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train1 t2 t3 track1
0
3
0 4 10 9
0 7 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train1 t5 t4 track2
0
3
0 4 11 3
0 14 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train1 t5 t6 track2
0
3
0 4 11 5
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
move-to-departure train4 v2 v1
1
21 1
3
0 0 9 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-track train2 t0 t1 track1
0
5
0 1 9 1
0 8 0 1
0 11 -1 0
0 18 -1 0
0 24 -1 0
0
end_operator
begin_operator
move-to-track train2 t0 t4 track2
0
5
0 1 9 2
0 11 -1 0
0 23 -1 0
0 24 -1 0
0 32 0 1
0
end_operator
begin_operator
move-on-arrival train1 v2 v1
1
16 1
3
0 4 6 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-on-arrival train3 v2 v1
1
5 1
3
0 2 0 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-on-arrival train2 v2 v3
1
24 1
3
0 1 10 4
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v2 v3
1
16 1
3
0 4 6 2
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v2 v3
1
5 1
3
0 2 0 11
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-along-track train4 t2 t1 track1
0
3
0 0 2 8
0 8 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train4 t2 t3 track1
0
3
0 0 2 4
0 7 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train4 t5 t4 track2
0
3
0 0 1 0
0 14 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train4 t5 t6 track2
0
3
0 0 1 5
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
move-to-departure train1 v5 v4
1
21 1
3
0 4 0 1
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-track train5 t0 t1 track1
0
5
0 3 5 1
0 6 -1 0
0 8 0 1
0 11 -1 0
0 20 -1 0
0
end_operator
begin_operator
move-to-track train5 t0 t4 track2
0
5
0 3 5 11
0 11 -1 0
0 20 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
move-on-arrival train4 v5 v4
1
9 1
3
0 0 3 11
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-on-arrival train4 v2 v1
1
9 1
3
0 0 9 7
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-on-arrival train4 v2 v3
1
9 1
3
0 0 9 10
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-to-departure train2 v2 v3
1
21 1
3
0 1 10 4
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-to-departure train1 v2 v3
1
21 1
3
0 4 6 2
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-to-departure train3 v2 v3
1
21 1
3
0 2 0 11
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-to-departure train4 v2 v3
1
21 1
3
0 0 9 10
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v5 v4
1
16 1
3
0 4 0 1
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train2 v4 v5
1
21 1
3
0 1 11 0
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-to-departure train3 v1 v2
1
21 1
3
0 2 7 0
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train5 v1 v2
1
21 1
3
0 3 10 8
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v4 t0
1
24 1
3
0 1 11 9
0 11 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v4 v5
1
24 1
3
0 1 11 0
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v1 t0
1
5 1
3
0 2 7 9
0 11 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v1 v2
1
5 1
3
0 2 7 0
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-to-departure train2 v3 v2
1
21 1
3
0 1 4 10
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-to-departure train1 v3 v2
1
21 1
3
0 4 2 6
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-on-arrival train5 v1 t0
1
20 1
3
0 3 10 5
0 11 0 1
0 31 -1 0
0
end_operator
begin_operator
move-on-arrival train5 v1 v2
1
20 1
3
0 3 10 8
0 30 0 1
0 31 -1 0
0
end_operator
begin_operator
move-along-track train1 t3 t2 track1
0
3
0 4 9 10
0 7 -1 0
0 29 0 1
0
end_operator
begin_operator
move-along-track train1 t6 t5 track2
0
3
0 4 5 11
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
move-to-departure train4 v3 v2
1
21 1
3
0 0 10 9
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-along-track train2 t1 t2 track1
0
3
0 1 1 3
0 8 -1 0
0 29 0 1
0
end_operator
begin_operator
move-from-track-to-departure train2 t1 t0 track1
1
21 1
4
0 1 1 9
0 8 -1 0
0 11 0 1
0 18 -1 1
0
end_operator
begin_operator
move-along-track train2 t4 t5 track2
0
3
0 1 2 7
0 14 0 1
0 32 -1 0
0
end_operator
begin_operator
move-from-track-to-departure train2 t4 t0 track2
1
21 1
4
0 1 2 9
0 11 0 1
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v3 v2
1
24 1
3
0 1 4 10
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-on-arrival train1 v3 v2
1
16 1
3
0 4 2 6
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-along-track train4 t3 t2 track1
0
3
0 0 4 2
0 7 -1 0
0 29 0 1
0
end_operator
begin_operator
move-along-track train4 t6 t5 track2
0
3
0 0 5 1
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
move-along-track train5 t1 t2 track1
0
3
0 3 1 9
0 8 -1 0
0 29 0 1
0
end_operator
begin_operator
move-from-track-to-departure train5 t1 t0 track1
1
21 1
4
0 3 1 5
0 6 -1 1
0 8 -1 0
0 11 0 1
0
end_operator
begin_operator
move-along-track train5 t4 t5 track2
0
3
0 3 11 6
0 14 0 1
0 32 -1 0
0
end_operator
begin_operator
move-from-track-to-departure train5 t4 t0 track2
1
21 1
4
0 3 11 5
0 11 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v3 v2
1
9 1
3
0 0 10 9
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-to-departure train2 v5 v4
1
21 1
3
0 1 0 11
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train5 v2 v1
1
21 1
3
0 3 8 10
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train5 v2 v3
1
21 1
3
0 3 8 2
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
switch-track train2 t1 t0 t4 track1 track2
2
11 0
16 1
5
0 1 1 2
0 8 -1 0
0 18 -1 1
0 23 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train2 t1 t0 t4 track1 track2
2
11 0
24 1
5
0 1 1 2
0 8 -1 0
0 18 -1 1
0 23 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train2 t1 t0 t4 track1 track2
2
5 1
11 0
5
0 1 1 2
0 8 -1 0
0 18 -1 1
0 23 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train2 t1 t0 t4 track1 track2
2
9 1
11 0
5
0 1 1 2
0 8 -1 0
0 18 -1 1
0 23 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train2 t1 t0 t4 track1 track2
2
11 0
20 1
5
0 1 1 2
0 8 -1 0
0 18 -1 1
0 23 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train2 t4 t0 t1 track2 track1
2
11 0
16 1
5
0 1 2 1
0 8 0 1
0 18 -1 0
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train2 t4 t0 t1 track2 track1
2
11 0
24 1
5
0 1 2 1
0 8 0 1
0 18 -1 0
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train2 t4 t0 t1 track2 track1
2
5 1
11 0
5
0 1 2 1
0 8 0 1
0 18 -1 0
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train2 t4 t0 t1 track2 track1
2
9 1
11 0
5
0 1 2 1
0 8 0 1
0 18 -1 0
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train2 t4 t0 t1 track2 track1
2
11 0
20 1
5
0 1 2 1
0 8 0 1
0 18 -1 0
0 23 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v5 v4
1
24 1
3
0 1 0 11
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-to-departure train3 t0 v1
1
21 1
3
0 2 9 7
0 11 -1 0
0 31 0 1
0
end_operator
begin_operator
move-to-departure train3 t0 v4
1
21 1
3
0 2 9 4
0 11 -1 0
0 27 0 1
0
end_operator
begin_operator
switch-track train5 t1 t0 t4 track1 track2
2
11 0
16 1
5
0 3 1 11
0 6 -1 1
0 8 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train5 t1 t0 t4 track1 track2
2
11 0
24 1
5
0 3 1 11
0 6 -1 1
0 8 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train5 t1 t0 t4 track1 track2
2
5 1
11 0
5
0 3 1 11
0 6 -1 1
0 8 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train5 t1 t0 t4 track1 track2
2
9 1
11 0
5
0 3 1 11
0 6 -1 1
0 8 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train5 t1 t0 t4 track1 track2
2
11 0
20 1
5
0 3 1 11
0 6 -1 1
0 8 -1 0
0 28 -1 0
0 32 0 1
0
end_operator
begin_operator
switch-track train5 t4 t0 t1 track2 track1
2
11 0
16 1
5
0 3 11 1
0 6 -1 0
0 8 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train5 t4 t0 t1 track2 track1
2
11 0
24 1
5
0 3 11 1
0 6 -1 0
0 8 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train5 t4 t0 t1 track2 track1
2
5 1
11 0
5
0 3 11 1
0 6 -1 0
0 8 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train5 t4 t0 t1 track2 track1
2
9 1
11 0
5
0 3 11 1
0 6 -1 0
0 8 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
switch-track train5 t4 t0 t1 track2 track1
2
11 0
20 1
5
0 3 11 1
0 6 -1 0
0 8 0 1
0 28 -1 1
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train5 v2 v1
1
20 1
3
0 3 8 10
0 30 -1 0
0 31 0 1
0
end_operator
begin_operator
move-on-arrival train5 v2 v3
1
20 1
3
0 3 8 2
0 13 0 1
0 30 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t1 track1
0
5
0 2 9 8
0 5 -1 0
0 8 0 1
0 11 -1 0
0 12 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t4 track2
0
5
0 2 9 5
0 5 -1 0
0 10 -1 0
0 11 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train2 t2 t1 track1
0
3
0 1 3 1
0 8 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train2 t2 t3 track1
0
3
0 1 3 5
0 7 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train2 t5 t4 track2
0
3
0 1 7 2
0 14 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train2 t5 t6 track2
0
3
0 1 7 8
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
move-along-track train5 t2 t1 track1
0
3
0 3 9 1
0 8 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train5 t2 t3 track1
0
3
0 3 9 7
0 7 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train5 t5 t4 track2
0
3
0 3 6 11
0 14 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train5 t5 t6 track2
0
3
0 3 6 0
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
move-to-departure train5 v3 v2
1
21 1
3
0 3 2 8
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-to-departure train3 v4 v5
1
21 1
3
0 2 4 10
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train5 v3 v2
1
20 1
3
0 3 2 8
0 13 -1 0
0 30 0 1
0
end_operator
begin_operator
move-on-arrival train3 v4 t0
1
5 1
3
0 2 4 9
0 11 0 1
0 27 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v4 v5
1
5 1
3
0 2 4 10
0 26 0 1
0 27 -1 0
0
end_operator
begin_operator
move-along-track train3 t1 t2 track1
0
3
0 2 8 6
0 8 -1 0
0 29 0 1
0
end_operator
begin_operator
move-from-track-to-departure train3 t1 t0 track1
1
21 1
4
0 2 8 9
0 8 -1 0
0 11 0 1
0 12 -1 1
0
end_operator
begin_operator
move-along-track train3 t4 t5 track2
0
3
0 2 5 3
0 14 0 1
0 32 -1 0
0
end_operator
begin_operator
move-from-track-to-departure train3 t4 t0 track2
1
21 1
4
0 2 5 9
0 10 -1 1
0 11 0 1
0 32 -1 0
0
end_operator
begin_operator
move-along-track train2 t3 t2 track1
0
3
0 1 5 3
0 7 -1 0
0 29 0 1
0
end_operator
begin_operator
move-along-track train2 t6 t5 track2
0
3
0 1 8 7
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
move-to-departure train3 v5 v4
1
21 1
3
0 2 10 4
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train5 t3 t2 track1
0
3
0 3 7 9
0 7 -1 0
0 29 0 1
0
end_operator
begin_operator
move-along-track train5 t6 t5 track2
0
3
0 3 0 6
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
switch-track train3 t1 t0 t4 track1 track2
2
11 0
16 1
5
0 2 8 5
0 8 -1 0
0 10 -1 0
0 12 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train3 t1 t0 t4 track1 track2
2
11 0
24 1
5
0 2 8 5
0 8 -1 0
0 10 -1 0
0 12 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train3 t1 t0 t4 track1 track2
2
5 1
11 0
5
0 2 8 5
0 8 -1 0
0 10 -1 0
0 12 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train3 t1 t0 t4 track1 track2
2
9 1
11 0
5
0 2 8 5
0 8 -1 0
0 10 -1 0
0 12 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train3 t1 t0 t4 track1 track2
2
11 0
20 1
5
0 2 8 5
0 8 -1 0
0 10 -1 0
0 12 -1 1
0 32 0 1
0
end_operator
begin_operator
switch-track train3 t4 t0 t1 track2 track1
2
11 0
16 1
5
0 2 5 8
0 8 0 1
0 10 -1 1
0 12 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train3 t4 t0 t1 track2 track1
2
11 0
24 1
5
0 2 5 8
0 8 0 1
0 10 -1 1
0 12 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train3 t4 t0 t1 track2 track1
2
5 1
11 0
5
0 2 5 8
0 8 0 1
0 10 -1 1
0 12 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train3 t4 t0 t1 track2 track1
2
9 1
11 0
5
0 2 5 8
0 8 0 1
0 10 -1 1
0 12 -1 0
0 32 -1 0
0
end_operator
begin_operator
switch-track train3 t4 t0 t1 track2 track1
2
11 0
20 1
5
0 2 5 8
0 8 0 1
0 10 -1 1
0 12 -1 0
0 32 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v5 v4
1
5 1
3
0 2 10 4
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
move-along-track train3 t2 t1 track1
0
3
0 2 6 8
0 8 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train3 t2 t3 track1
0
3
0 2 6 2
0 7 0 1
0 29 -1 0
0
end_operator
begin_operator
move-along-track train3 t5 t4 track2
0
3
0 2 3 5
0 14 -1 0
0 32 0 1
0
end_operator
begin_operator
move-along-track train3 t5 t6 track2
0
3
0 2 3 1
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
move-along-track train3 t3 t2 track1
0
3
0 2 2 6
0 7 -1 0
0 29 0 1
0
end_operator
begin_operator
move-along-track train3 t6 t5 track2
0
3
0 2 1 3
0 14 0 1
0 17 -1 0
0
end_operator
1
begin_rule
5
16 0
24 0
20 0
5 0
9 0
21 0 1
end_rule
