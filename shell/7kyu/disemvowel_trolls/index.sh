#!/bin/bash -x

# your code here #input text as $1,output as result
echo $1 | sed 's/[aeiou]//ig'
# tr -d 'AaEeIiOoUu' << "$1"
# SOLUTION=""
# for ((i=0; i<${#1}; i++)); do
#     if [[ ${1:$i:1} != [aeiouAEOUI] ]]; then
#       if [[ ${1:$i-1:2} != "  " ]]; then
#         SOLUTION=$SOLUTION${1:$i:1}
#       fi
#     fi
# done

# echo $SOLUTION