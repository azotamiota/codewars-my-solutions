function comp(array1, array2){
  if (!array1 || !array2) {return false}
  array1.sort((a, b) => a - b)
  array2.sort((a, b) => a - b) 
  const result = 
  array1.filter((number, index) => {
    return number ** 2 !== array2[index]
  })
  return !result.length
}
