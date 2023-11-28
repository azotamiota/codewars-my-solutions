if (( $1 > 0 )); then
    (( $2 > 0 )) && echo "1" || echo "4"
elif (( $1 < 0 )); then
    (( $2 < 0 )) && echo "3" || echo "2"
fi