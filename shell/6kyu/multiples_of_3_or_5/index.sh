#!/bin/bash
sum=0
for i in $(seq 1 $(($1 - 1)) ); do
  if (( $i % 3 == 0 )) || (( $i % 5 == 0 )); then
    (( sum+=$i ))
  fi
done
echo $sum