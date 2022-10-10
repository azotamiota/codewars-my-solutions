function digPow(number, power){
  let sum = [...String(number)]
    .reduce((total, digit, index) => total + Number(digit) ** (index + power), 0)
  return Number.isInteger(sum / number) ? sum / number : -1
}
