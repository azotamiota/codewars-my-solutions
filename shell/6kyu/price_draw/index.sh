#!/bin/bash -x
rank () {
declare -A letter_ranks=(
    [A]=1 [B]=2 [C]=3 [D]=4 [E]=5 [F]=6 [G]=7 [H]=8 [I]=9 [J]=10
    [K]=11 [L]=12 [M]=13 [N]=14 [O]=15 [P]=16 [Q]=17 [R]=18 [S]=19
    [T]=20 [U]=21 [V]=22 [W]=23 [X]=24 [Y]=25 [Z]=26
)
IFS=","
winning_numbers=""
name_position=0
formatted_weight=$(echo "$2" | sed "s/,//g")
for name in $1;do
    name_uppercase=${name^^}
    current_number=$(( ${#name} ))
    for ((i=0; i<${#name_uppercase}; i++)); do
        letter=${name_uppercase:$i:1}
        (( current_number += ${letter_ranks[$letter]} ))
    done
    current_weight=${formatted_weight:name_position:1}
    current_number=$(( current_number * current_weight))
    winning_numbers+="$current_number,"
    (( name_position++))
done
echo "$winning_numbers" | grep -oE "[^,]+" | sort #####  How to sort the final numbers and find the associated name?
}
rank "$1" "$2" "$3"