#!/bin/bash -x

echo $1$2 | grep -o . | sort -u | paste -sd ""
