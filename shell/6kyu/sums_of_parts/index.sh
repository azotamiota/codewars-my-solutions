sumsParts() {
    [ "$1" == "" ] && echo "0" && exit
    
    read -a array <<< "$1" 
    sums=()
    total=$(echo ${array[@]} | tr " " "+" | bc)
    sums[0]=$total          
    
    for (( i=1; i<=${#array[@]}; i++ )); do
        (( sums[i] = sums[i-1] - array[i-1] ))
    done

    echo "${sums[@]}"
}

sumsParts "$1"
