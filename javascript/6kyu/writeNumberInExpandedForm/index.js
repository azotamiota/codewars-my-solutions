function expandedForm(num) {
  let numberToPlay = num
  const howManyDigits = String(numberToPlay).length;
  let resultStr = ''
  for (let i = howManyDigits; i >= 2; i--) {
    const currentDivisor = Math.floor(numberToPlay / 10 ** (i - 1)) * (10 ** (i - 1))
    if (currentDivisor) {
      resultStr += String(currentDivisor) + " + "
    }
    numberToPlay = numberToPlay % (10 ** (i - 1))
  }
  return num % 10 === 0 ? resultStr.slice(0, -3) : resultStr + String(num)[howManyDigits - 1]
}
