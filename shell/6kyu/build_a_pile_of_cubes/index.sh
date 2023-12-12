#!/bin/bash
find_nb () {
    current_volume=1
    total_volume=0
    while [ $(echo "$total_volume < $1" | bc) -eq 1 ]; do
        total_volume=$(echo "$total_volume + $current_volume^3" | bc)
        current_volume=$(echo "$current_volume + 1" | bc)
    done
    [ $(echo "$total_volume == $1" | bc) -eq 1 ] && echo "$current_volume - 1" | bc || echo "-1"
}
find_nb "$1"


 #################### Code times out on large integers ##############################