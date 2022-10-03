function productFib(prod) {
  let fibonNums = [0, 1, 1];
  while (fibonNums[fibonNums.length - 1] <= prod) {
    let last = fibonNums[fibonNums.length - 1];
    let lastButOne = fibonNums[fibonNums.length - 2];
    fibonNums.push(lastButOne + last);
    if (lastButOne * last === prod) {
      return [lastButOne, last, true];
    } else if (lastButOne * last > prod) {
      return [lastButOne, last, false];
    }
  }
}
