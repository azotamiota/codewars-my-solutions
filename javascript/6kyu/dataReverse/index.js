function dataReverse(data) {
  let nestedArr = [];
  for (let i = 0; i < data.length; i += 8) {
    nestedArr.push(data.slice(i, i + 8));
  }
  return nestedArr.reverse().flat()
}
