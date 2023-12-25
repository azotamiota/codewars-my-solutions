#!/bin/bash
IFS=";"
for name in $1; do
    echo $name | awk -F: '{print "("toupper($2) ", " toupper($1)")"}'
done | sort | tr -d "\n"