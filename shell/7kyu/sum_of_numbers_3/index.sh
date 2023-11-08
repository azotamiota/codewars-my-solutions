#!/bin/bash

if [ $1 -lt $2 ]; then
    seq -s "+" $1 $2 | bc
else
    seq -s "+" $2 $1 | bc
fi
