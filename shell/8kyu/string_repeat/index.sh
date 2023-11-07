#!/bin/bash

repeat=$1
string=$2

RESULT=''

for ((i=1; i<=repeat; i++)); do
    RESULT=$RESULT$string
done

echo $RESULT
