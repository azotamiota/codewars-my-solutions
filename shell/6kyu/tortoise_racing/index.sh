#!/bin/bash -x
race() {
    (( $1 >= $2 )) && echo "None"
    first_position=$(( $3 * 1000 ))
    second_position=0
    milliseconds_to_catch=0
    while [[ echo "$second_position < $first_position" | bc -l ]]; do
        (( milliseconds_to_catch++ ))
        first_position=$(echo "$first_position + $1 * 1000 / 3600000" | bc -l )
        second_position=$(echo "$second_position  + $2 * 1000 / 3600000" | bc -l)
    done
    hours=$(( $milliseconds_to_catch / 3600000 ))
    minutes=$(( $milliseconds_to_catch % 3600000 / 60000))
    seconds=$(( $milliseconds_to_catch % 60000 / 1000 ))
    echo $hours $minutes $seconds
}
race $1 $2 $3