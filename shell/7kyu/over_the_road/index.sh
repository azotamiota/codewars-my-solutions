# Good luck, echo the result
############################# Test Times Out, but correct logic ################################# 
address="$1"
n=$(($2 * 2))

if (( $1 % 2 == 0 )); then
    position=$(seq 2 2 $n | grep -n -w $1 | cut -d: -f1)
    seq 1 2 $n | tac | sed "${position}q;d"
else
    position=$(seq 1 2 $n | tac | grep -n -w $1 | cut -d: -f1)
    seq 2 2 $n | sed "${position}q;d"
fi