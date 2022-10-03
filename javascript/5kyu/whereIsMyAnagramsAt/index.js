function anagrams(word, words) {
  const anagramsList = [];
  const sortedWord = word.split('').sort().join('')
  console.log(sortedWord)
  for (item of words) {
    const sortedItem = item.split('').sort().join('')
    if (sortedItem === sortedWord) {anagramsList.push(item)};
  }console.log(anagramsList);
  return anagramsList
}
