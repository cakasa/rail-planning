#!/bin/bash
mkdir $1
cd $1

problems="small_two_trains small_five_trains medium_five_trains big_ten_trains medium_ten_trains big_twenty_trains small_eight_trains medium_fifteen_trains big_thirty_trains medium_twenty_trains"

for problem in $problems
do
    mkdir $problem
    cd $problem
    for run in {1..5}
    do
        mkdir run$run
        cd run$run
        { time /data/ipc2018/solvers/sat/$1/planner.img ./../../../../servicing-simple.pddl ./../../../../$problem.pddl ./re.out ; } &> console.txt
        echo "Planner $1: Done evaluating $problem run $run"
        cd ..
    done
    cd ..
done