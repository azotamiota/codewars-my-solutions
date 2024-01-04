digit_count=${#1}
zeroes_needed=$(( 5 - digit_count ))
zeroes=$(printf '0%.0s' $(seq 1 $zeroes_needed))
echo $zeroes$1

# printf "Value is %05d" $1