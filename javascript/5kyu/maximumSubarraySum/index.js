function maxSequence(arr) {
  const positives = arr.filter(item => item > 0)
  if (arr.length === 0 || positives.length === 0) {return 0}
  let allSubArrays = [[arr[arr.length -1]]] 
  for (let i = 0; i < arr.length - 1; i++) {
    for (let j = i + 1; j <= arr.length; j++) {
      allSubArrays.push(arr.slice(i, j))
    }
  }
  const sums = allSubArrays.map(subArr => {
    return subArr.reduce((total, sum) => total + sum);
  })
 return Math.max(...sums);
}
