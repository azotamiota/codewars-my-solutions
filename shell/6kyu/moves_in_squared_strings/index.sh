#!/bin/bash
rot() {
    echo $1 | rev | sed "s/,/\r/g" # sed "s/,/@/g"
}
selfieAndRot() {
    echo -n "${1}....\r...." | sed "s/,/..../g"
    echo $1 | rev | sed "s/,/..../g"
}
oper() {
    [[ $1 == "rot" ]] && rot $2 || selfieAndRot $2 # your code
}
oper $1 $2