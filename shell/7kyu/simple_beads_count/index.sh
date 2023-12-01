#!/bin/bash
countRedBeads() {
  (( $1 < 2 )) && echo 0 || echo "($1 - 1) * 2" | bc
}
countRedBeads $1