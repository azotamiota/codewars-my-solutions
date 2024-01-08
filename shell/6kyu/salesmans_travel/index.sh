#!/bin/bash -x
travel() {
local IFS=','
local solution="$2:"
for address in $1; do
    if [[ "${address: -8}" == "$2" ]]; then
        echo $address
        solution+="${address::-9},"
    fi
done
echo $solution
}
travel "$1" "$2"