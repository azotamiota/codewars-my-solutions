#!/bin/bash

nbDig() {
  NUMBERS=$(seq 0 $1 | awk '{print $1 * $1}')
  DIGIT_REMOVED=$(echo $NUMBERS | sed "s/$2//g")
  echo "${#NUMBERS} - ${#DIGIT_REMOVED}" | bc
}
nbDig $1 $2