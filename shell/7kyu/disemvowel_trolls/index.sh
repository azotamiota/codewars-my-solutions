#!/bin/bash -x

echo $1 | sed 's/[aeiou]//ig'
