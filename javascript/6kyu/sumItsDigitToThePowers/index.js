function sumDigPow(a, b) {
  const numsInRange = [...Array(b - a + 1).keys(a)].map(n => a + n)
  const resultArr = numsInRange.filter(number => { 
    return (
      number < 10 || number ===
      [...String(number)].map((digit, index) => {
      return Number(digit) ** (index + 1) 
    }).reduce((total, current) => {
        return total + current;
      })
    );
  })
  return resultArr;
}
