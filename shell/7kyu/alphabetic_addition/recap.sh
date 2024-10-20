#!/bin/bash

input=$1
run_shell() {
position=0
for letter in $(echo $input | grep -o .); do
    position=$(( $position + $(echo `expr index "abcdefghijklmnopqrstuvwxyz" $letter`) ))
done
position=$(( $position % 26 ))
letters=({a..z})
echo ${letters[$position - 1]}
}
run_shell $input
