#!/bin/bash -x

ARR=( $(echo $1 | sed "s/#/ /g") )
echo $ARR