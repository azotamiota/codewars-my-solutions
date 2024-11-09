amount_of_numbers=$1
first_number=$2

jumps=$(($amount_of_numbers / 2))
result=$((($first_number + $jumps) % $amount_of_numbers))
echo $result