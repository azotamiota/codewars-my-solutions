#!/bin/bash -x
travel() {
full_addresses=$(echo $1 | sed "s/\n//g")
local IFS=','
local solution="$2:"
house_numbers=""
addresses=""
for address in $full_addresses; do
    house_number=$(echo -n $address | cut -d " " -f 1)
    zip_code="${address: -8}"
    address_without_hn="${address#$house_number }"
    address_without_hn_and_zipcode="${address_without_hn::-9}"
    if [[ $zip_code == "$2" ]]; then
        house_numbers+="$house_number@"
        addresses+=$address_without_hn_and_zipcode@
    fi
done
solution+="${addresses%?}/${house_numbers%?}"
echo $solution | tr "@" ","
}
travel "$1" "$2"