#!/bin/bash
partlist() {
spaces_count=$(wc -w <<< $1 | bc)
solution=""
for whitespace in $(seq 1 $(($spaces_count-1)) ); do
    solution=${solution}\($(echo $1 | sed "s/ /,/$whitespace")\)
done
echo $solution
}
partlist "$1"
