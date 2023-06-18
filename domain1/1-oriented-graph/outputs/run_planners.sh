PLANNER=explicit-baseline-planners
mkdir $PLANNER
cd $PLANNER
/data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
cd ../

PLANNER=team2
mkdir $PLANNER
cd $PLANNER
/data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
cd ../

PLANNER=team4
mkdir $PLANNER
cd $PLANNER
/data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
cd ../

PLANNER=team7
mkdir $PLANNER
cd $PLANNER
/data/ipc2018/solvers/sat/$PLANNER/planner.img ../../domain1.pddl ../../problem2.pddl re.out > $PLANNER.log
cd ../

unset PLANNER