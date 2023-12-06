position=0
for letter in $(echo $1 | grep -o .); do
  position=$(( $position + $(echo `expr index "abcdefghijklmnopqrstuvwxyz" $letter`) ))
done
position=$(( $position % 26 ))
letters=({a..z})
echo ${letters[$position - 1]}
