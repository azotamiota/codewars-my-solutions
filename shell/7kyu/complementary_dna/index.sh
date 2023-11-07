#!/bin/bash

SOLUTION=''
for ((i=0; i<${#1}; i++)); do
    CHAR=${1:i:1}
    if [ $CHAR = "A" ]; then
        SOLUTION=${SOLUTION}T
    elif [ $CHAR = "T" ]; then
        SOLUTION=${SOLUTION}A
    elif [ $CHAR = "G" ]; then
        SOLUTION=${SOLUTION}C
    else
        SOLUTION=${SOLUTION}G
    fi
done
echo ${SOLUTION}