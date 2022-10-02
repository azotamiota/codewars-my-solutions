const multiplicationTable = function (size) {
  let outerArr = [[...Array(size).keys()].map(x => x + 1)]
  let multiplier = 2;
  while (outerArr.length < size) {
    let innerArr = outerArr[0].map(num => num * multiplier);
    outerArr.push(innerArr);
    multiplier++;
  }
  return outerArr;
};
