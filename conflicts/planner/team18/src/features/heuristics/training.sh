#!/bin/bash
BASEDIR="$(dirname "$0")"
python2.7 "$BASEDIR/translate/translate.py" $1  $2 
EXAMPLE_DIR="$(dirname "$1")"
"$BASEDIR/preprocess/preprocess" < "$EXAMPLE_DIR/heuristics.sas"
(ulimit -t 100;"$BASEDIR/search/downward" --search "eager_greedy([add,blind,cg,cea,ff,goalcount,lmcount(lm_rhw(reasonable_orders=true,lm_cost_type=2,cost_type=2)),lmcut,hmax])" < "$EXAMPLE_DIR/heuristic";)
