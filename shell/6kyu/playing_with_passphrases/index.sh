#!/bin/bash
playPass () {
string=$1
shift_amount=$2

result=""
ascii_A=$(printf "%d" "'A") 

for (( i=0; i<${#string}; i++ )); do
    char="${string:$i:1}"
    ascii_val=$(printf "%d" "'$char")
    shifted_ascii_val=$(( (ascii_val - ascii_A + shift_amount) % 26 + ascii_A ))

    if [[ $char =~ [A-Z] ]]; then
        char_to_add=$(printf "\\$(printf "%o" "$shifted_ascii_val")")
        if (( $i & 1 )); then
            result+=${char_to_add,,}
        else
            result+=$char_to_add
        fi
    elif [[ $char =~ [0-9] ]]; then
        complement=$(( 9 - $char ))
        result+=$complement
    else
        result+=$char
    fi
done

echo "$result" | rev
}
playPass "$1" "$2"
