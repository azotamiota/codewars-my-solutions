#!/bin/bash
distance=$1
current_thickness=0.0001
folds=0

if (( $(echo "$distance < 0" | bc -l) )); then
  echo "None"
  exit
fi

while (( $(echo "$current_thickness < $distance" | bc -l) )); do
  current_thickness=$(echo "$current_thickness * 2" | bc -l)
  ((folds++))
done

echo $folds

