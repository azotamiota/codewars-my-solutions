#!/bin/bash
IFS=","
vertMirror() {
    solution=""
    for word in $1; do
      solution=$solution"$(echo -n $word | rev)"$'\r' 
    done
    echo ${solution%?}
}
horMirror() {
    solution=""
    for word in $1; do
      solution="$(echo -n $word)"'\r'"$solution"
    done
    echo ${solution%?}
}
oper() {
    if [ "$1" == "vertMirror" ]; then
        vertMirror "$2"
    else
        horMirror "$2"
    fi
}
oper "$1" "$2"
