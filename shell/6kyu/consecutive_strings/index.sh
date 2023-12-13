#!/bin/bash
longestConsec() {
    read -r -a strarr <<< "${1:1:-1}"
for i in $(seq 0 ${#strarr[@]}); do
    echo ${strarr[i]}${strarr[i+1]}
done
# echo $1
# echo $2
}
longestConsec "$1" $2