#!/bin/bash
cats_shelves() {
current_shelf=$1
target_shelf=$2
jumps=0
while (( $current_shelf < $target_shelf - 1 )); do
  (( current_shelf+=3 ))
  (( jumps++ ))
done
(( $current_shelf == $target_shelf )) && echo $jumps || echo $(( $jumps + 1 ))
}

cats_shelves $1 $2
