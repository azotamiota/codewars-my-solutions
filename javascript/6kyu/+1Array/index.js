function upArray(arr){
  if (arr.length !== 0 && arr.every(num => {
    return num >= 0 && num < 10
  })) {
    for (let i = arr.length - 1; i > -1; i--) {
      if (arr[i] === 9 || arr[i] === 10) {
        arr[i] = 0
        if (i === 0) {
          arr.unshift(1);
          break
        }
        arr[i - 1] += 1
        if (arr[i - 1] !== 10) break;
      } else {
        arr[i] += 1
        break;
      }
    }
  return arr
  } else {
    return null
  }
}
