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
var23
0
2
Atom new-axiom@5()
NegatedAtom new-axiom@5()
end_variable
begin_variable
var22
0
2
Atom new-axiom@1()
NegatedAtom new-axiom@1()
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
23 0 1
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
22 0 1
end_rule
begin_SG
switch 0
check 0
check 0
switch 8
check 0
switch 9
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
61
check 0
check 0
check 0
switch 9
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 14
check 0
check 1
56
check 0
switch 18
check 0
check 1
57
check 0
check 0
switch 16
check 0
check 1
58
check 0
switch 17
check 0
check 1
59
check 0
check 0
switch 18
check 0
check 1
60
check 0
check 0
switch 17
check 0
check 1
62
check 0
check 0
check 0
switch 1
check 0
check 0
switch 8
check 0
switch 9
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
89
check 0
switch 10
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
96
check 0
switch 12
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
103
check 0
switch 15
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
110
check 0
check 0
check 0
switch 9
check 0
switch 16
check 0
check 1
84
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 18
check 0
check 1
85
check 0
check 0
switch 16
check 0
check 1
86
check 0
switch 17
check 0
check 1
87
check 0
check 0
switch 18
check 0
check 1
88
check 0
check 0
switch 17
check 0
check 1
90
check 0
check 0
switch 10
check 0
switch 16
check 0
check 1
91
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 18
check 0
check 1
92
check 0
check 0
switch 16
check 0
check 1
93
check 0
switch 17
check 0
check 1
94
check 0
check 0
switch 18
check 0
check 1
95
check 0
check 0
switch 17
check 0
check 1
97
check 0
check 0
switch 12
check 0
switch 16
check 0
check 1
98
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 18
check 0
check 1
99
check 0
check 0
switch 16
check 0
check 1
100
check 0
switch 17
check 0
check 1
101
check 0
check 0
switch 18
check 0
check 1
102
check 0
check 0
switch 17
check 0
check 1
104
check 0
check 0
switch 15
check 0
switch 16
check 0
check 1
105
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 18
check 0
check 1
106
check 0
check 0
switch 16
check 0
check 1
107
check 0
switch 17
check 0
check 1
108
check 0
check 0
switch 18
check 0
check 1
109
check 0
check 0
switch 17
check 0
check 1
111
check 0
check 0
check 0
switch 2
check 0
check 0
switch 8
check 0
switch 10
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
68
check 0
check 0
check 0
switch 10
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 14
check 0
check 1
63
check 0
switch 18
check 0
check 1
64
check 0
check 0
switch 16
check 0
check 1
65
check 0
switch 17
check 0
check 1
66
check 0
check 0
switch 18
check 0
check 1
67
check 0
check 0
switch 17
check 0
check 1
69
check 0
check 0
check 0
switch 3
check 0
check 0
switch 8
check 0
switch 12
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
75
check 0
check 0
check 0
switch 12
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 14
check 0
check 1
70
check 0
switch 18
check 0
check 1
71
check 0
check 0
switch 16
check 0
check 1
72
check 0
switch 17
check 0
check 1
73
check 0
check 0
switch 18
check 0
check 1
74
check 0
check 0
switch 17
check 0
check 1
76
check 0
check 0
check 0
switch 4
check 0
check 0
switch 8
check 0
switch 15
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
82
check 0
check 0
check 0
switch 14
check 0
switch 15
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 1
77
check 0
check 0
check 0
check 0
check 0
switch 15
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 18
check 0
check 1
78
check 0
check 0
switch 16
check 0
check 1
79
check 0
switch 17
check 0
check 1
80
check 0
check 0
switch 18
check 0
check 1
81
check 0
check 0
switch 17
check 0
check 1
83
check 0
check 0
check 0
switch 5
check 0
switch 9
check 0
check 0
check 1
3
check 0
check 1
6
check 0
check 0
check 0
check 0
check 0
check 0
switch 10
check 0
check 0
check 1
15
check 0
check 1
18
check 0
check 0
check 0
check 0
check 0
check 0
switch 12
check 0
check 0
check 1
27
check 0
check 1
30
check 0
check 0
check 0
check 0
check 0
check 0
switch 15
check 0
check 0
check 1
39
check 0
check 1
42
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 6
check 0
switch 9
check 0
check 0
check 0
check 1
5
check 0
check 1
8
check 0
check 0
check 0
check 0
check 0
switch 10
check 0
check 0
check 0
check 1
17
check 0
check 1
20
check 0
check 0
check 0
check 0
check 0
switch 12
check 0
check 0
check 0
check 1
29
check 0
check 1
32
check 0
check 0
check 0
check 0
check 0
switch 15
check 0
check 0
check 0
check 1
41
check 0
check 1
44
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 7
check 0
switch 9
check 0
check 0
check 0
check 0
check 1
7
check 0
check 1
11
check 0
check 0
check 0
check 0
switch 10
check 0
check 0
check 0
check 0
check 1
19
check 0
check 1
23
check 0
check 0
check 0
check 0
switch 12
check 0
check 0
check 0
check 0
check 1
31
check 0
check 1
35
check 0
check 0
check 0
check 0
switch 15
check 0
check 0
check 0
check 0
check 1
43
check 0
check 1
47
check 0
check 0
check 0
check 0
check 0
check 0
switch 9
check 0
switch 11
check 0
check 2
0
112
check 0
switch 13
check 0
check 2
1
113
check 0
check 0
switch 14
check 0
check 2
2
48
check 0
check 0
switch 11
check 0
check 1
4
check 0
check 0
check 0
switch 13
check 0
check 1
9
check 0
check 0
switch 14
check 0
check 2
10
49
check 0
check 0
check 0
check 0
check 0
check 0
switch 10
check 0
switch 11
check 0
check 2
12
114
check 0
switch 13
check 0
check 2
13
115
check 0
check 0
switch 14
check 0
check 2
14
50
check 0
check 0
switch 11
check 0
check 1
16
check 0
check 0
check 0
switch 13
check 0
check 1
21
check 0
check 0
switch 14
check 0
check 2
22
51
check 0
check 0
check 0
check 0
check 0
check 0
switch 11
check 0
switch 12
check 0
check 2
24
116
check 0
check 1
28
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 15
check 0
check 2
36
118
check 0
check 1
40
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 12
check 0
switch 13
check 0
check 2
25
117
check 0
check 0
switch 14
check 0
check 2
26
52
check 0
check 0
check 0
check 0
switch 13
check 0
check 1
33
check 0
check 0
switch 14
check 0
check 2
34
53
check 0
check 0
check 0
check 0
check 0
check 0
switch 13
check 0
switch 15
check 0
check 2
37
119
check 0
check 0
check 0
check 1
45
check 0
check 0
check 0
check 0
check 0
check 0
check 0
switch 14
check 0
switch 15
check 0
check 0
check 2
38
54
check 0
check 0
check 0
check 2
46
55
check 0
check 0
check 0
check 0
check 0
check 0
check 0
end_SG
begin_DTG
0
2
0
112
2
9 0
11 0
0
113
2
9 0
13 0
end_DTG
begin_DTG
1
1
4
4
0 0
2 0
3 0
4 0
0
end_DTG
begin_DTG
0
2
0
114
2
10 0
11 0
0
115
2
10 0
13 0
end_DTG
begin_DTG
0
2
0
116
2
11 0
12 0
0
117
2
12 0
13 0
end_DTG
begin_DTG
0
2
0
118
2
11 0
15 0
0
119
2
13 0
15 0
end_DTG
begin_DTG
8
1
3
1
9 1
1
6
1
9 3
1
15
1
10 1
1
18
1
10 3
1
27
1
12 1
1
30
1
12 3
1
39
1
15 1
1
42
1
15 3
8
0
4
2
9 2
11 0
0
5
2
6 0
9 2
0
16
2
10 2
11 0
0
17
2
6 0
10 2
0
28
2
11 0
12 2
0
29
2
6 0
12 2
0
40
2
11 0
15 2
0
41
2
6 0
15 2
end_DTG
begin_DTG
8
1
5
1
9 2
1
8
1
9 4
1
17
1
10 2
1
20
1
10 4
1
29
1
12 2
1
32
1
12 4
1
41
1
15 2
1
44
1
15 4
8
0
6
2
5 0
9 3
0
7
2
7 0
9 3
0
18
2
5 0
10 3
0
19
2
7 0
10 3
0
30
2
5 0
12 3
0
31
2
7 0
12 3
0
42
2
5 0
15 3
0
43
2
7 0
15 3
end_DTG
begin_DTG
8
1
7
1
9 3
1
11
1
9 5
1
19
1
10 3
1
23
1
10 5
1
31
1
12 3
1
35
1
12 5
1
43
1
15 3
1
47
1
15 5
8
0
8
2
6 0
9 4
0
9
2
9 4
13 0
0
20
2
6 0
10 4
0
21
2
10 4
13 0
0
32
2
6 0
12 4
0
33
2
12 4
13 0
0
44
2
6 0
15 4
0
45
2
13 0
15 4
end_DTG
begin_DTG
8
1
61
2
0 1
9 8
1
68
2
2 1
10 8
1
75
2
3 1
12 8
1
82
2
4 1
15 8
1
89
2
1 1
9 8
1
96
2
1 1
10 8
1
103
2
1 1
12 8
1
110
2
1 1
15 8
8
0
62
3
0 1
9 9
17 0
0
69
3
2 1
10 9
17 0
0
76
3
3 1
12 9
17 0
0
83
3
4 1
15 9
17 0
0
90
3
1 1
9 9
17 0
0
97
3
1 1
10 9
17 0
0
104
3
1 1
12 9
17 0
0
111
3
1 1
15 9
17 0
end_DTG
begin_DTG
3
1
0
1
11 0
5
1
1
13 0
6
84
2
1 1
16 0
2
0
2
1
14 0
2
3
1
5 0
2
1
4
1
11 0
3
5
1
6 0
2
2
6
1
5 0
4
7
1
7 0
2
3
8
1
6 0
5
9
1
13 0
2
0
10
1
14 0
4
11
1
7 0
3
0
56
2
0 1
14 0
7
57
2
0 1
18 0
7
85
2
1 1
18 0
4
6
58
2
0 1
16 0
6
86
2
1 1
16 0
8
59
2
0 1
17 0
8
87
2
1 1
17 0
4
7
60
2
0 1
18 0
7
88
2
1 1
18 0
9
61
2
0 1
8 0
9
89
2
1 1
8 0
2
8
62
2
0 1
17 0
8
90
2
1 1
17 0
end_DTG
begin_DTG
3
1
12
1
11 0
5
13
1
13 0
6
91
2
1 1
16 0
2
0
14
1
14 0
2
15
1
5 0
2
1
16
1
11 0
3
17
1
6 0
2
2
18
1
5 0
4
19
1
7 0
2
3
20
1
6 0
5
21
1
13 0
2
0
22
1
14 0
4
23
1
7 0
3
0
63
2
2 1
14 0
7
64
2
2 1
18 0
7
92
2
1 1
18 0
4
6
65
2
2 1
16 0
6
93
2
1 1
16 0
8
66
2
2 1
17 0
8
94
2
1 1
17 0
4
7
67
2
2 1
18 0
7
95
2
1 1
18 0
9
68
2
2 1
8 0
9
96
2
1 1
8 0
2
8
69
2
2 1
17 0
8
97
2
1 1
17 0
end_DTG
begin_DTG
8
1
0
1
9 0
1
4
1
9 2
1
12
1
10 0
1
16
1
10 2
1
24
1
12 0
1
28
1
12 2
1
36
1
15 0
1
40
1
15 2
8
0
2
2
9 1
14 0
0
3
2
5 0
9 1
0
14
2
10 1
14 0
0
15
2
5 0
10 1
0
26
2
12 1
14 0
0
27
2
5 0
12 1
0
38
2
14 0
15 1
0
39
2
5 0
15 1
end_DTG
begin_DTG
3
1
24
1
11 0
5
25
1
13 0
6
98
2
1 1
16 0
2
0
26
1
14 0
2
27
1
5 0
2
1
28
1
11 0
3
29
1
6 0
2
2
30
1
5 0
4
31
1
7 0
2
3
32
1
6 0
5
33
1
13 0
2
0
34
1
14 0
4
35
1
7 0
3
0
70
2
3 1
14 0
7
71
2
3 1
18 0
7
99
2
1 1
18 0
4
6
72
2
3 1
16 0
6
100
2
1 1
16 0
8
73
2
3 1
17 0
8
101
2
1 1
17 0
4
7
74
2
3 1
18 0
7
102
2
1 1
18 0
9
75
2
3 1
8 0
9
103
2
1 1
8 0
2
8
76
2
3 1
17 0
8
104
2
1 1
17 0
end_DTG
begin_DTG
8
1
1
1
9 0
1
9
1
9 4
1
13
1
10 0
1
21
1
10 4
1
25
1
12 0
1
33
1
12 4
1
37
1
15 0
1
45
1
15 4
8
0
10
2
9 5
14 0
0
11
2
7 0
9 5
0
22
2
10 5
14 0
0
23
2
7 0
10 5
0
34
2
12 5
14 0
0
35
2
7 0
12 5
0
46
2
14 0
15 5
0
47
2
7 0
15 5
end_DTG
begin_DTG
12
1
10
1
9 5
1
55
1
15 5
1
54
1
15 1
1
53
1
12 5
1
52
1
12 1
1
51
1
10 5
1
50
1
10 1
1
48
1
9 1
1
56
2
0 1
9 6
1
63
2
2 1
10 6
1
70
2
3 1
12 6
1
77
2
4 1
15 6
12
0
1
2
9 0
13 0
0
119
2
13 0
15 0
0
118
2
11 0
15 0
0
117
2
12 0
13 0
0
116
2
11 0
12 0
0
115
2
10 0
13 0
0
114
2
10 0
11 0
0
112
2
9 0
11 0
0
91
3
1 1
10 0
16 0
0
98
3
1 1
12 0
16 0
0
105
3
1 1
15 0
16 0
0
84
3
1 1
9 0
16 0
end_DTG
begin_DTG
3
1
36
1
11 0
5
37
1
13 0
6
105
2
1 1
16 0
2
0
38
1
14 0
2
39
1
5 0
2
1
40
1
11 0
3
41
1
6 0
2
2
42
1
5 0
4
43
1
7 0
2
3
44
1
6 0
5
45
1
13 0
2
0
46
1
14 0
4
47
1
7 0
3
0
77
2
4 1
14 0
7
78
2
4 1
18 0
7
106
2
1 1
18 0
4
6
79
2
4 1
16 0
6
107
2
1 1
16 0
8
80
2
4 1
17 0
8
108
2
1 1
17 0
4
7
81
2
4 1
18 0
7
109
2
1 1
18 0
9
82
2
4 1
8 0
9
110
2
1 1
8 0
2
8
83
2
4 1
17 0
8
111
2
1 1
17 0
end_DTG
begin_DTG
12
1
58
2
0 1
9 7
1
65
2
2 1
10 7
1
72
2
3 1
12 7
1
79
2
4 1
15 7
1
84
2
1 1
9 0
1
86
2
1 1
9 7
1
91
2
1 1
10 0
1
93
2
1 1
10 7
1
98
2
1 1
12 0
1
100
2
1 1
12 7
1
105
2
1 1
15 0
1
107
2
1 1
15 7
12
0
56
3
0 1
9 6
14 0
0
57
3
0 1
9 6
18 0
0
63
3
2 1
10 6
14 0
0
64
3
2 1
10 6
18 0
0
70
3
3 1
12 6
14 0
0
71
3
3 1
12 6
18 0
0
77
3
4 1
14 0
15 6
0
78
3
4 1
15 6
18 0
0
85
3
1 1
9 6
18 0
0
92
3
1 1
10 6
18 0
0
99
3
1 1
12 6
18 0
0
106
3
1 1
15 6
18 0
end_DTG
begin_DTG
16
1
59
2
0 1
9 7
1
62
2
0 1
9 9
1
66
2
2 1
10 7
1
69
2
2 1
10 9
1
73
2
3 1
12 7
1
76
2
3 1
12 9
1
80
2
4 1
15 7
1
83
2
4 1
15 9
1
87
2
1 1
9 7
1
90
2
1 1
9 9
1
94
2
1 1
10 7
1
97
2
1 1
10 9
1
101
2
1 1
12 7
1
104
2
1 1
12 9
1
108
2
1 1
15 7
1
111
2
1 1
15 9
16
0
60
3
0 1
9 8
18 0
0
61
3
0 1
8 0
9 8
0
67
3
2 1
10 8
18 0
0
68
3
2 1
8 0
10 8
0
74
3
3 1
12 8
18 0
0
75
3
3 1
8 0
12 8
0
81
3
4 1
15 8
18 0
0
82
3
4 1
8 0
15 8
0
88
3
1 1
9 8
18 0
0
89
3
1 1
8 0
9 8
0
95
3
1 1
10 8
18 0
0
96
3
1 1
8 0
10 8
0
102
3
1 1
12 8
18 0
0
103
3
1 1
8 0
12 8
0
109
3
1 1
15 8
18 0
0
110
3
1 1
8 0
15 8
end_DTG
begin_DTG
16
1
57
2
0 1
9 6
1
60
2
0 1
9 8
1
64
2
2 1
10 6
1
67
2
2 1
10 8
1
71
2
3 1
12 6
1
74
2
3 1
12 8
1
78
2
4 1
15 6
1
81
2
4 1
15 8
1
85
2
1 1
9 6
1
88
2
1 1
9 8
1
92
2
1 1
10 6
1
95
2
1 1
10 8
1
99
2
1 1
12 6
1
102
2
1 1
12 8
1
106
2
1 1
15 6
1
109
2
1 1
15 8
16
0
58
3
0 1
9 7
16 0
0
59
3
0 1
9 7
17 0
0
65
3
2 1
10 7
16 0
0
66
3
2 1
10 7
17 0
0
72
3
3 1
12 7
16 0
0
73
3
3 1
12 7
17 0
0
79
3
4 1
15 7
16 0
0
80
3
4 1
15 7
17 0
0
86
3
1 1
9 7
16 0
0
87
3
1 1
9 7
17 0
0
93
3
1 1
10 7
16 0
0
94
3
1 1
10 7
17 0
0
100
3
1 1
12 7
16 0
0
101
3
1 1
12 7
17 0
0
107
3
1 1
15 7
16 0
0
108
3
1 1
15 7
17 0
end_DTG
begin_DTG
1
1
0
1
9 9
0
end_DTG
begin_DTG
1
1
1
1
10 7
0
end_DTG
begin_DTG
1
1
2
1
12 8
0
end_DTG
begin_DTG
1
1
5
4
0 0
2 0
3 0
4 0
0
end_DTG
begin_DTG
1
1
3
1
15 6
0
end_DTG
begin_CG
8
1 1
8 2
9 7
14 1
16 3
17 4
18 4
22 1
9
8 8
9 7
10 7
12 7
14 4
15 7
16 12
17 16
18 16
8
1 1
8 2
10 7
14 1
16 3
17 4
18 4
22 1
8
1 1
8 2
12 7
14 1
16 3
17 4
18 4
22 1
8
1 1
8 2
14 1
15 7
16 3
17 4
18 4
22 1
6
6 4
9 2
10 2
11 4
12 2
15 2
6
5 4
7 4
9 2
10 2
12 2
15 2
6
6 4
9 2
10 2
12 2
13 4
15 2
5
9 2
10 2
12 2
15 2
17 8
12
0 2
5 4
6 4
7 4
8 4
11 6
13 6
14 10
16 6
17 8
18 8
19 1
12
2 2
5 4
6 4
7 4
8 4
11 6
13 6
14 10
16 6
17 8
18 8
20 1
10
0 1
2 1
3 1
4 1
5 4
9 3
10 3
12 3
14 8
15 3
12
3 2
5 4
6 4
7 4
8 4
11 6
13 6
14 10
16 6
17 8
18 8
21 1
10
0 1
2 1
3 1
4 1
7 4
9 3
10 3
12 3
14 8
15 3
7
9 5
10 5
11 8
12 5
13 8
15 5
16 4
12
4 2
5 4
6 4
7 4
8 4
11 6
13 6
14 10
16 6
17 8
18 8
23 1
6
9 3
10 3
12 3
14 4
15 3
18 8
6
8 8
9 4
10 4
12 4
15 4
18 8
6
9 4
10 4
12 4
15 4
16 8
17 8
0
0
0
0
0
end_CG
