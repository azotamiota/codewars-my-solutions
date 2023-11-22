#!/bin/bash

if (( $1 % 400 == 0 )); then
    echo "1"
elif (( $1 % 100 == 0 )); then
    echo "0"
elif (( $1 % 4 == 0 )); then
    echo "1"
else
    echo "0"
fi