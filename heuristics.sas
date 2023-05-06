begin_version
3
end_version
begin_metric
0
end_metric
28
begin_variable
var0
-1
10
Atom at(train4, t1)
Atom at(train4, v2)
Atom at(train4, v1)
Atom at(train4, t0)
Atom at(train4, t3)
Atom at(train4, t2)
Atom at(train4, t5)
Atom at(train4, v4)
Atom at(train4, t4)
Atom at(train4, v3)
end_variable
begin_variable
var1
-1
10
Atom at(train2, v2)
Atom at(train2, v4)
Atom at(train2, t0)
Atom at(train2, v1)
Atom at(train2, t5)
Atom at(train2, t3)
Atom at(train2, t4)
Atom at(train2, v3)
Atom at(train2, t2)
Atom at(train2, t1)
end_variable
begin_variable
var2
-1
10
Atom at(train3, v3)
Atom at(train3, t0)
Atom at(train3, v1)
Atom at(train3, t1)
Atom at(train3, t2)
Atom at(train3, t4)
Atom at(train3, t3)
Atom at(train3, v4)
Atom at(train3, t5)
Atom at(train3, v2)
end_variable
begin_variable
var3
-1
10
Atom at(train1, t3)
Atom at(train1, t0)
Atom at(train1, v1)
Atom at(train1, v2)
Atom at(train1, t1)
Atom at(train1, v3)
Atom at(train1, t4)
Atom at(train1, v4)
Atom at(train1, t5)
Atom at(train1, t2)
end_variable
begin_variable
var4
0
2
Atom new-axiom@3()
<none of those>
end_variable
begin_variable
var5
-1
2
Atom hasbeenparked(train2)
<none of those>
end_variable
begin_variable
var6
0
2
Atom new-axiom@4()
<none of those>
end_variable
begin_variable
var7
-1
2
Atom parkedon(train1, track1)
<none of those>
end_variable
begin_variable
var8
0
2
Atom new-axiom@1()
<none of those>
end_variable
begin_variable
var9
-1
2
Atom hasbeenparked(train3)
<none of those>
end_variable
begin_variable
var10
-1
2
Atom hasbeenparked(train4)
<none of those>
end_variable
begin_variable
var11
-1
2
Atom parkedon(train2, track1)
<none of those>
end_variable
begin_variable
var12
-1
2
Atom free(v1)
<none of those>
end_variable
begin_variable
var13
-1
2
Atom free(t2)
<none of those>
end_variable
begin_variable
var14
0
2
Atom new-axiom@2()
<none of those>
end_variable
begin_variable
var15
0
2
Atom new-axiom@5()
<none of those>
end_variable
begin_variable
var16
-1
2
Atom free(t1)
<none of those>
end_variable
begin_variable
var17
-1
2
Atom free(t5)
<none of those>
end_variable
begin_variable
var18
-1
2
Atom parkedon(train4, track1)
<none of those>
end_variable
begin_variable
var19
-1
2
Atom free(v3)
<none of those>
end_variable
begin_variable
var20
-1
2
Atom free(t0)
<none of those>
end_variable
begin_variable
var21
-1
2
Atom free(t4)
<none of those>
end_variable
begin_variable
var22
-1
2
Atom free(v2)
<none of those>
end_variable
begin_variable
var23
-1
2
Atom free(t3)
<none of those>
end_variable
begin_variable
var24
0
2
Atom new-axiom@0()
<none of those>
end_variable
begin_variable
var25
-1
2
Atom free(v4)
<none of those>
end_variable
begin_variable
var26
-1
2
Atom hasbeenparked(train1)
<none of those>
end_variable
begin_variable
var27
-1
2
Atom parkedon(train3, track1)
<none of those>
end_variable
14
begin_mutex_group
5
3 0
1 5
2 6
0 4
23 0
end_mutex_group
begin_mutex_group
5
3 4
1 9
2 3
0 0
16 0
end_mutex_group
begin_mutex_group
10
3 2
3 3
3 5
3 7
3 1
3 4
3 9
3 0
3 6
3 8
end_mutex_group
begin_mutex_group
5
3 8
1 4
2 8
0 6
17 0
end_mutex_group
begin_mutex_group
10
2 2
2 9
2 0
2 7
2 1
2 3
2 4
2 6
2 5
2 8
end_mutex_group
begin_mutex_group
5
3 9
1 8
2 4
0 5
13 0
end_mutex_group
begin_mutex_group
5
3 1
1 2
2 1
0 3
20 0
end_mutex_group
begin_mutex_group
5
3 2
1 3
2 2
0 2
12 0
end_mutex_group
begin_mutex_group
5
3 5
1 7
2 0
0 9
19 0
end_mutex_group
begin_mutex_group
5
3 6
1 6
2 5
0 8
21 0
end_mutex_group
begin_mutex_group
5
3 7
1 1
2 7
0 7
25 0
end_mutex_group
begin_mutex_group
10
1 3
1 0
1 7
1 1
1 2
1 9
1 8
1 5
1 6
1 4
end_mutex_group
begin_mutex_group
5
3 3
1 0
2 9
0 1
22 0
end_mutex_group
begin_mutex_group
10
0 2
0 1
0 9
0 7
0 3
0 0
0 5
0 4
0 8
0 6
end_mutex_group
begin_state
7
0
0
2
0
1
0
1
0
1
1
1
1
0
0
0
0
0
1
1
0
0
1
0
0
1
1
1
end_state
begin_goal
5
4 1
6 1
8 1
14 1
15 1
end_goal
120
begin_operator
move-on-arrival train1 v1 t0
1
26 1
3
0 3 2 1
0 12 -1 0
0 20 0 1
0
end_operator
begin_operator
move-to-track train1 t0 t1 track1
0
5
0 3 1 4
0 7 -1 0
0 16 0 1
0 20 -1 0
0 26 -1 0
0
end_operator
begin_operator
move-to-track train1 t0 t5 track1
0
5
0 3 1 8
0 7 -1 0
0 17 0 1
0 20 -1 0
0 26 -1 0
0
end_operator
begin_operator
move-along-track train1 t0 t1 track1
0
3
0 3 1 4
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train1 t0 t5 track1
0
3
0 3 1 8
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v2 v1
1
5 1
3
0 1 0 3
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train2 v2 v1
1
24 1
3
0 1 0 3
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train1 t0 v1
1
24 1
3
0 3 1 2
0 12 0 1
0 20 -1 0
0
end_operator
begin_operator
move-from-track train1 t1 t0 track1
0
4
0 3 4 1
0 7 -1 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train1 t1 t0 track1
0
3
0 3 4 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train1 t1 t2 track1
0
3
0 3 4 9
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
move-from-track train1 t5 t0 track1
0
4
0 3 8 1
0 7 -1 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train1 t5 t0 track1
0
3
0 3 8 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train1 t5 t4 track1
0
3
0 3 8 6
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
move-on-arrival train2 v1 t0
1
5 1
3
0 1 3 2
0 12 -1 0
0 20 0 1
0
end_operator
begin_operator
move-on-arrival train1 v1 v2
1
26 1
3
0 3 2 3
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train2 v1 v2
1
5 1
3
0 1 3 0
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train3 v3 v2
1
9 1
3
0 2 0 9
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train1 v1 v2
1
24 1
3
0 3 2 3
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train2 v1 v2
1
24 1
3
0 1 3 0
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train3 v3 v2
1
24 1
3
0 2 0 9
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train2 t0 v1
1
24 1
3
0 1 2 3
0 12 0 1
0 20 -1 0
0
end_operator
begin_operator
move-to-departure train1 v2 v1
1
24 1
3
0 3 3 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train3 v2 v1
1
24 1
3
0 2 9 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-along-track train1 t2 t1 track1
0
3
0 3 9 4
0 13 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train1 t2 t3 track1
0
3
0 3 9 0
0 13 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train1 t4 t3 track1
0
3
0 3 6 0
0 21 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train1 t4 t5 track1
0
3
0 3 6 8
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
move-to-track train2 t0 t1 track1
0
5
0 1 2 9
0 5 -1 0
0 11 -1 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
move-to-track train2 t0 t5 track1
0
5
0 1 2 4
0 5 -1 0
0 11 -1 0
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train2 t0 t1 track1
0
3
0 1 2 9
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train2 t0 t5 track1
0
3
0 1 2 4
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v2 v1
1
26 1
3
0 3 3 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v2 v1
1
9 1
3
0 2 9 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v2 v3
1
5 1
3
0 1 0 7
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v2 v3
1
26 1
3
0 3 3 5
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v2 v3
1
9 1
3
0 2 9 0
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v4 v3
1
10 1
3
0 0 7 9
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-to-departure train2 v2 v3
1
24 1
3
0 1 0 7
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train1 v2 v3
1
24 1
3
0 3 3 5
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train3 v2 v3
1
24 1
3
0 2 9 0
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train4 v4 v3
1
24 1
3
0 0 7 9
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-to-departure train3 v1 v2
1
24 1
3
0 2 2 9
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train3 v1 t0
1
9 1
3
0 2 2 1
0 12 -1 0
0 20 0 1
0
end_operator
begin_operator
move-on-arrival train3 v1 v2
1
9 1
3
0 2 2 9
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train2 v3 v2
1
24 1
3
0 1 7 0
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train1 v3 v2
1
24 1
3
0 3 5 3
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-to-departure train4 v3 v2
1
24 1
3
0 0 9 1
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-along-track train1 t3 t2 track1
0
3
0 3 0 9
0 13 0 1
0 23 -1 0
0
end_operator
begin_operator
move-along-track train1 t3 t4 track1
0
3
0 3 0 6
0 21 0 1
0 23 -1 0
0
end_operator
begin_operator
move-from-track train2 t1 t0 track1
0
4
0 1 9 2
0 11 -1 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train2 t1 t0 track1
0
3
0 1 9 2
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train2 t1 t2 track1
0
3
0 1 9 8
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
move-from-track train2 t5 t0 track1
0
4
0 1 4 2
0 11 -1 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train2 t5 t0 track1
0
3
0 1 4 2
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train2 t5 t4 track1
0
3
0 1 4 6
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
move-on-arrival train2 v3 v2
1
5 1
3
0 1 7 0
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train1 v3 v2
1
26 1
3
0 3 5 3
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train4 v3 v2
1
10 1
3
0 0 9 1
0 19 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train3 v3 v4
1
9 1
3
0 2 0 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-on-arrival train2 v3 v4
1
5 1
3
0 1 7 1
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-on-arrival train1 v3 v4
1
26 1
3
0 3 5 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-on-arrival train4 v3 v4
1
10 1
3
0 0 9 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-to-departure train3 v3 v4
1
24 1
3
0 2 0 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-to-departure train2 v3 v4
1
24 1
3
0 1 7 1
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-to-departure train1 v3 v4
1
24 1
3
0 3 5 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-to-departure train4 v3 v4
1
24 1
3
0 0 9 7
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
move-to-departure train3 t0 v1
1
24 1
3
0 2 1 2
0 12 0 1
0 20 -1 0
0
end_operator
begin_operator
move-to-departure train4 v2 v1
1
24 1
3
0 0 1 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train4 v2 v3
1
24 1
3
0 0 1 9
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t1 track1
0
5
0 2 1 3
0 9 -1 0
0 16 0 1
0 20 -1 0
0 27 -1 0
0
end_operator
begin_operator
move-to-track train3 t0 t5 track1
0
5
0 2 1 8
0 9 -1 0
0 17 0 1
0 20 -1 0
0 27 -1 0
0
end_operator
begin_operator
move-along-track train3 t0 t1 track1
0
3
0 2 1 3
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train3 t0 t5 track1
0
3
0 2 1 8
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v2 v1
1
10 1
3
0 0 1 2
0 12 0 1
0 22 -1 0
0
end_operator
begin_operator
move-on-arrival train4 v2 v3
1
10 1
3
0 0 1 9
0 19 0 1
0 22 -1 0
0
end_operator
begin_operator
move-to-departure train3 v4 v3
1
24 1
3
0 2 7 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-to-departure train2 v4 v3
1
24 1
3
0 1 1 7
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-to-departure train1 v4 v3
1
24 1
3
0 3 7 5
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-along-track train2 t2 t1 track1
0
3
0 1 8 9
0 13 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train2 t2 t3 track1
0
3
0 1 8 5
0 13 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train2 t4 t3 track1
0
3
0 1 6 5
0 21 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train2 t4 t5 track1
0
3
0 1 6 4
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
move-on-arrival train3 v4 v3
1
9 1
3
0 2 7 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-on-arrival train2 v4 v3
1
5 1
3
0 1 1 7
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-on-arrival train1 v4 v3
1
26 1
3
0 3 7 5
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
move-to-departure train4 v1 v2
1
24 1
3
0 0 2 1
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-on-arrival train4 v1 t0
1
10 1
3
0 0 2 3
0 12 -1 0
0 20 0 1
0
end_operator
begin_operator
move-on-arrival train4 v1 v2
1
10 1
3
0 0 2 1
0 12 -1 0
0 22 0 1
0
end_operator
begin_operator
move-from-track train3 t1 t0 track1
0
4
0 2 3 1
0 16 -1 0
0 20 0 1
0 27 -1 1
0
end_operator
begin_operator
move-along-track train3 t1 t0 track1
0
3
0 2 3 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train3 t1 t2 track1
0
3
0 2 3 4
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
move-from-track train3 t5 t0 track1
0
4
0 2 8 1
0 17 -1 0
0 20 0 1
0 27 -1 1
0
end_operator
begin_operator
move-along-track train3 t5 t0 track1
0
3
0 2 8 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train3 t5 t4 track1
0
3
0 2 8 5
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
move-along-track train2 t3 t2 track1
0
3
0 1 5 8
0 13 0 1
0 23 -1 0
0
end_operator
begin_operator
move-along-track train2 t3 t4 track1
0
3
0 1 5 6
0 21 0 1
0 23 -1 0
0
end_operator
begin_operator
move-to-departure train4 t0 v1
1
24 1
3
0 0 3 2
0 12 0 1
0 20 -1 0
0
end_operator
begin_operator
move-to-track train4 t0 t1 track1
0
5
0 0 3 0
0 10 -1 0
0 16 0 1
0 18 -1 0
0 20 -1 0
0
end_operator
begin_operator
move-to-track train4 t0 t5 track1
0
5
0 0 3 6
0 10 -1 0
0 17 0 1
0 18 -1 0
0 20 -1 0
0
end_operator
begin_operator
move-along-track train4 t0 t1 track1
0
3
0 0 3 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train4 t0 t5 track1
0
3
0 0 3 6
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
move-along-track train3 t2 t1 track1
0
3
0 2 4 3
0 13 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train3 t2 t3 track1
0
3
0 2 4 6
0 13 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train3 t4 t3 track1
0
3
0 2 5 6
0 21 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train3 t4 t5 track1
0
3
0 2 5 8
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
move-from-track train4 t1 t0 track1
0
4
0 0 0 3
0 16 -1 0
0 18 -1 1
0 20 0 1
0
end_operator
begin_operator
move-along-track train4 t1 t0 track1
0
3
0 0 0 3
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train4 t1 t2 track1
0
3
0 0 0 5
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
move-from-track train4 t5 t0 track1
0
4
0 0 6 3
0 17 -1 0
0 18 -1 1
0 20 0 1
0
end_operator
begin_operator
move-along-track train4 t5 t0 track1
0
3
0 0 6 3
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
move-along-track train4 t5 t4 track1
0
3
0 0 6 8
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
move-along-track train3 t3 t2 track1
0
3
0 2 6 4
0 13 0 1
0 23 -1 0
0
end_operator
begin_operator
move-along-track train3 t3 t4 track1
0
3
0 2 6 5
0 21 0 1
0 23 -1 0
0
end_operator
begin_operator
move-along-track train4 t2 t1 track1
0
3
0 0 5 0
0 13 -1 0
0 16 0 1
0
end_operator
begin_operator
move-along-track train4 t2 t3 track1
0
3
0 0 5 4
0 13 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train4 t4 t3 track1
0
3
0 0 8 4
0 21 -1 0
0 23 0 1
0
end_operator
begin_operator
move-along-track train4 t4 t5 track1
0
3
0 0 8 6
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
move-along-track train4 t3 t2 track1
0
3
0 0 4 5
0 13 0 1
0 23 -1 0
0
end_operator
begin_operator
move-along-track train4 t3 t4 track1
0
3
0 0 4 8
0 21 0 1
0 23 -1 0
0
end_operator
6
begin_rule
4
9 0
10 0
26 0
5 0
24 0 1
end_rule
begin_rule
1
2 0
4 0 1
end_rule
begin_rule
1
1 0
6 0 1
end_rule
begin_rule
1
3 7
14 0 1
end_rule
begin_rule
1
0 2
8 0 1
end_rule
begin_rule
4
9 0
26 0
10 0
5 0
15 0 1
end_rule
