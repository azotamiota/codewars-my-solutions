#!/bin/bash -x

INPUT=$1$2
OUTPUT=""
SET=()
for char in $(echo $INPUT | grep -o .); do
    echo $char
    if [[ "${SET[@]}" =~ $char ]]; then
        :
    else
        SET+=$char
        OUTPUT=$OUTPUT$char
    fi
done
echo $OUTPUT | grep -o . | sort | tr -d '\n'
