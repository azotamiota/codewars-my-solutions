function findUniq(arr) {
  const stringObj = {};
  const stringSets = arr.map(string => {
    const lowerCaseString = [...string.toLowerCase()]
    const sortedSetString = Array.from(new Set(lowerCaseString))
      .sort()
      .join('')
      return sortedSetString
    })
    stringSets.forEach((stringSet) => {
      stringObj[stringSet] = (stringObj[stringSet] || 0) + 1 // the unique element key in the "stringObj" will have the value of 1
    })
    const uniqueString = Object.entries(stringObj).filter(obj => obj[1] === 1)[0][0] // this is the character set of the unique string
    return arr[stringSets.indexOf(uniqueString)] //return the apporpriate element of the original array
    
}
