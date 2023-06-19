mkdir results

for SETTING in 3 #{0..5}
do
    for PROBLEM in problem3 problem5 problem7 problem8 problem9
    do
        echo "Straring $PROBLEM with setting $SETTING at " 
        date +"%Y-%m-%d %T"
        timeout 5 ./ff-v2.1.exe -p ./ -o tusd.pddl -f problems/$PROBLEM.pddl -w 10 -s $SETTING > results/result-$PROBLEM-setting-$SETTING.out
        
    done
done
