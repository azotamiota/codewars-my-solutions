function solution(string) {
  return !string ? '' : string.split("").reduce(
    (newStr, currentLetter, index) => {
      if (currentLetter.match(/[A-Z]/) && index !== 0) {
        return newStr += " " + currentLetter;
      } else {
        return newStr += currentLetter;
      }
    },
  );
}
