#!/usr/bin/env bash

balancedNum ()
{
 length=${#1}
 if (( $length == 2 )); then
    echo "Balanced"
    exit
 fi
 half=$(( $length / 2 ))
 first_sum=0
 last_sum=0
 if (( half % 2 == 1 )); then
   for num in $(echo ${1:0:$half} | grep -o .); do
        $(( first_sum+=$num ))
   done
   for num2 in $(echo ${1:$half+1} | grep -o .); do
        $(( last_sum+=$num2 ))
   done
else
   for num in $(echo ${1:0:$half-1} | grep -o .); do
        $(( first_sum+=$num ))
   done
   for num2 in $(echo ${1:$half+1} | grep -o .); do
        $(( last_sum+=$num2 ))
   done
fi
(( $first_sum == $last_sum )) && echo "Balanced" || echo "Not Balanced"
fi
}

balancedNum $1


#   left_sum=$(echo "$left_sum" | sed 's/./&+/g' | sed 's/.$//')
#   right_sum=$(echo "$right_sum" | sed 's/./&+/g' | sed 's/.$//')
