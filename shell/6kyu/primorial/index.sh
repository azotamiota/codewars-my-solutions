primes_count=$1
counter=1
primes_multiplied="2"
current_number=2

is_prime() {
    (( $current_number == 1 )) && return 1
    (( $current_number == 2 )) && return 0
    for (( i=2; i<$current_number; i++ )); do
        (( $current_number % $i == 0 )) && return 1
    done
    return 0
}

while (( $counter < $primes_count )); do
    if (( $current_number > 2 )); then
        is_prime $current_number && primes_multiplied="$primes_multiplied*$current_number" && (( counter++ ))
    fi
    (( current_number++ ))
done

echo "$primes_multiplied" | bc