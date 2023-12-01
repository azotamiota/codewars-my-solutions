# Good luck, echo the result
############################# Test Times Out, but correct logic ################################# 
n=$(($2 * 2))

if (( $1 % 2 )); then
   position=$(seq 1 2 $n | tac | grep -n -w $1 | cut -d: -f1)
    seq 2 2 $n | sed "${position}q;d"
else
    position=$(seq 2 2 $n | grep -n -w $1 | cut -d: -f1)
    seq 1 2 $n | tac | sed "${position}q;d"
fi