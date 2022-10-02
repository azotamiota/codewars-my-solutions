function revrot(str, sz) {
  if (sz === 0 || str === '' || sz > str.length) {return ''}
  let chunkArr = [];
  while (str.length >= sz) {
    chunkArr.push(str.slice(0, sz));
    str = str.slice(sz);
  }
  let result = ''
  for (let chunk of chunkArr) {
    const digitsCubeSum = [...chunk].reduce((total, current) => {
     return total + Number(current) ** 3
    }, 0)
    if (digitsCubeSum % 2 === 0) {
      result += [...chunk].reverse().join('')
    } else {
      result += chunk.slice(1) + chunk[0]
    }
  }
  return result
}
