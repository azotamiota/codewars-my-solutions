odd_or_even() {
  ((( $1 & 1 )) && echo "Either") ||
  ((( $1 / 2 & 1 )) && echo "Odd") || echo "Even"
}

odd_or_even $1

