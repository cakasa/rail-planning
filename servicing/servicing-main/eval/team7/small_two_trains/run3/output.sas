begin_version
3
end_version
begin_metric
0
end_metric
22
begin_variable
var0
-1
12
Atom at(train1, t0)
Atom at(train1, t1)
Atom at(train1, t2)
Atom at(train1, t3)
Atom at(train1, t4)
Atom at(train1, t5)
Atom at(train1, t6)
Atom at(train1, t7)
Atom at(train1, t8)
Atom at(train1, t9)
Atom at(train1, v1)
Atom at(train1, v2)
end_variable
begin_variable
var1
-1
12
Atom at(train2, t0)
Atom at(train2, t1)
Atom at(train2, t2)
Atom at(train2, t3)
Atom at(train2, t4)
Atom at(train2, t5)
Atom at(train2, t6)
Atom at(train2, t7)
Atom at(train2, t8)
Atom at(train2, t9)
Atom at(train2, v1)
Atom at(train2, v2)
end_variable
begin_variable
var2
-1
2
Atom free(t0)
NegatedAtom free(t0)
end_variable
begin_variable
var3
-1
2
Atom free(t1)
NegatedAtom free(t1)
end_variable
begin_variable
var4
-1
2
Atom free(t2)
NegatedAtom free(t2)
end_variable
begin_variable
var5
-1
2
Atom free(t3)
NegatedAtom free(t3)
end_variable
begin_variable
var6
-1
2
Atom free(t4)
NegatedAtom free(t4)
end_variable
begin_variable
var7
-1
2
Atom free(t5)
NegatedAtom free(t5)
end_variable
begin_variable
var8
-1
2
Atom free(t6)
NegatedAtom free(t6)
end_variable
begin_variable
var9
-1
2
Atom free(t7)
NegatedAtom free(t7)
end_variable
begin_variable
var10
-1
2
Atom free(t8)
NegatedAtom free(t8)
end_variable
begin_variable
var11
-1
2
Atom free(t9)
NegatedAtom free(t9)
end_variable
begin_variable
var12
-1
2
Atom free(v1)
NegatedAtom free(v1)
end_variable
begin_variable
var13
-1
2
Atom free(v2)
NegatedAtom free(v2)
end_variable
begin_variable
var14
-1
2
Atom hasbeenparked(train1)
NegatedAtom hasbeenparked(train1)
end_variable
begin_variable
var15
-1
2
Atom hasbeenparked(train2)
NegatedAtom hasbeenparked(train2)
end_variable
begin_variable
var16
-1
2
Atom hasdeparted(train1)
NegatedAtom hasdeparted(train1)
end_variable
begin_variable
var17
-1
2
Atom hasdeparted(train2)
NegatedAtom hasdeparted(train2)
end_variable
begin_variable
var18
-1
2
Atom needsservice(train1, cleaning)
NegatedAtom needsservice(train1, cleaning)
end_variable
begin_variable
var19
0
2
Atom new-axiom@0()
NegatedAtom new-axiom@0()
end_variable
begin_variable
var20
0
2
Atom new-axiom@1()
NegatedAtom new-axiom@1()
end_variable
begin_variable
var21
1
2
Atom new-axiom@2()
NegatedAtom new-axiom@2()
end_variable
14
begin_mutex_group
12
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
0 9
0 10
0 11
end_mutex_group
begin_mutex_group
3
0 0
1 0
2 0
end_mutex_group
begin_mutex_group
3
0 1
1 1
3 0
end_mutex_group
begin_mutex_group
3
0 2
1 2
4 0
end_mutex_group
begin_mutex_group
3
0 3
1 3
5 0
end_mutex_group
begin_mutex_group
3
0 4
1 4
6 0
end_mutex_group
begin_mutex_group
3
0 5
1 5
7 0
end_mutex_group
begin_mutex_group
3
0 6
1 6
8 0
end_mutex_group
begin_mutex_group
3
0 7
1 7
9 0
end_mutex_group
begin_mutex_group
3
0 8
1 8
10 0
end_mutex_group
begin_mutex_group
3
0 9
1 9
11 0
end_mutex_group
begin_mutex_group
3
0 10
1 10
12 0
end_mutex_group
begin_mutex_group
3
0 11
1 11
13 0
end_mutex_group
begin_mutex_group
12
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
1 9
1 10
1 11
end_mutex_group
begin_state
11
10
0
0
0
0
0
0
0
0
0
0
1
1
1
1
1
1
0
0
0
0
end_state
begin_goal
4
0 11
1 10
20 1
21 1
end_goal
52
begin_operator
move train1 t0 t1 track1
1
16 1
4
0 0 0 1
0 2 -1 0
0 3 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t0 t3 track2
1
16 1
4
0 0 0 3
0 2 -1 0
0 5 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t1 t0 track0
1
16 1
4
0 0 1 0
0 2 0 1
0 3 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t1 t2 track1
1
16 1
4
0 0 1 2
0 3 -1 0
0 4 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t2 t1 track1
1
16 1
4
0 0 2 1
0 3 0 1
0 4 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t2 t6 track4
1
16 1
4
0 0 2 6
0 4 -1 0
0 8 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t2 t8 track5
1
16 1
4
0 0 2 8
0 4 -1 0
0 10 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t3 t0 track0
1
16 1
4
0 0 3 0
0 2 0 1
0 5 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t3 t4 track2
1
16 1
4
0 0 3 4
0 5 -1 0
0 6 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t4 t3 track2
1
16 1
4
0 0 4 3
0 5 0 1
0 6 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t4 t5 track3
1
16 1
4
0 0 4 5
0 6 -1 0
0 7 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t5 t4 track2
1
16 1
4
0 0 5 4
0 6 0 1
0 7 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t6 t2 track1
1
16 1
4
0 0 6 2
0 4 0 1
0 8 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t6 t7 track4
1
16 1
4
0 0 6 7
0 8 -1 0
0 9 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t7 t6 track4
1
16 1
4
0 0 7 6
0 8 0 1
0 9 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t8 t2 track1
1
16 1
4
0 0 8 2
0 4 0 1
0 10 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 t8 t9 track5
1
16 1
4
0 0 8 9
0 10 -1 0
0 11 0 1
0 14 -1 0
1
end_operator
begin_operator
move train1 t9 t8 track5
1
16 1
4
0 0 9 8
0 10 0 1
0 11 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train1 v1 t0 track0
1
16 1
4
0 0 10 0
0 2 0 1
0 12 -1 0
0 14 -1 0
1
end_operator
begin_operator
move train2 t0 t1 track1
1
17 1
4
0 1 0 1
0 2 -1 0
0 3 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t0 t3 track2
1
17 1
4
0 1 0 3
0 2 -1 0
0 5 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t1 t0 track0
1
17 1
4
0 1 1 0
0 2 0 1
0 3 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t1 t2 track1
1
17 1
4
0 1 1 2
0 3 -1 0
0 4 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t2 t1 track1
1
17 1
4
0 1 2 1
0 3 0 1
0 4 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t2 t6 track4
1
17 1
4
0 1 2 6
0 4 -1 0
0 8 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t2 t8 track5
1
17 1
4
0 1 2 8
0 4 -1 0
0 10 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t3 t0 track0
1
17 1
4
0 1 3 0
0 2 0 1
0 5 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t3 t4 track2
1
17 1
4
0 1 3 4
0 5 -1 0
0 6 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t4 t3 track2
1
17 1
4
0 1 4 3
0 5 0 1
0 6 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t4 t5 track3
1
17 1
4
0 1 4 5
0 6 -1 0
0 7 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t5 t4 track2
1
17 1
4
0 1 5 4
0 6 0 1
0 7 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t6 t2 track1
1
17 1
4
0 1 6 2
0 4 0 1
0 8 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t6 t7 track4
1
17 1
4
0 1 6 7
0 8 -1 0
0 9 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t7 t6 track4
1
17 1
4
0 1 7 6
0 8 0 1
0 9 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t8 t2 track1
1
17 1
4
0 1 8 2
0 4 0 1
0 10 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 t8 t9 track5
1
17 1
4
0 1 8 9
0 10 -1 0
0 11 0 1
0 15 -1 0
1
end_operator
begin_operator
move train2 t9 t8 track5
1
17 1
4
0 1 9 8
0 10 0 1
0 11 -1 0
0 15 -1 0
1
end_operator
begin_operator
move train2 v1 t0 track0
1
17 1
4
0 1 10 0
0 2 0 1
0 12 -1 0
0 15 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v1 t0
2
14 1
16 1
3
0 0 10 0
0 2 0 1
0 12 -1 0
1
end_operator
begin_operator
move-on-arrival train1 v1 v2
2
14 1
16 1
3
0 0 10 11
0 12 -1 0
0 13 0 1
1
end_operator
begin_operator
move-on-arrival train1 v2 v1
2
14 1
16 1
3
0 0 11 10
0 12 0 1
0 13 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v1 t0
2
15 1
17 1
3
0 1 10 0
0 2 0 1
0 12 -1 0
1
end_operator
begin_operator
move-on-arrival train2 v1 v2
2
15 1
17 1
3
0 1 10 11
0 12 -1 0
0 13 0 1
1
end_operator
begin_operator
move-on-arrival train2 v2 v1
2
15 1
17 1
3
0 1 11 10
0 12 0 1
0 13 -1 0
1
end_operator
begin_operator
move-to-departure train1 t0 v1
1
19 1
4
0 0 0 10
0 2 -1 0
0 12 0 1
0 16 -1 0
1
end_operator
begin_operator
move-to-departure train1 v1 v2
1
19 1
4
0 0 10 11
0 12 -1 0
0 13 0 1
0 16 -1 0
1
end_operator
begin_operator
move-to-departure train1 v2 v1
1
19 1
4
0 0 11 10
0 12 0 1
0 13 -1 0
0 16 -1 0
1
end_operator
begin_operator
move-to-departure train2 t0 v1
1
19 1
4
0 1 0 10
0 2 -1 0
0 12 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train2 v1 v2
1
19 1
4
0 1 10 11
0 12 -1 0
0 13 0 1
0 17 -1 0
1
end_operator
begin_operator
move-to-departure train2 v2 v1
1
19 1
4
0 1 11 10
0 12 0 1
0 13 -1 0
0 17 -1 0
1
end_operator
begin_operator
service-train train1 t3 track2 cleaning
2
0 3
16 1
1
0 18 0 1
1
end_operator
begin_operator
service-train train1 t4 track2 cleaning
2
0 4
16 1
1
0 18 0 1
1
end_operator
3
begin_rule
2
14 0
15 0
19 0 1
end_rule
begin_rule
4
14 0
15 0
16 0
17 0
20 0 1
end_rule
begin_rule
1
18 1
21 0 1
end_rule
