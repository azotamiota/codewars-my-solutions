min=$1
max=$2
result=""

is_prime() {
    (( $1 == 2 || $1 == 3)) && return 0
    (( $1 == 1 || $1 % 2 == 0 || $1 % 3 == 0 )) && return 1
    j=5
    while (( j * j <= $1 )); do
        (( $1 % j == 0 || $1 % (j+2) == 0 )) && return 1
        (( j+= 6 ))
    done
    return 0
}

backwardsPrime() {
  for (( i=$min; i<=$max; i++ )); do
    if is_prime $i; then
        reversed=$(echo $i | rev)
        if is_prime $reversed && [[ $i != $reversed ]]; then
            result+="$i "
        fi
    fi
  done
  echo $result
}
backwardsPrime $1 $2