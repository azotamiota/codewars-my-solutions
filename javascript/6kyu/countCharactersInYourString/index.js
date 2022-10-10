function count (string) {  
  let result = {};
  [...string].forEach(letter => {
    result[letter] = result[letter] + 1 || 1 
  })
   return result;
}
