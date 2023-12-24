#!/bin/bash
revrot () {
    (( $2 <= 0 || $2 > ${#1} )) && echo "" && exit
    chunks=$(( ${#1} / $2 ))
    solution=""
    for i in $(seq 0 $(( $chunks - 1 )) ); do
        sum=0
        start=$(( $i * $2 ))
        chunk=${1:$start:$2}
        for digit in $(echo $chunk | grep -o .); do
            sum=$(( $sum + $digit ** 3 ))
        done
        if (( $sum % 2 == 0 )); then
            solution=$solution$(echo $chunk | rev)
        else
            solution=$solution${chunk:1}${chunk::1}
        fi
    done 
    echo $solution
}
revrot $1 $2