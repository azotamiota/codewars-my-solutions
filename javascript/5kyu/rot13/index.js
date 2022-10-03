function rot13(message) {
  const lowerCase = "abcdefghijklmnopqrstuvwxyz";
  const upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  return [...message]
    .map((letter) => {
      if (lowerCase.indexOf(letter) !== -1) {
        return lowerCase[(lowerCase.indexOf(letter) + 13) % 26];
      } else if (upperCase.indexOf(letter) !== -1) {
        return upperCase[(upperCase.indexOf(letter) + 13) % 26];
      } else {
        return letter;
      }
    })
    .join("");
}
