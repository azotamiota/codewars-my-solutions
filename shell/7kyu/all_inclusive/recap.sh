#!/bin/bash

string=$1
array=$2
containAllRots() {

for i in $(seq 1 ${#string}); do
    if [[ $array != *"${string:i}${string::i}"* ]]; then
        echo "false" && exit
    fi

done
echo "true"
}

containAllRots $string "$array"