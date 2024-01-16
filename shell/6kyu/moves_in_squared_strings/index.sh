#!/bin/bash
rot() {
    echo $1 | rev | sed "s/,/\r/g" # sed "s/,/@/g"
}
selfieAndRot() {
    selfie=$(echo -n "${1}" | sed "s/,/${dots_needed}\r/g")
    rot=$(echo $1 | rev | sed "s/,/\r${dots_needed}/g")
    echo "$selfie@$rot" | sed "s/@/${dots_needed}\r${dots_needed}/g"
}
oper() {
    [[ $1 == "rot" ]] && rot $2 || selfieAndRot $2 # your code
}
length=$(echo "$2" | sed "s/[^,]//g") 
length=$(( ${#length} + 1 ))
dots_needed=$(printf '.%.0s' $(seq 1 $length))

oper $1 $2