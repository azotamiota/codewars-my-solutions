#!/bin/bash
min=$1
max=$2
result=""
is_prime() {
    (( $1 == 1 )) && return 1
    (( $1 == 2 )) && return 0
    for (( j=2; j<$1; j++ )); do
        (( $1 % $j == 0 )) && return 1
    done
    return 0
}

backwardsPrime() {
  for (( i=$min; i<=$max; i++ )); do
    if is_prime $i; then
        reversed=$(echo $i | rev)
        if is_prime $reversed && [[ $i != $reversed ]]; then
            result="$result$i "
        fi
    fi
  done
  echo $result
}
backwardsPrime $1 $2