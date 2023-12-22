sumsParts() {
    result=""
    read -a array <<< "$1"
    for i in $(seq 0 ${#array[@]}); do
        result="$result$(echo ${array[@]:i} | tr " " "+" | bc) "
    done 
    echo "${result::-1}0"
}
sumsParts "$1"