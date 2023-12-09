#!/bin/bash -x
max_rot () {
  rotated=$1
  for i in $(seq 0 ${#1}); do
    rotated=${rotated:0:i}${rotated:i+1}${rotated:i:1}
    echo $rotated
  done | sort -n | tail -1
}
max_rot "$1"
