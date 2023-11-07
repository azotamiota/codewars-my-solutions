#!/bin/bash

n=$1
SUM=0
while [ $n -gt 0 ]; do
    SUM=$(echo "$SUM + $n" | bc)
    ((n--))
done

echo $SUM