function isPrime(n) {
  let divisor = 2;
  while (divisor <= Math.sqrt(n)) {
    if (n % divisor === 0) {return false}
    divisor++;
  }return true
}

function primeFactors(n) {
  let primes = [];
  let divisorPrimes = []
  let copyN = String(n)
  for (let i = 2; i <= Number(copyN); i++) {
    if (isPrime(i)) {
      primes.push(i);
      if (Number(copyN) % i === 0) {
        divisorPrimes.push(i);
        copyN = Number(copyN) / i;
      }
    }
  }

  let squares = new Array(divisorPrimes.length).fill(0);
  for (let i = 0; i < divisorPrimes.length; i++) {
    while (n % divisorPrimes[i] == 0) {
      squares[i]++;
      n = n / divisorPrimes[i];
    }
  }
  let result = ''
  for (let i = 0; i < squares.length; i++) {
    if (squares[i] > 1) {
      result += '(' + divisorPrimes[i] + '**' + squares[i] + ')'
    } else {
      result += "(" + divisorPrimes[i] + ")";
    }
  }
  return result
}

