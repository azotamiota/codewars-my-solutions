capital_input=${1^^}
declare -A letters
letters=(
    [A]=1
    [B]=2
    [C]=3
    [D]=1
    [E]=2
    [F]=3
    [G]=1
    [H]=2
    [I]=3
    [J]=1
    [K]=2
    [L]=3
    [M]=1
    [N]=2
    [O]=3
    [P]=1
    [Q]=2
    [R]=3
    [S]=4
    [T]=1
    [U]=2
    [V]=3
    [W]=1
    [X]=2
    [Y]=3
    [Z]=4
    [0]=2
    [1]=1
    [2]=4
    [3]=4
    [4]=4
    [5]=4
    [6]=4
    [7]=5
    [8]=4
    [9]=5
    [-]=1
)

counter=0
for letter in $(echo "$capital_input" | sed "s/[*# ]/-/g" | grep -o .); do
    (( counter += ${letters[$letter]} ))
done

echo $counter