comp() {
    [[ "$1" == "" || "$2" == "" ]] && echo false && exit
    squares=$2
    for number in $1; do
        square=$(( $number ** 2 ))
        squares=$(echo $squares | sed "s/\b$square\b//")
    done
    [[ $(echo $squares | tr -d " ") -eq "" ]] && echo true || echo false
}
comp "$1" "$2"