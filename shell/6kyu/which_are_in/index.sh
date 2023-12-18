inArray() {
    substrings=""
    for word in $1; do
        if [[ $2 =~ $word ]]; then
            substrings="$substrings$word "       
        fi
    done
    echo $substrings | tr ' ' '\n' | sort | uniq | paste -sd ','
}
inArray "$1" "$2"