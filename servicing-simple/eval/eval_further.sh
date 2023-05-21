#!/bin/bash
mkdir extra$1
cd extra$1

problems="big_twenty_trains small_eight_trains medium_fifteen_trains big_thirty_trains"

for problem in $problems
do
    mkdir $problem
    cd $problem
    mkdir run1
    cd run1
    { time /data/ipc2018/solvers/sat/$1/planner.img ./../../../../servicing-simple.pddl ./../../../../$problem.pddl ./re.out ; } &> console.txt
    echo "Planner $1: Done evaluating $problem run1"
    cd ..
    cd ..
done
