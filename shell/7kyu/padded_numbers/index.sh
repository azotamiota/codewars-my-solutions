digit_count=${#1}
zeroes_needed=$(( 5 - digit_count ))
(( $zeroes_needed < 1 )) && echo "Value is $1" && exit
zeroes=$(printf '0%.0s' $(seq 1 $zeroes_needed))
echo "Value is $zeroes$1"

# printf "Value is %05d" $1