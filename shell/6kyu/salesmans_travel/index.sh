#!/bin/bash

travel() {
full_addresses=$(echo "$1" | tr -d "\n")
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


############################## Better practice ###########################################

# travel() {
#   address_without_zipcode="$(echo "$1" | grep -oE '[^,]+' | grep "$2\$" | sed "s/ $2\$//")"
#   address_without_hn_and_zipcode="$(echo "$address_without_zipcode" | cut -d' ' -f2- | paste -sd,)"
#   house_numbers="$(echo "$address_without_zipcode" | cut -d' ' -f1 | paste -sd,)"
#   echo "$2:$address_without_hn_and_zipcode/$house_numbers"
# }
# travel "$1" "$2"