var countDeafRats = function (town) {
  const noWhiteSpace = town
    .split("")
    .filter((char) => {
      return char !== " ";
    })
    .join("");
  const pLoc = noWhiteSpace.indexOf("P");
  let deafRats = 0;
  for (let i = 0; i < noWhiteSpace.length; i += 2) {
    if (i < pLoc) {
      if (noWhiteSpace[i] + noWhiteSpace[i + 1] === "O~") {
        deafRats++;
      }
    } else if (i === pLoc) {
      i--;
    } else if (i > pLoc) {
      if (noWhiteSpace[i] + noWhiteSpace[i + 1] === "~O") {
        deafRats++;
      }
    }
  }
  return deafRats;
};
