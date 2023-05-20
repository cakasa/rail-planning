#!/bin/bash
mkdir $1
cd $1

problems="small_two_trains small_five_trains small_nine_trains medium_five_trains medium_ten_trains medium_fifteen_trains medium_twenty_trains"

for problem in $problems
do
    mkdir $problem
    cd $problem
    for run in {1..2}
    do
        mkdir run$value
        cd run$value
        { time /data/ipc2018/solvers/sat/$1/planner.img ./../../../../servicing-simple.pddl ./../../../../$problem.pddl ./re.out ; } 2> time.txt
        cd ..
    done
    cd ..
done
