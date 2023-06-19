for PLANNER in explicit-baseline-planners team1 team2 team3 team4 team6 team7 team8 team10 team14 team15 team16 team18  team20 team30 team31  team33 team34 team35 team36  team43 team45 team47
do
    mkdir $PLANNER
    cd $PLANNER
    /data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
    cd ../
    echo $PLANNER DONE
done
