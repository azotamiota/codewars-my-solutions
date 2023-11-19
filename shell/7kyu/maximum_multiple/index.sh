d=$1; b=$2

while [ $b -gt 0 ]; do
  if (( $b % $d == 0 )); then
    echo $b
    exit
  fi
  ((b--))
done