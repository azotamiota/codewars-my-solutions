function titleCase(title, minorWords) {
  if (!title) {return ''}
  const wordsArr = title.toLowerCase().split(" ");
  const minorArr = minorWords ? minorWords.toLowerCase().split(" ") : "";
  let result = [
    wordsArr[0][0].toUpperCase() + (wordsArr[0][1] ? wordsArr[0].slice(1) : "")
  ];
  for (let i = 1; i < wordsArr.length; i++) {
    if (minorArr.includes(wordsArr[i])) {
      result.push(wordsArr[i]);
    } else {
      result.push(
        wordsArr[i][0].toUpperCase() + (wordsArr[i][1]
          ? wordsArr[i].slice(1)
          : "")
      );
    }
  }
  return result.join(" ");
}
