#!/bin/bash
string=$1
shift_amount=$2

# Initialize an empty result string
result=""
ascii_A=$(printf "%d" "'A") # ASCII value of 'A'


for (( i=0; i<${#string}; i++ )); do
    char="${string:$i:1}"
    ascii_val=$(printf "%d" "'$char")
    shifted_ascii_val=$(( (ascii_val - ascii_A + shift) % 26 + ascii_A ))

    if [[ $char =~ [A-Z] ]]; then
        if (( $i & 1 )); then
            result+="\\$(printf "%o" "${shifted_ascii_val,,}")"
        else
            result+="\\$(printf "%o" "$shifted_ascii_val")"
        fi
    elif [[ $char =~ [0-9] ]]; then
        complement=$(( 9 - $char ))
        result+=$complement
    else
        result+=$char
    fi
done

echo "$result"
