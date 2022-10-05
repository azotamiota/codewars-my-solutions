function solution(input, markers) {
  return input.split`\n`
    .map(line => {
      let indexOfCommentSymbol;
      line.split``.forEach((char, idx) => {
        if (markers.includes(char)) indexOfCommentSymbol = idx
      })
      return line.slice(0, indexOfCommentSymbol).trim()
    })
    .join`\n`
};
