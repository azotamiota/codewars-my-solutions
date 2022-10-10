function alphabetPosition(text) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz'
  return [...text].map(char => {
    if (/[a-zA-z]/.test(char)) {return alphabet.indexOf(char.toLowerCase()) + 1}
  }).filter(item => item)
  .join(' ')
}
