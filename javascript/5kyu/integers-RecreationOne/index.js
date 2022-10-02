function listSquared(m, n) {
  let result = [];
  for (let i = m; i <= n; i++) {
    let divisors = [];
    for (let j = 1; j <= i; j++) {
      if (i % j === 0) {
        divisors.push(j)
      }
    }
    const squareSum = divisors.map(num => {return num ** 2}).reduce((total, current) => total + current)
    if (Number.isInteger(squareSum ** 0.5)) {
      divisors.push(squareSum)
      result.push([i, squareSum])
    }
  }
  return result;
}
