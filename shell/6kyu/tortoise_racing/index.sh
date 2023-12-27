#!/bin/bash -x
race() {
    (( $1 >= $2 )) && echo "None"
    first_position=$3
    second_position=0
    first_distance_per_second=$(echo "$1 / 3600" | bc -l)
    second_distance_per_second=$(echo "$2 / 3600" | bc -l)
    seconds_to_catch=0
    while (( $(echo "$second_position < $first_position" | bc -l) )); do
        (( seconds_to_catch++ ))
        first_position=$( echo "$first_position + $first_distance_per_second" | bc -l )
        second_position=$( echo "$second_position  + $second_distance_per_second" | bc -l )
    done
    hours=$(( $seconds_to_catch / 3600 ))
    minutes=$(( ($seconds_to_catch % 3600) / 60))
    seconds=$(( $seconds_to_catch % 60 ))
    echo $hours $minutes $(( seconds - 1 ))
}
race $1 $2 $3 
# input: 720 850 70