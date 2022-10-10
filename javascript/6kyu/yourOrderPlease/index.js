function order(words){
  const wordsArr = new Array(words.split(' ').length)
  words.split(' ').forEach(word => {
    [...word].forEach(char => {
      if (/[1-9]/.test(char)) {
        wordsArr[char - 1] = word
      }
    })
  })
  return wordsArr.join(' ')
}
