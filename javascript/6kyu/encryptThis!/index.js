const encryptThis = function (text) {
  const wordsArr = text.split(' ')
  return wordsArr.map(word => {
    if (word.length === 1) {return word.charCodeAt(0)}
    if (word.length === 2) {
      return word.charCodeAt(0) + word[1];
    }
    if (word.length === 3) {
      return word.charCodeAt(0) + word[2] + word[1];
    } else {
      return word.charCodeAt(0) + word.slice(-1) + word.slice(2, -1) + word[1]
    }
  }).join(' ')
};
