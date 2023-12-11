#!/bin/bash
dig_pow () {
    current_power=$2
    result=0
    for digit in $(echo $1 | sed "s/./& /g"); do
        (( result+=$(echo "$digit ^ $current_power" | bc ) ))
        (( current_power++ ))
    done
    if (( $result % $1 == 0 )); then
        echo "$result / $1" | bc
    else
        echo "-1"
    fi
}
dig_pow "$1" "$2"