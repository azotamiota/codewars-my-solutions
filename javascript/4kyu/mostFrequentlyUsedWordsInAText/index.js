function topThreeWords(text) {
let wordsObject = {}
const words =  text.split(' ')
let counter = 1
for (let word of words) {
  const cleanWord = word.replace(/[^a-z']/ig, "");  
  if (cleanWord.match(/[a-z]/ig)) {
  if (!wordsObject[cleanWord.toLowerCase()]) {
    wordsObject[cleanWord.toLowerCase()] = counter;
    
  } else {
    wordsObject[cleanWord.toLowerCase()] += 1
  }
}
}

let objectArray = []
for (item in wordsObject) {
  objectArray.push([item, wordsObject[item]])
}

const sortedArray = objectArray.sort((a, b) => b[1] - a[1] )
const result = []
for (item of sortedArray) {
  result.push(item[0])
}
return result.slice(0, 3)
}
