a=$(echo "$1 + $2 + $3" | bc)
b=$(echo "$1 + $2 * $3" | bc)
c=$(echo "$1 * $2 + $3" | bc)
d=$(echo "$1 * $2 * $3" | bc)
e=$(echo "($1+$2) * $3" | bc)
f=$(echo "$1 * ($2+$3)" | bc)
echo "$a $b $c $d $e $f" | tr ' ' '\n' | sort -n | tail -1