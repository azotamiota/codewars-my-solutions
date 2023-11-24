
evaporator () {
    threshold_volume=$(echo "scale=2; $1 * $3 / 100" | bc)
    current_volume=$1
    day=0
    while (( $(echo "$current_volume >= $threshold_volume" | bc -l) )); do
        current_volume=$(echo "$current_volume - $current_volume * $2 / 100" | bc -l)
        ((day++))
    done
    echo $day
}
evaporator "$1" "$2" "$3"
