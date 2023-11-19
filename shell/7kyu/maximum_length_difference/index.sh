#!/bin/bash
# input : 2 strings with substrings separated by `,`
# output: number as a string

if (( ${#1} == 0 )) || (( ${#2} == 0 )) ; then
    echo "-1"
    exit
fi

IFS=','
MAX1=0
MAX2=0
MIN1=999999999999
MIN2=999999999999

read -ra FORMATTED1 <<< "$1"
read -ra FORMATTED2 <<< "$2"

accum () {
    for str in ${FORMATTED1[@]}; do 
      if [ ${#str} -gt $MAX1 ]; then
        MAX1=${#str}
      fi

      if [ ${#str} -lt $MIN1 ]; then
        MIN1=${#str}
      fi
    done

    for str2 in ${FORMATTED2[@]}; do 
      if [ ${#str2} -gt $MAX2 ]; then
        MAX2=${#str2}
      fi
      if [ ${#str} -lt $MIN2 ]; then
        MIN2=${#str2}
      fi
    done

    if (( $MAX1 > $MAX2 )); then 
        FINALMAX=$MAX1
    else
        FINALMAX=$MAX2
    fi

    if (( $MIN1 < $MIN2 )); then 
        FINALMIN=$MIN1
    else
        FINALMIN=$MIN2
    fi
    echo "$FINALMAX - $FINALMIN" | bc
}
accum "$1" "$2"