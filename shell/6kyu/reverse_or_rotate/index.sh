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

############################# Another solution ###############################

#!/bin/bash
revrot () {
    (( $2 <= 0 || $2 > ${#1} )) && echo "" && exit
    solution=""
    solution=$(echo $1 | fold -w$2 | {
        while read -r line; do
        if (( ${#line} == $2 )); then
            sum=0
            for digit in $(echo $line | grep -o .); do
                sum=$(( $sum + $digit ** 3 ))
            done
            if (( $sum % 2 == 0 )); then
                # solution=$solution$(echo $line | rev)
                echo -n $(echo $line | rev)
            else
                # solution=$solution${line:1}${line::1}
                echo -n ${line:1}${line::1}
            fi
        fi
    done
    })
    echo "$solution"
}
revrot $1 $2