#!/bin/bash

nbYear() {
YEARS=0
CURRENT_POPULATION=$1
TARGET_POPULATION=$4
while [ $CURRENT_POPULATION -lt $TARGET_POPULATION ]; do
    CURRENT_POPULATION=$(echo "$CURRENT_POPULATION + $CURRENT_POPULATION * $2 / 100 + $3" | bc | cut -f1 -d".")
    ((YEARS++))
done
echo $YEARS
}

nbYear $1 $2 $3 $4