begin_version
3
end_version
begin_metric
0
end_metric
24
begin_variable
var0
-1
2
Atom hasbeenparked(train1)
NegatedAtom hasbeenparked(train1)
end_variable
begin_variable
var1
0
2
Atom new-axiom@0()
NegatedAtom new-axiom@0()
end_variable
begin_variable
var2
-1
2
Atom hasbeenparked(train2)
NegatedAtom hasbeenparked(train2)
end_variable
begin_variable
var3
-1
2
Atom hasbeenparked(train3)
NegatedAtom hasbeenparked(train3)
end_variable
begin_variable
var4
-1
2
Atom hasbeenparked(train4)
NegatedAtom hasbeenparked(train4)
end_variable
begin_variable
var5
-1
2
Atom free(t2)
NegatedAtom free(t2)
end_variable
begin_variable
var6
-1
2
Atom free(t3)
NegatedAtom free(t3)
end_variable
begin_variable
var7
-1
2
Atom free(t4)
NegatedAtom free(t4)
end_variable
begin_variable
var8
-1
2
Atom free(v4)
NegatedAtom free(v4)
end_variable
begin_variable
var9
-1
10
Atom at(train1, t0)
Atom at(train1, t1)
Atom at(train1, t2)
Atom at(train1, t3)
Atom at(train1, t4)
Atom at(train1, t5)
Atom at(train1, v1)
Atom at(train1, v2)
Atom at(train1, v3)
Atom at(train1, v4)
end_variable
begin_variable
var10
-1
10
Atom at(train2, t0)
Atom at(train2, t1)
Atom at(train2, t2)
Atom at(train2, t3)
Atom at(train2, t4)
Atom at(train2, t5)
Atom at(train2, v1)
Atom at(train2, v2)
Atom at(train2, v3)
Atom at(train2, v4)
end_variable
begin_variable
var11
-1
2
Atom free(t1)
NegatedAtom free(t1)
end_variable
begin_variable
var12
-1
10
Atom at(train3, t0)
Atom at(train3, t1)
Atom at(train3, t2)
Atom at(train3, t3)
Atom at(train3, t4)
Atom at(train3, t5)
Atom at(train3, v1)
Atom at(train3, v2)
Atom at(train3, v3)
Atom at(train3, v4)
end_variable
begin_variable
var13
-1
2
Atom free(t5)
NegatedAtom free(t5)
end_variable
begin_variable
var14
-1
2
Atom free(t0)
NegatedAtom free(t0)
end_variable
begin_variable
var15
-1
10
Atom at(train4, t0)
Atom at(train4, t1)
Atom at(train4, t2)
Atom at(train4, t3)
Atom at(train4, t4)
Atom at(train4, t5)
Atom at(train4, v1)
Atom at(train4, v2)
Atom at(train4, v3)
Atom at(train4, v4)
end_variable
begin_variable
var16
-1
2
Atom free(v1)
NegatedAtom free(v1)
end_variable
begin_variable
var17
-1
2
Atom free(v3)
NegatedAtom free(v3)
end_variable
begin_variable
var18
-1
2
Atom free(v2)
NegatedAtom free(v2)
end_variable
begin_variable
var19
0
2
Atom new-axiom@2()
NegatedAtom new-axiom@2()
end_variable
begin_variable
var20
0
2
Atom new-axiom@4()
NegatedAtom new-axiom@4()
end_variable
begin_variable
var21
0
2
Atom new-axiom@3()
NegatedAtom new-axiom@3()
end_variable
begin_variable
var22
0
2
Atom new-axiom@1()
NegatedAtom new-axiom@1()
end_variable
begin_variable
var23
0
2
Atom new-axiom@5()
NegatedAtom new-axiom@5()
end_variable
10
begin_mutex_group
5
9 0
10 0
12 0
15 0
14 0
end_mutex_group
begin_mutex_group
5
9 1
10 1
12 1
15 1
11 0
end_mutex_group
begin_mutex_group
5
9 2
10 2
12 2
15 2
5 0
end_mutex_group
begin_mutex_group
5
9 3
10 3
12 3
15 3
6 0
end_mutex_group
begin_mutex_group
5
9 4
10 4
12 4
15 4
7 0
end_mutex_group
begin_mutex_group
5
9 5
10 5
12 5
15 5
13 0
end_mutex_group
begin_mutex_group
5
9 6
10 6
12 6
15 6
16 0
end_mutex_group
begin_mutex_group
5
9 7
10 7
12 7
15 7
18 0
end_mutex_group
begin_mutex_group
5
9 8
10 8
12 8
15 8
17 0
end_mutex_group
begin_mutex_group
5
9 9
10 9
12 9
15 9
8 0
end_mutex_group
begin_state
1
0
1
1
1
0
0
0
1
6
7
0
8
0
0
9
1
1
1
0
0
0
0
0
end_state
begin_goal
5
19 1
20 1
21 1
22 1
23 1
end_goal
120
begin_operator
move-along-track train1 t0 t1 track1
0
3
0 9 0 1
0 14 -1 0
0 11 0 1
1
end_operator
begin_operator
move-along-track train1 t0 t5 track1
0
3
0 9 0 5
0 14 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train1 t1 t0 track1
0
3
0 9 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-along-track train1 t1 t2 track1
0
3
0 9 1 2
0 11 -1 0
0 5 0 1
1
end_operator
begin_operator
move-along-track train1 t2 t1 track1
0
3
0 9 2 1
0 11 0 1
0 5 -1 0
1
end_operator
begin_operator
move-along-track train1 t2 t3 track1
0
3
0 9 2 3
0 5 -1 0
0 6 0 1
1
end_operator
begin_operator
move-along-track train1 t3 t2 track1
0
3
0 9 3 2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
move-along-track train1 t3 t4 track1
0
3
0 9 3 4
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
move-along-track train1 t4 t3 track1
0
3
0 9 4 3
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
move-along-track train1 t4 t5 track1
0
3
0 9 4 5
0 7 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train1 t5 t0 track1
0
3
0 9 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train1 t5 t4 track1
0
3
0 9 5 4
0 7 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train2 t0 t1 track1
0
3
0 10 0 1
0 14 -1 0
0 11 0 1
1
end_operator
begin_operator
move-along-track train2 t0 t5 track1
0
3
0 10 0 5
0 14 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train2 t1 t0 track1
0
3
0 10 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-along-track train2 t1 t2 track1
0
3
0 10 1 2
0 11 -1 0
0 5 0 1
1
end_operator
begin_operator
move-along-track train2 t2 t1 track1
0
3
0 10 2 1
0 11 0 1
0 5 -1 0
1
end_operator
begin_operator
move-along-track train2 t2 t3 track1
0
3
0 10 2 3
0 5 -1 0
0 6 0 1
1
end_operator
begin_operator
move-along-track train2 t3 t2 track1
0
3
0 10 3 2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
move-along-track train2 t3 t4 track1
0
3
0 10 3 4
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
move-along-track train2 t4 t3 track1
0
3
0 10 4 3
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
move-along-track train2 t4 t5 track1
0
3
0 10 4 5
0 7 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train2 t5 t0 track1
0
3
0 10 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train2 t5 t4 track1
0
3
0 10 5 4
0 7 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train3 t0 t1 track1
0
3
0 12 0 1
0 14 -1 0
0 11 0 1
1
end_operator
begin_operator
move-along-track train3 t0 t5 track1
0
3
0 12 0 5
0 14 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train3 t1 t0 track1
0
3
0 12 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-along-track train3 t1 t2 track1
0
3
0 12 1 2
0 11 -1 0
0 5 0 1
1
end_operator
begin_operator
move-along-track train3 t2 t1 track1
0
3
0 12 2 1
0 11 0 1
0 5 -1 0
1
end_operator
begin_operator
move-along-track train3 t2 t3 track1
0
3
0 12 2 3
0 5 -1 0
0 6 0 1
1
end_operator
begin_operator
move-along-track train3 t3 t2 track1
0
3
0 12 3 2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
move-along-track train3 t3 t4 track1
0
3
0 12 3 4
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
move-along-track train3 t4 t3 track1
0
3
0 12 4 3
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
move-along-track train3 t4 t5 track1
0
3
0 12 4 5
0 7 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train3 t5 t0 track1
0
3
0 12 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train3 t5 t4 track1
0
3
0 12 5 4
0 7 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train4 t0 t1 track1
0
3
0 15 0 1
0 14 -1 0
0 11 0 1
1
end_operator
begin_operator
move-along-track train4 t0 t5 track1
0
3
0 15 0 5
0 14 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train4 t1 t0 track1
0
3
0 15 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-along-track train4 t1 t2 track1
0
3
0 15 1 2
0 11 -1 0
0 5 0 1
1
end_operator
begin_operator
move-along-track train4 t2 t1 track1
0
3
0 15 2 1
0 11 0 1
0 5 -1 0
1
end_operator
begin_operator
move-along-track train4 t2 t3 track1
0
3
0 15 2 3
0 5 -1 0
0 6 0 1
1
end_operator
begin_operator
move-along-track train4 t3 t2 track1
0
3
0 15 3 2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
move-along-track train4 t3 t4 track1
0
3
0 15 3 4
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
move-along-track train4 t4 t3 track1
0
3
0 15 4 3
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
move-along-track train4 t4 t5 track1
0
3
0 15 4 5
0 7 -1 0
0 13 0 1
1
end_operator
begin_operator
move-along-track train4 t5 t0 track1
0
3
0 15 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-along-track train4 t5 t4 track1
0
3
0 15 5 4
0 7 0 1
0 13 -1 0
1
end_operator
begin_operator
move-from-track train1 t1 t0 track1
0
3
0 9 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-from-track train1 t5 t0 track1
0
3
0 9 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-from-track train2 t1 t0 track1
0
3
0 10 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-from-track train2 t5 t0 track1
0
3
0 10 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-from-track train3 t1 t0 track1
0
3
0 12 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-from-track train3 t5 t0 track1
0
3
0 12 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-from-track train4 t1 t0 track1
0
3
0 15 1 0
0 14 0 1
0 11 -1 0
1
end_operator
begin_operator
move-from-track train4 t5 t0 track1
0
3
0 15 5 0
0 14 0 1
0 13 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v1 t0
1
0 1
3
0 9 6 0
0 14 0 1
0 16 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v1 v2
1
0 1
3
0 9 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-on-arrival train1 v2 v1
1
0 1
3
0 9 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v2 v3
1
0 1
3
0 9 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-on-arrival train1 v3 v2
1
0 1
3
0 9 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v3 v4
1
0 1
3
0 9 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-on-arrival train1 v4 v3
1
0 1
3
0 9 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v1 t0
1
2 1
3
0 10 6 0
0 14 0 1
0 16 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v1 v2
1
2 1
3
0 10 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-on-arrival train2 v2 v1
1
2 1
3
0 10 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v2 v3
1
2 1
3
0 10 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-on-arrival train2 v3 v2
1
2 1
3
0 10 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v3 v4
1
2 1
3
0 10 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-on-arrival train2 v4 v3
1
2 1
3
0 10 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v1 t0
1
3 1
3
0 12 6 0
0 14 0 1
0 16 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v1 v2
1
3 1
3
0 12 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-on-arrival train3 v2 v1
1
3 1
3
0 12 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v2 v3
1
3 1
3
0 12 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-on-arrival train3 v3 v2
1
3 1
3
0 12 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-on-arrival train3 v3 v4
1
3 1
3
0 12 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-on-arrival train3 v4 v3
1
3 1
3
0 12 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v1 t0
1
4 1
3
0 15 6 0
0 14 0 1
0 16 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v1 v2
1
4 1
3
0 15 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-on-arrival train4 v2 v1
1
4 1
3
0 15 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v2 v3
1
4 1
3
0 15 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-on-arrival train4 v3 v2
1
4 1
3
0 15 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-on-arrival train4 v3 v4
1
4 1
3
0 15 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-on-arrival train4 v4 v3
1
4 1
3
0 15 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-to-departure train1 t0 v1
1
1 1
3
0 9 0 6
0 14 -1 0
0 16 0 1
1
end_operator
begin_operator
move-to-departure train1 v1 v2
1
1 1
3
0 9 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-to-departure train1 v2 v1
1
1 1
3
0 9 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-to-departure train1 v2 v3
1
1 1
3
0 9 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-to-departure train1 v3 v2
1
1 1
3
0 9 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train1 v3 v4
1
1 1
3
0 9 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-to-departure train1 v4 v3
1
1 1
3
0 9 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-to-departure train2 t0 v1
1
1 1
3
0 10 0 6
0 14 -1 0
0 16 0 1
1
end_operator
begin_operator
move-to-departure train2 v1 v2
1
1 1
3
0 10 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-to-departure train2 v2 v1
1
1 1
3
0 10 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-to-departure train2 v2 v3
1
1 1
3
0 10 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-to-departure train2 v3 v2
1
1 1
3
0 10 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train2 v3 v4
1
1 1
3
0 10 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-to-departure train2 v4 v3
1
1 1
3
0 10 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-to-departure train3 t0 v1
1
1 1
3
0 12 0 6
0 14 -1 0
0 16 0 1
1
end_operator
begin_operator
move-to-departure train3 v1 v2
1
1 1
3
0 12 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-to-departure train3 v2 v1
1
1 1
3
0 12 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-to-departure train3 v2 v3
1
1 1
3
0 12 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-to-departure train3 v3 v2
1
1 1
3
0 12 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train3 v3 v4
1
1 1
3
0 12 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-to-departure train3 v4 v3
1
1 1
3
0 12 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-to-departure train4 t0 v1
1
1 1
3
0 15 0 6
0 14 -1 0
0 16 0 1
1
end_operator
begin_operator
move-to-departure train4 v1 v2
1
1 1
3
0 15 6 7
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
move-to-departure train4 v2 v1
1
1 1
3
0 15 7 6
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
move-to-departure train4 v2 v3
1
1 1
3
0 15 7 8
0 18 -1 0
0 17 0 1
1
end_operator
begin_operator
move-to-departure train4 v3 v2
1
1 1
3
0 15 8 7
0 18 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train4 v3 v4
1
1 1
3
0 15 8 9
0 17 -1 0
0 8 0 1
1
end_operator
begin_operator
move-to-departure train4 v4 v3
1
1 1
3
0 15 9 8
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
move-to-track train1 t0 t1 track1
0
4
0 9 0 1
0 14 -1 0
0 11 0 1
0 0 -1 0
1
end_operator
begin_operator
move-to-track train1 t0 t5 track1
0
4
0 9 0 5
0 14 -1 0
0 13 0 1
0 0 -1 0
1
end_operator
begin_operator
move-to-track train2 t0 t1 track1
0
4
0 10 0 1
0 14 -1 0
0 11 0 1
0 2 -1 0
1
end_operator
begin_operator
move-to-track train2 t0 t5 track1
0
4
0 10 0 5
0 14 -1 0
0 13 0 1
0 2 -1 0
1
end_operator
begin_operator
move-to-track train3 t0 t1 track1
0
4
0 12 0 1
0 14 -1 0
0 11 0 1
0 3 -1 0
1
end_operator
begin_operator
move-to-track train3 t0 t5 track1
0
4
0 12 0 5
0 14 -1 0
0 13 0 1
0 3 -1 0
1
end_operator
begin_operator
move-to-track train4 t0 t1 track1
0
4
0 15 0 1
0 14 -1 0
0 11 0 1
0 4 -1 0
1
end_operator
begin_operator
move-to-track train4 t0 t5 track1
0
4
0 15 0 5
0 14 -1 0
0 13 0 1
0 4 -1 0
1
end_operator
6
begin_rule
1
9 9
19 0 1
end_rule
begin_rule
1
10 7
20 0 1
end_rule
begin_rule
1
12 8
21 0 1
end_rule
begin_rule
1
15 6
22 0 1
end_rule
begin_rule
4
0 0
2 0
3 0
4 0
1 0 1
end_rule
begin_rule
4
0 0
2 0
3 0
4 0
23 0 1
end_rule
