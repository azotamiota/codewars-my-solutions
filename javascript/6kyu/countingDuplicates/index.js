function duplicateCount(text) {
  let charCounter = {};
  for (let char of text.toLowerCase()) {
    charCounter[char] = (charCounter[char] || 0) + 1;
  }
  return Object.entries(charCounter).filter(([letter, value]) => value > 1).length;
}
