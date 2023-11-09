#!/bin/bash
printerError() {
NEW_STRING=$(echo $1 | sed 's/[n-z]//g')
ERRORS=$(echo "${#1}-${#NEW_STRING}" | bc)
echo "${ERRORS}/${#1}"
}
printerError $1