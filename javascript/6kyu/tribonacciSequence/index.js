function tribonacci(signature, n) {
  if (n === 0) {return []}
  let tribonacciArr = signature
  while (tribonacciArr.length < n) {
    tribonacciArr.push(
      tribonacciArr[tribonacciArr.length - 3] +
        tribonacciArr[tribonacciArr.length - 2] +
        tribonacciArr[tribonacciArr.length - 1]
    );
  }
  return tribonacciArr.slice(0, n);
}
