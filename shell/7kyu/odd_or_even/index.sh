odd_or_even() {
  if (( $1 & 1 )); then 
    echo "Either"
  elif (( $1 / 2 & 1 )); then
    echo "Odd"
  else
    echo "Even"
  fi
}

odd_or_even $1

