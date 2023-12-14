#!/bin/bash
longestConsec() {
read -r -a strarr <<< "$1"
if (( ${#strarr[@]} == 0 )) || (( $2 > ${#strarr[@]} )) || (( $2 < 1 )); then
    echo ""
    exit
fi
loopcount=$(( ${#strarr[@]} - $2 ))
final_concatenated=""
for i in $(seq 0 $loopcount); do
    current_concatenated=''
    for j in $( seq 0 $(($2-1)) ); do
        current_concatenated=$current_concatenated$(echo ${strarr[i+j]})
    done    
    if (( ${#current_concatenated} > ${#final_concatenated})); then
        final_concatenated=$current_concatenated
    fi
done
echo $final_concatenated
}
longestConsec "$1" $2