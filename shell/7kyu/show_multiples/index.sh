#!/bin/bash
# solution=""
# for num in $(seq 1 $3); do 
#   if (( $num % $1 == 0 )) && (( $num % $2 == 0 )); then
#     solution+="$num\n"
#   fi
# done

# echo ${solution%??}

echo $(seq 1 $3) | grep (( .%2 ))