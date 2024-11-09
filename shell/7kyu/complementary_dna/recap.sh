result=""
for char in $(echo "$1" | grep . -o); do
    if [ $char == "A" ]; then result=${result}T; fi
    if [ $char == "T" ]; then result=${result}A; fi
    if [ $char == "C" ]; then result=${result}G; fi
    if [ $char == "G" ]; then result=${result}C; fi
done
echo $result