function partsSums(ls) {
    if (ls.length === 0) {return [0]}
    let totalSum = ls.reduce((total, current) => total + current)
    let result = [totalSum]
    for (let i = 0; i < ls.length; i++) {
      totalSum -= ls[i];
      result.push(totalSum)
    }
  return result;
}
