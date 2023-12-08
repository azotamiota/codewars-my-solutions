#!/bin/bash
containAllRots() {
  for (( i=0; i<${#1}; i++ )); do
    if [[ $2 != *"${1:i}${1::i}"* ]]; then 
      echo "false"
      exit
    fi
  done
  echo "true"
}
containAllRots $1 "$2"