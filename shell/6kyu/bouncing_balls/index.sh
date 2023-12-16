#!/bin/bash
bouncingBall() {
if (( $(echo "$1 > 0 && $2 > 0 && $2 < 1 && $3 < $1" | bc -l) )); then
    current_height=$1
    counter=0
    while (( $(echo "$current_height > $3" | bc -l) )); do
        (( counter++ ))
        current_height=$(echo "$current_height * $2" | bc -l)
        if (( $(echo "$current_height > $3" | bc -l) )); then
            (( counter++ ))
        fi
    done
    echo $counter
else
    echo -1
fi
}
bouncingBall $1 $2 $3