#!/usr/bin/env bash

balancedNum ()
{
 length=${#1}
 if (( $length == 2 )); then
    echo "Balanced"
    exit
 fi
 half=$(( $length / 2 ))
 first_half=0
 last_half=0
 if (( half % 2 == 1 )); then
   first_half=$(( $(echo ${1:0:$half} | sed 's/./&+/g' | sed 's/.$//') ))
   last_half=$(( $(echo ${1:$half+1} | sed 's/./&+/g' | sed 's/.$//') ))
else
   first_half=$(( $(echo ${1:0:$half-1} | sed 's/./&+/g' | sed 's/.$//') ))
   last_half=$(( $(echo ${1:$half+1} | sed 's/./&+/g' | sed 's/.$//') ))
fi
(( $first_half == $last_half )) && echo "Balanced" || echo "Not Balanced"
}

balancedNum $1
