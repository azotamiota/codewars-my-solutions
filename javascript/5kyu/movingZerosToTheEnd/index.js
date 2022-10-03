var moveZeros = function (arr) {
  const arrWithoutZeros = arr.filter(item => item !== 0); 
  for (item of arr) {
    if (item === 0) {
      arrWithoutZeros.push(item)
  }
}  return arrWithoutZeros
}
