#!/bin/bash -x
race() {
    (( $1 >= $2 )) && echo "None"
    first_position=$(( $3 * 1000 ))
    second_position=0
    seconds_to_catch=0
    while (( $second_position < $first_position )); do
        (( seconds_to_catch++ ))
        first_position=$(( $first_position + $1 * 1000 / 3600 ))
        second_position=$(( $second_position  + $2 * 1000 / 3600 ))
    done
    hours=$(( $seconds_to_catch / 3600 ))
    minutes=$(( $seconds_to_catch % 3600 / 60))
    seconds=$(( $seconds_to_catch % 60 ))
    echo $hours $minutes $seconds
}
race $1 $2 $3 
# 720 850 70