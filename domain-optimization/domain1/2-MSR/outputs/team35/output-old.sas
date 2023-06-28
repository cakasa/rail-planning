begin_metric
1
end_metric
begin_variables
44
var0 13 -1
var1 13 -1
var2 13 -1
var3 13 -1
var4 13 -1
var5 13 -1
var6 6 -1
var7 2 -1
var8 2 -1
var9 2 0
var10 2 -1
var11 2 -1
var12 2 -1
var13 2 -1
var14 2 0
var15 2 -1
var16 2 0
var17 2 -1
var18 2 -1
var19 2 -1
var20 2 -1
var21 2 -1
var22 2 -1
var23 2 -1
var24 2 0
var25 2 -1
var26 2 -1
var27 2 -1
var28 2 -1
var29 2 -1
var30 2 -1
var31 2 -1
var32 2 -1
var33 2 -1
var34 2 -1
var35 2 -1
var36 2 -1
var37 2 0
var38 2 -1
var39 2 -1
var40 2 0
var41 2 -1
var42 2 -1
var43 2 -1
end_variables
begin_state
4
12
11
12
7
4
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
1
0
0
1
1
0
0
1
1
0
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
1
1
1
end_state
begin_goal
5
9 1
14 1
16 1
24 1
40 1
end_goal
246
begin_operator
switch-to-next-train train1 train2
0
1
0 6 5 3
1
end_operator
begin_operator
switch-to-next-train train1 train3
0
1
0 6 5 0
1
end_operator
begin_operator
switch-to-next-train train1 train4
0
1
0 6 5 2
1
end_operator
begin_operator
switch-to-next-train train1 train5
0
1
0 6 5 1
1
end_operator
begin_operator
switch-to-next-train train1 train6
0
1
0 6 5 4
1
end_operator
begin_operator
move-on-arrival train1 v1 t0
2
6 5
32 1
3
0 4 7 8
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
switch-to-next-train train2 train1
0
1
0 6 3 5
1
end_operator
begin_operator
switch-to-next-train train2 train3
0
1
0 6 3 0
1
end_operator
begin_operator
switch-to-next-train train2 train4
0
1
0 6 3 2
1
end_operator
begin_operator
switch-to-next-train train2 train5
0
1
0 6 3 1
1
end_operator
begin_operator
switch-to-next-train train2 train6
0
1
0 6 3 4
1
end_operator
begin_operator
switch-to-next-train train3 train1
0
1
0 6 0 5
1
end_operator
begin_operator
switch-to-next-train train3 train2
0
1
0 6 0 3
1
end_operator
begin_operator
switch-to-next-train train3 train4
0
1
0 6 0 2
1
end_operator
begin_operator
switch-to-next-train train3 train5
0
1
0 6 0 1
1
end_operator
begin_operator
switch-to-next-train train3 train6
0
1
0 6 0 4
1
end_operator
begin_operator
switch-to-next-train train4 train1
0
1
0 6 2 5
1
end_operator
begin_operator
switch-to-next-train train4 train2
0
1
0 6 2 3
1
end_operator
begin_operator
switch-to-next-train train4 train3
0
1
0 6 2 0
1
end_operator
begin_operator
switch-to-next-train train4 train5
0
1
0 6 2 1
1
end_operator
begin_operator
switch-to-next-train train4 train6
0
1
0 6 2 4
1
end_operator
begin_operator
switch-to-next-train train5 train1
0
1
0 6 1 5
1
end_operator
begin_operator
switch-to-next-train train5 train2
0
1
0 6 1 3
1
end_operator
begin_operator
switch-to-next-train train5 train3
0
1
0 6 1 0
1
end_operator
begin_operator
switch-to-next-train train5 train4
0
1
0 6 1 2
1
end_operator
begin_operator
switch-to-next-train train5 train6
0
1
0 6 1 4
1
end_operator
begin_operator
switch-to-next-train train6 train1
0
1
0 6 4 5
1
end_operator
begin_operator
switch-to-next-train train6 train2
0
1
0 6 4 3
1
end_operator
begin_operator
switch-to-next-train train6 train3
0
1
0 6 4 0
1
end_operator
begin_operator
switch-to-next-train train6 train4
0
1
0 6 4 2
1
end_operator
begin_operator
switch-to-next-train train6 train5
0
1
0 6 4 1
1
end_operator
begin_operator
move-to-track train1 t0 t1 track1
1
6 5
5
0 4 8 4
0 19 0 1
0 20 -1 0
0 32 1 0
0 33 -1 0
1
end_operator
begin_operator
move-to-track train1 t0 t5 track2
1
6 5
5
0 4 8 12
0 10 0 1
0 20 -1 0
0 25 -1 0
0 32 1 0
1
end_operator
begin_operator
move-on-arrival train2 v2 v1
2
6 3
39 1
3
0 2 11 6
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train2 v2 v1
2
6 3
37 1
3
0 2 11 6
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train1 t0 v1
2
6 5
37 1
3
0 4 8 7
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-from-track train1 t1 t0 track1
1
6 5
4
0 4 4 8
0 19 -1 0
0 20 0 1
0 33 -1 1
1
end_operator
begin_operator
move-along-track train1 t1 t2 track1
1
6 5
3
0 4 4 10
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train1 t5 t0 track2
1
6 5
4
0 4 12 8
0 10 -1 0
0 20 0 1
0 25 -1 1
1
end_operator
begin_operator
move-along-track train1 t5 t6 track2
1
6 5
3
0 4 12 5
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
move-on-arrival train2 v1 t0
2
6 3
39 1
3
0 2 6 10
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v1 v2
2
6 5
32 1
3
0 4 7 6
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v1 v2
2
6 3
39 1
3
0 2 6 11
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v3 v2
2
6 0
18 1
3
0 3 12 0
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
reallocate-to-track train1 t0 t1 track1
2
6 5
32 0
4
0 4 8 4
0 19 0 1
0 20 -1 0
0 33 -1 0
2
end_operator
begin_operator
reallocate-to-track train1 t0 t5 track2
2
6 5
32 0
4
0 4 8 12
0 10 0 1
0 20 -1 0
0 25 -1 0
2
end_operator
begin_operator
move-to-departure train1 v1 v2
2
6 5
37 1
3
0 4 7 6
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-to-departure train2 v1 v2
2
6 3
37 1
3
0 2 6 11
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-to-departure train3 v3 v2
2
6 0
37 1
3
0 3 12 0
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-along-track train1 t2 t1 track1
1
6 5
3
0 4 10 4
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train1 t2 t3 track1
1
6 5
3
0 4 10 9
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train1 t6 t5 track2
1
6 5
3
0 4 5 12
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-to-track train2 t0 t1 track1
1
6 3
5
0 2 10 1
0 11 -1 0
0 19 0 1
0 20 -1 0
0 39 1 0
1
end_operator
begin_operator
move-to-track train2 t0 t5 track2
1
6 3
5
0 2 10 7
0 10 0 1
0 20 -1 0
0 38 -1 0
0 39 1 0
1
end_operator
begin_operator
move-to-departure train2 t0 v1
2
6 3
37 1
3
0 2 10 6
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train1 v2 v1
2
6 5
37 1
3
0 4 6 7
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train1 v2 v1
2
6 5
32 1
3
0 4 6 7
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train3 v2 v1
2
6 0
37 1
3
0 3 0 8
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train3 v2 v1
2
6 0
18 1
3
0 3 0 8
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train2 v2 v3
2
6 3
39 1
3
0 2 11 4
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train1 v2 v3
2
6 5
32 1
3
0 4 6 2
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train3 v2 v3
2
6 0
18 1
3
0 3 0 12
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train4 v4 v3
2
6 2
8 1
3
0 1 12 11
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train2 v2 v3
2
6 3
37 1
3
0 2 11 4
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train1 v2 v3
2
6 5
37 1
3
0 4 6 2
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train3 v2 v3
2
6 0
37 1
3
0 3 0 12
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train4 v4 v3
2
6 2
37 1
3
0 1 12 11
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-along-track train1 t3 t2 track1
1
6 5
3
0 4 9 10
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train1 t3 t4 track1
1
6 5
3
0 4 9 3
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-from-track train2 t1 t0 track1
1
6 3
4
0 2 1 10
0 11 -1 1
0 19 -1 0
0 20 0 1
1
end_operator
begin_operator
move-along-track train2 t1 t2 track1
1
6 3
3
0 2 1 3
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train2 t5 t0 track2
1
6 3
4
0 2 7 10
0 10 -1 0
0 20 0 1
0 38 -1 1
1
end_operator
begin_operator
move-along-track train2 t5 t6 track2
1
6 3
3
0 2 7 9
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
move-to-departure train3 v1 v2
2
6 0
37 1
3
0 3 8 0
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v1 t0
2
6 0
18 1
3
0 3 8 10
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v1 v2
2
6 0
18 1
3
0 3 8 0
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-to-departure train2 v3 v2
2
6 3
37 1
3
0 2 4 11
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v3 v2
2
6 3
39 1
3
0 2 4 11
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train1 v3 v2
2
6 5
37 1
3
0 4 2 6
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v3 v2
2
6 5
32 1
3
0 4 2 6
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train4 v3 v2
2
6 2
37 1
3
0 1 11 10
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v3 v2
2
6 2
8 1
3
0 1 11 10
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v3 v4
2
6 0
18 1
3
0 3 12 4
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v3 v4
2
6 3
39 1
3
0 2 4 12
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v3 v4
2
6 5
32 1
3
0 4 2 1
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v3 v4
2
6 2
8 1
3
0 1 11 12
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v5 v4
2
6 1
26 1
3
0 5 4 5
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
reallocate-to-track train2 t0 t1 track1
2
6 3
39 0
4
0 2 10 1
0 11 -1 0
0 19 0 1
0 20 -1 0
2
end_operator
begin_operator
reallocate-to-track train2 t0 t5 track2
2
6 3
39 0
4
0 2 10 7
0 10 0 1
0 20 -1 0
0 38 -1 0
2
end_operator
begin_operator
move-to-departure train3 v3 v4
2
6 0
37 1
3
0 3 12 4
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train2 v3 v4
2
6 3
37 1
3
0 2 4 12
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train1 v3 v4
2
6 5
37 1
3
0 4 2 1
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train4 v3 v4
2
6 2
37 1
3
0 1 11 12
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train5 v5 v4
2
6 1
37 1
3
0 5 4 5
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-along-track train1 t4 t3 track1
1
6 5
3
0 4 3 9
0 7 0 1
0 29 -1 0
1
end_operator
begin_operator
move-along-track train2 t2 t1 track1
1
6 3
3
0 2 3 1
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train2 t2 t3 track1
1
6 3
3
0 2 3 5
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train2 t6 t5 track2
1
6 3
3
0 2 9 7
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-to-track train3 t0 t1 track1
1
6 0
5
0 3 10 9
0 18 1 0
0 19 0 1
0 20 -1 0
0 21 -1 0
1
end_operator
begin_operator
move-to-track train3 t0 t5 track2
1
6 0
5
0 3 10 3
0 10 0 1
0 18 1 0
0 20 -1 0
0 35 -1 0
1
end_operator
begin_operator
move-to-departure train3 t0 v1
2
6 0
37 1
3
0 3 10 8
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train4 v2 v1
2
6 2
37 1
3
0 1 10 8
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train4 v2 v3
2
6 2
37 1
3
0 1 10 11
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train4 v2 v1
2
6 2
8 1
3
0 1 10 8
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train4 v2 v3
2
6 2
8 1
3
0 1 10 11
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train3 v4 v3
2
6 0
37 1
3
0 3 4 12
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train3 v4 v3
2
6 0
18 1
3
0 3 4 12
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train2 v4 v3
2
6 3
37 1
3
0 2 12 4
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train2 v4 v3
2
6 3
39 1
3
0 2 12 4
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train1 v4 v3
2
6 5
37 1
3
0 4 1 2
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train1 v4 v3
2
6 5
32 1
3
0 4 1 2
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train5 v4 v3
2
6 1
37 1
3
0 5 5 3
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train5 v4 v3
2
6 1
26 1
3
0 5 5 3
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train4 v4 v5
2
6 2
8 1
3
0 1 12 3
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v4 v5
2
6 0
18 1
3
0 3 4 11
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v4 v5
2
6 3
39 1
3
0 2 12 0
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v4 v5
2
6 5
32 1
3
0 4 1 0
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v4 v5
2
6 1
26 1
3
0 5 5 4
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v6 v5
2
6 4
34 1
3
0 0 4 10
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-to-departure train4 v4 v5
2
6 2
37 1
3
0 1 12 3
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train3 v4 v5
2
6 0
37 1
3
0 3 4 11
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train2 v4 v5
2
6 3
37 1
3
0 2 12 0
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train1 v4 v5
2
6 5
37 1
3
0 4 1 0
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train5 v4 v5
2
6 1
37 1
3
0 5 5 4
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train6 v6 v5
2
6 4
37 1
3
0 0 4 10
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-along-track train2 t3 t2 track1
1
6 3
3
0 2 5 3
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train2 t3 t4 track1
1
6 3
3
0 2 5 2
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-from-track train3 t1 t0 track1
1
6 0
4
0 3 9 10
0 19 -1 0
0 20 0 1
0 21 -1 1
1
end_operator
begin_operator
move-along-track train3 t1 t2 track1
1
6 0
3
0 3 9 7
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train3 t5 t0 track2
1
6 0
4
0 3 3 10
0 10 -1 0
0 20 0 1
0 35 -1 1
1
end_operator
begin_operator
move-along-track train3 t5 t6 track2
1
6 0
3
0 3 3 1
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
move-to-departure train4 v1 v2
2
6 2
37 1
3
0 1 8 10
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v1 t0
2
6 2
8 1
3
0 1 8 7
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v1 v2
2
6 2
8 1
3
0 1 8 10
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-to-departure train5 v3 v2
2
6 1
37 1
3
0 5 3 9
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train5 v3 v4
2
6 1
37 1
3
0 5 3 5
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v3 v2
2
6 1
26 1
3
0 5 3 9
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v3 v4
2
6 1
26 1
3
0 5 3 5
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train4 v5 v4
2
6 2
37 1
3
0 1 3 12
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train4 v5 v4
2
6 2
8 1
3
0 1 3 12
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-to-departure train3 v5 v4
2
6 0
37 1
3
0 3 11 4
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train3 v5 v4
2
6 0
18 1
3
0 3 11 4
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-to-departure train2 v5 v4
2
6 3
37 1
3
0 2 0 12
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train2 v5 v4
2
6 3
39 1
3
0 2 0 12
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-to-departure train1 v5 v4
2
6 5
37 1
3
0 4 0 1
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train1 v5 v4
2
6 5
32 1
3
0 4 0 1
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-to-departure train6 v5 v4
2
6 4
37 1
3
0 0 10 9
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train6 v5 v4
2
6 4
34 1
3
0 0 10 9
0 13 -1 0
0 15 0 1
1
end_operator
begin_operator
move-on-arrival train5 v5 v6
2
6 1
26 1
3
0 5 4 2
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-on-arrival train4 v5 v6
2
6 2
8 1
3
0 1 3 4
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-on-arrival train3 v5 v6
2
6 0
18 1
3
0 3 11 6
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-on-arrival train2 v5 v6
2
6 3
39 1
3
0 2 0 8
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-on-arrival train1 v5 v6
2
6 5
32 1
3
0 4 0 11
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-on-arrival train6 v5 v6
2
6 4
34 1
3
0 0 10 4
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
reallocate-to-track train3 t0 t1 track1
2
6 0
18 0
4
0 3 10 9
0 19 0 1
0 20 -1 0
0 21 -1 0
2
end_operator
begin_operator
reallocate-to-track train3 t0 t5 track2
2
6 0
18 0
4
0 3 10 3
0 10 0 1
0 20 -1 0
0 35 -1 0
2
end_operator
begin_operator
move-to-departure train5 v5 v6
2
6 1
37 1
3
0 5 4 2
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-to-departure train4 v5 v6
2
6 2
37 1
3
0 1 3 4
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-to-departure train3 v5 v6
2
6 0
37 1
3
0 3 11 6
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-to-departure train2 v5 v6
2
6 3
37 1
3
0 2 0 8
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-to-departure train1 v5 v6
2
6 5
37 1
3
0 4 0 11
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-to-departure train6 v5 v6
2
6 4
37 1
3
0 0 10 4
0 13 -1 0
0 28 0 1
1
end_operator
begin_operator
move-along-track train2 t4 t3 track1
1
6 3
3
0 2 2 5
0 7 0 1
0 29 -1 0
1
end_operator
begin_operator
move-along-track train3 t2 t1 track1
1
6 0
3
0 3 7 9
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train3 t2 t3 track1
1
6 0
3
0 3 7 2
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train3 t6 t5 track2
1
6 0
3
0 3 1 3
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-to-track train4 t0 t1 track1
1
6 2
5
0 1 7 9
0 8 1 0
0 19 0 1
0 20 -1 0
0 22 -1 0
1
end_operator
begin_operator
move-to-track train4 t0 t5 track2
1
6 2
5
0 1 7 1
0 8 1 0
0 10 0 1
0 12 -1 0
0 20 -1 0
1
end_operator
begin_operator
move-to-departure train4 t0 v1
2
6 2
37 1
3
0 1 7 8
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train5 v2 v1
2
6 1
37 1
3
0 5 9 11
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train5 v2 v3
2
6 1
37 1
3
0 5 9 3
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train5 v2 v1
2
6 1
26 1
3
0 5 9 11
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train5 v2 v3
2
6 1
26 1
3
0 5 9 3
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train6 v4 v3
2
6 4
37 1
3
0 0 9 3
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-to-departure train6 v4 v5
2
6 4
37 1
3
0 0 9 10
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v4 v3
2
6 4
34 1
3
0 0 9 3
0 15 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train6 v4 v5
2
6 4
34 1
3
0 0 9 10
0 13 0 1
0 15 -1 0
1
end_operator
begin_operator
move-to-departure train5 v6 v5
2
6 1
37 1
3
0 5 2 4
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v6 v5
2
6 1
26 1
3
0 5 2 4
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-to-departure train4 v6 v5
2
6 2
37 1
3
0 1 4 3
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v6 v5
2
6 2
8 1
3
0 1 4 3
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-to-departure train3 v6 v5
2
6 0
37 1
3
0 3 6 11
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v6 v5
2
6 0
18 1
3
0 3 6 11
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-to-departure train2 v6 v5
2
6 3
37 1
3
0 2 8 0
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v6 v5
2
6 3
39 1
3
0 2 8 0
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-to-departure train1 v6 v5
2
6 5
37 1
3
0 4 11 0
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v6 v5
2
6 5
32 1
3
0 4 11 0
0 13 0 1
0 28 -1 0
1
end_operator
begin_operator
move-along-track train3 t3 t2 track1
1
6 0
3
0 3 2 7
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train3 t3 t4 track1
1
6 0
3
0 3 2 5
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-from-track train4 t1 t0 track1
1
6 2
4
0 1 9 7
0 19 -1 0
0 20 0 1
0 22 -1 1
1
end_operator
begin_operator
move-along-track train4 t1 t2 track1
1
6 2
3
0 1 9 2
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train4 t5 t0 track2
1
6 2
4
0 1 1 7
0 10 -1 0
0 12 -1 1
0 20 0 1
1
end_operator
begin_operator
move-along-track train4 t5 t6 track2
1
6 2
3
0 1 1 6
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
move-to-departure train5 v1 v2
2
6 1
37 1
3
0 5 11 9
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v1 t0
2
6 1
26 1
3
0 5 11 6
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train5 v1 v2
2
6 1
26 1
3
0 5 11 9
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-to-departure train6 v3 v2
2
6 4
37 1
3
0 0 3 12
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-to-departure train6 v3 v4
2
6 4
37 1
3
0 0 3 9
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v3 v2
2
6 4
34 1
3
0 0 3 12
0 30 0 1
0 36 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v3 v4
2
6 4
34 1
3
0 0 3 9
0 15 0 1
0 36 -1 0
1
end_operator
begin_operator
reallocate-to-track train4 t0 t1 track1
2
6 2
8 0
4
0 1 7 9
0 19 0 1
0 20 -1 0
0 22 -1 0
2
end_operator
begin_operator
reallocate-to-track train4 t0 t5 track2
2
6 2
8 0
4
0 1 7 1
0 10 0 1
0 12 -1 0
0 20 -1 0
2
end_operator
begin_operator
move-along-track train3 t4 t3 track1
1
6 0
3
0 3 5 2
0 7 0 1
0 29 -1 0
1
end_operator
begin_operator
move-along-track train4 t2 t1 track1
1
6 2
3
0 1 2 9
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train4 t2 t3 track1
1
6 2
3
0 1 2 5
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train4 t6 t5 track2
1
6 2
3
0 1 6 1
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-to-track train5 t0 t1 track1
1
6 1
5
0 5 6 1
0 19 0 1
0 20 -1 0
0 26 1 0
0 31 -1 0
1
end_operator
begin_operator
move-to-track train5 t0 t5 track2
1
6 1
5
0 5 6 7
0 10 0 1
0 17 -1 0
0 20 -1 0
0 26 1 0
1
end_operator
begin_operator
move-to-departure train5 t0 v1
2
6 1
37 1
3
0 5 6 11
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train6 v2 v1
2
6 4
37 1
3
0 0 12 5
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-to-departure train6 v2 v3
2
6 4
37 1
3
0 0 12 3
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-on-arrival train6 v2 v1
2
6 4
34 1
3
0 0 12 5
0 30 -1 0
0 43 0 1
1
end_operator
begin_operator
move-on-arrival train6 v2 v3
2
6 4
34 1
3
0 0 12 3
0 30 -1 0
0 36 0 1
1
end_operator
begin_operator
move-along-track train4 t3 t2 track1
1
6 2
3
0 1 5 2
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train4 t3 t4 track1
1
6 2
3
0 1 5 0
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-from-track train5 t1 t0 track1
1
6 1
4
0 5 1 6
0 19 -1 0
0 20 0 1
0 31 -1 1
1
end_operator
begin_operator
move-along-track train5 t1 t2 track1
1
6 1
3
0 5 1 10
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train5 t5 t0 track2
1
6 1
4
0 5 7 6
0 10 -1 0
0 17 -1 1
0 20 0 1
1
end_operator
begin_operator
move-along-track train5 t5 t6 track2
1
6 1
3
0 5 7 0
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
move-to-departure train6 v1 v2
2
6 4
37 1
3
0 0 5 12
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v1 t0
2
6 4
34 1
3
0 0 5 7
0 20 0 1
0 43 -1 0
1
end_operator
begin_operator
move-on-arrival train6 v1 v2
2
6 4
34 1
3
0 0 5 12
0 30 0 1
0 43 -1 0
1
end_operator
begin_operator
reallocate-to-track train5 t0 t1 track1
2
6 1
26 0
4
0 5 6 1
0 19 0 1
0 20 -1 0
0 31 -1 0
2
end_operator
begin_operator
reallocate-to-track train5 t0 t5 track2
2
6 1
26 0
4
0 5 6 7
0 10 0 1
0 17 -1 0
0 20 -1 0
2
end_operator
begin_operator
move-along-track train4 t4 t3 track1
1
6 2
3
0 1 0 5
0 7 0 1
0 29 -1 0
1
end_operator
begin_operator
move-along-track train5 t2 t1 track1
1
6 1
3
0 5 10 1
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train5 t2 t3 track1
1
6 1
3
0 5 10 8
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train5 t6 t5 track2
1
6 1
3
0 5 0 7
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-to-track train6 t0 t1 track1
1
6 4
5
0 0 7 11
0 19 0 1
0 20 -1 0
0 34 1 0
0 41 -1 0
1
end_operator
begin_operator
move-to-track train6 t0 t5 track2
1
6 4
5
0 0 7 6
0 10 0 1
0 20 -1 0
0 34 1 0
0 42 -1 0
1
end_operator
begin_operator
move-to-departure train6 t0 v1
2
6 4
37 1
3
0 0 7 5
0 20 -1 0
0 43 0 1
1
end_operator
begin_operator
move-along-track train5 t3 t2 track1
1
6 1
3
0 5 8 10
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train5 t3 t4 track1
1
6 1
3
0 5 8 12
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-from-track train6 t1 t0 track1
1
6 4
4
0 0 11 7
0 19 -1 0
0 20 0 1
0 41 -1 1
1
end_operator
begin_operator
move-along-track train6 t1 t2 track1
1
6 4
3
0 0 11 0
0 19 -1 0
0 27 0 1
1
end_operator
begin_operator
move-from-track train6 t5 t0 track2
1
6 4
4
0 0 6 7
0 10 -1 0
0 20 0 1
0 42 -1 1
1
end_operator
begin_operator
move-along-track train6 t5 t6 track2
1
6 4
3
0 0 6 8
0 10 -1 0
0 23 0 1
1
end_operator
begin_operator
reallocate-to-track train6 t0 t1 track1
2
6 4
34 0
4
0 0 7 11
0 19 0 1
0 20 -1 0
0 41 -1 0
2
end_operator
begin_operator
reallocate-to-track train6 t0 t5 track2
2
6 4
34 0
4
0 0 7 6
0 10 0 1
0 20 -1 0
0 42 -1 0
2
end_operator
begin_operator
move-along-track train5 t4 t3 track1
1
6 1
3
0 5 12 8
0 7 0 1
0 29 -1 0
1
end_operator
begin_operator
move-along-track train6 t2 t1 track1
1
6 4
3
0 0 0 11
0 19 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train6 t2 t3 track1
1
6 4
3
0 0 0 1
0 7 0 1
0 27 -1 0
1
end_operator
begin_operator
move-along-track train6 t6 t5 track2
1
6 4
3
0 0 8 6
0 10 0 1
0 23 -1 0
1
end_operator
begin_operator
move-along-track train6 t3 t2 track1
1
6 4
3
0 0 1 0
0 7 -1 0
0 27 0 1
1
end_operator
begin_operator
move-along-track train6 t3 t4 track1
1
6 4
3
0 0 1 2
0 7 -1 0
0 29 0 1
1
end_operator
begin_operator
move-along-track train6 t4 t3 track1
1
6 4
3
0 0 2 1
0 7 0 1
0 29 -1 0
1
end_operator
8
begin_rule
2
0 5
5 5
9 0 1
end_rule
begin_rule
2
0 9
5 11
9 0 1
end_rule
begin_rule
1
3 6
14 0 1
end_rule
begin_rule
6
32 0
34 0
39 0
8 0
18 0
26 0
37 0 1
end_rule
begin_rule
1
1 11
16 0 1
end_rule
begin_rule
6
32 0
34 0
39 0
8 0
18 0
26 0
24 0 1
end_rule
begin_rule
2
2 11
4 0
40 0 1
end_rule
begin_rule
2
2 0
4 6
40 0 1
end_rule
