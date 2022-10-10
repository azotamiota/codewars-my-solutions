function isPangram(string){
  string = string.toLowerCase()
  let filteredCharSet = Array.from(new Set(string)).filter(char => {
   return char.match(/[a-z]/)
  })
  return filteredCharSet.length === 26;
}
