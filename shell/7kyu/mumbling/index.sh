#!/bin/bash
SOLUTION=''
for ((i=0; i<${#1}; i++)); do
    CHAR=${1:i:1}
    if [[ $i -eq 0 ]]; then
        SOLUTION=${CHAR^^}-
    else
        for ((j=1; j <= $i+1; j++)); do
            if [[ $j -eq 1 ]]; then
                SOLUTION=$SOLUTION${CHAR^^}
            elif [ $CHAR = ${CHAR^^} ]; then
                SOLUTION=$SOLUTION${CHAR,,}
            else
                SOLUTION=$SOLUTION$CHAR
            fi
        done
            SOLUTION=$SOLUTION-
    fi
done
echo ${SOLUTION%?}
