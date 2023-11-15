#!/bin/bash -x

read -ra words <<< "$1"
for (( i=${#words[@]}-1; i>=0; i-- )); do
    echo -n "${words[i]} "
done
