sqInRect() {
    (( $1 == $2 )) && echo "nil" && exit
    if (( $2 > $1 )); then
        longer_side=$2
        shorter_side=$1
    else
        longer_side=$1
        shorter_side=$2
    fi
    
    squares=""
    while true; do
        squares="$squares$shorter_side "
        remainder=$(( $longer_side - $shorter_side ))
        (( $shorter_side > $remainder )) && longer_side=$shorter_side && shorter_side=$remainder || longer_side=$remainder
        (( $shorter_side == 0 )) && echo ${squares::-1} && exit
    done
}
sqInRect $1 $2