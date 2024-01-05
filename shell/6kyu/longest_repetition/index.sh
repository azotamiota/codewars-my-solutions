#!/bin/bash -x
[[ $1 == "" ]] && echo ",0" && exit
longest_consecutive_character=""
longest_repetition=0
current_character=${1::1}
current_repetition=0

input="$1"

for (( i=0; i<${#input}; i++ )); do
    char="${input:i:1}"

    if [[ $char == $current_character ]]; then
        (( current_repetition++ ))
    else
        if (( $current_repetition > $longest_repetition )); then
            longest_repetition=$current_repetition
            longest_consecutive_character=$current_character
        fi
        current_character=$char
        current_repetition=1
    fi
    current_character=$char
    if (( $current_repetition > $longest_repetition )); then
        longest_repetition=$current_repetition
        longest_consecutive_character=$current_character
    fi
done

echo "$longest_consecutive_character,$longest_repetition"