#!/bin/bash
mkdir $1
cd $1

mkdir small-two
mkdir small-five
mkdir small-nine
mkdir medium-five
mkdir medium-ten
mkdir medium-fifteen
mkdir medium-twenty
mkdir big-ten
mkdir big-twenty
mkdir big-thirty

cd small-two
time /data/ipc2018/solvers/sat/$1/planner.img ./../../../servicing-simple.pddl ./../../../small_two.pddl ./re.out
