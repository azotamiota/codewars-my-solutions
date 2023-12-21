#!/bin/bash -x
sumsParts() {
    result=""
    addition=$(echo $1 | tr " " "+")
    iterate=$(( ${#addition} + 1 ))
    echo $addition
    for i in $(seq 0 2 $iterate); do
        number=$(echo "${addition:$i}" | bc)
        result="$result$number "
        echo $i
    done
    echo "${result::-1}0"
}
sumsParts "$1"