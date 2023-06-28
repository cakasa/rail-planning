for PLANNER in explicit-baseline-planners team2 team4 team7 team18 team35
do
    mkdir $PLANNER
    cd $PLANNER
    /data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
    cd ../
    echo $PLANNER DONE
done
