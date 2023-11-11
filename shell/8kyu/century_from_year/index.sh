#!/bin/bash

if [ $1 -lt 101 ]; then
    echo "1"
elif [ $(( $1 % 100 )) -eq 0 ]; then
    echo ${1%??}
else
    echo "${1%??} + 1" | bc
fi