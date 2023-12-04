#!/bin/bash
gps() {
  max_average=0
  averages=($(echo "$2" | sed "s/,//g"))
  length=$(echo "${#averages[@]} - 1" | bc)
  for d in $(seq 1 $length); do
    distance=$(echo "${averages[$d]} - ${averages[$d - 1]}" | bc -l)
    average=$(echo "3600 * $distance / $1" | bc)
    if (( $average > $max_average )); then
        max_average=$average
    fi
  done
  echo $max_average
}

gps $1 "$2"

####################### Test times out but logic works #########################
