#!/bin/bash

if [ $(echo "$1 * 0.5" | bc -l) \< 1 ]; then
    echo "0"
else
    echo "$1 * 0.5" | bc | cut -f1 -d"."
fi
