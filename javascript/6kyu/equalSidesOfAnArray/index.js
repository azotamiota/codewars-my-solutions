function findEvenIndex(arr) {
  if (arr.slice(1).reduce((total, sum) => total + sum, 0) === 0) {return 0}
  if (arr.slice(0, -1).reduce((total, sum) => total + sum) === 0) {return arr.length - 1}
  for (let i = 1; i < arr.length - 1; i++) {
    let sumLeft = arr.slice(0, i).reduce((total, sum) => total + sum);
    let sumRight = arr.slice(i + 1).reduce((total, sum) => total + sum);
    if (sumLeft === sumRight) {return i}
  } return -1
}
