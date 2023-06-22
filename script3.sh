mkdir results
EXE=/data/Metric-FF-v2.1/ff

for SETTING in 0 1 2 3 4 5
do
    mkdir results/s$SETTING
    for PROBLEM in problem8 problem9
    do
        THEN=$(date +"%Y-%m-%d %T.%N" | cut -b 1-23)
        echo "Straring $PROBLEM with setting $SETTING at $THEN" 
        echo "Straring $PROBLEM with setting $SETTING at $THEN" > results/s$SETTING/result-$PROBLEM-setting-$SETTING.out
        timeout 30m $EXE -p ./ -o tusd.pddl -f problems/$PROBLEM.pddl -s $SETTING >> results/s$SETTING/result-$PROBLEM-setting-$SETTING.out
        NOW=$(date +"%Y-%m-%d %T.%N" | cut -b 1-23)
        echo "Finished $PROBLEM with setting $SETTING at $NOW"
        SD=$(date -u -d "$THEN" +"%s.%N")
        FD=$(date -u -d "$NOW" +"%s.%N")
        DELTA=$(date -u -d "0 $FD sec - $SD sec" +"%H:%M:%S.%N")
        echo -e "Execution of $PROBLEM with setting $SETTING stopped at $NOW\nTotal time elapsed = $DELTA" >> results/s$SETTING/result-$PROBLEM-setting-$SETTING.out
        
    done
done
