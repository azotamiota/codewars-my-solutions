#!/bin/bash
lowercase_input=${1,,}
declare -A characters
counter=0
for char in $(sed "s/./& /g" <<< $lowercase_input); do
    (( characters[$char]+=1 )) || (( characters[$char]=1 ))
done
for key in ${!characters[@]}; do
    if (( ${characters[$key]} > 1 )); then
        (( counter++ ))
    fi
done
echo $counter

# One line solution:
# echo $1 | grep -o . | sort -f | uniq -id