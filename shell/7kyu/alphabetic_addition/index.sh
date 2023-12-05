position=0
for letter in $(echo $1 | grep -o .); do
  position=$(( $position + $(echo `expr index "abcdefghijklmnopqrstuvwxyz" $letter`) ))
done
position=$(( $position % 26 ))
letters=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
echo ${letters[$position - 1]}
