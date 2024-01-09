#!/bin/bash
travel() {
local IFS=','
local solution="$2:"
house_numbers=""
for address in $1; do
    if [[ "${address: -8}" == "$2" ]]; then
        echo $address | cut -d " " -f 2
        house_numbers+="$(echo $address | cut -d " " -f 1)@"
        solution+="${address::-9}@"
    fi
done
echo $solution
}
travel "$1" "$2"