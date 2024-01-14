#!/bin/bash
rank () {
    [[ $1 == "" ]] && echo "No participants" && exit
IFS=","
name_position=0
formatted_weight=$(echo "$2" | sed "s/,//g")
for name in $1;do
    name_uppercase=${name^^}
    current_number=$(( ${#name} ))
    for ((i=0; i<${#name_uppercase}; i++)); do
        letter=${name_uppercase:$i:1}
        letter_rank=$(eval echo {A..${letter}} | tr " " "\n" | wc -l)
        (( current_number += ${letter_rank} ))
    done
    current_weight=${formatted_weight:name_position:1}
    current_number=$(( current_number * current_weight))
    winning_number_and_name+="$current_number@$name,"
    (( name_position++))
done
winner=$(echo "$winning_number_and_name" | grep -oE "[^,]+" | sort -t'@' -k1,1nr -k2,2 | sed -n "${3}p" | cut -d@ -f 2)
[[ $winner == "" ]] && echo "Not enough participants" || echo $winner 
}
rank "$1" "$2" "$3"