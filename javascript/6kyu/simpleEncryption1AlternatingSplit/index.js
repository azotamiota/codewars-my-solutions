function encrypt(text, n) {
   if (n < 0 || !text) {return text}
  let result = text;
  for (let i = 1; i <= n; i++) {
    let newText1 = [...result].filter((char, index) => {
      if (index % 2 === 1) return char
    });
    let newText2 = [...result].filter((char, index) => {
      if (index % 2 === 0) return char
    });
    result = newText1.join('') + newText2.join('');
  }
   return result;
}

function decrypt(encryptedText, n) {
  if (n < 0 || !encryptedText) {return encryptedText}
  let manipulatedText = encryptedText
  let manipulatedArray = []
  for (let j = 1; j <= n; j++) {
    let manipulated1 = manipulatedText.slice(0,  Math.floor(manipulatedText.length / 2))
    let manipulated2 = manipulatedText.slice(Math.floor(manipulatedText.length / 2));
    for (let i = 0; i < manipulated2.length; i++) {
      manipulatedArray.push(manipulated2[i])
      manipulatedArray.push(manipulated1[i]);
    }
    manipulatedText = manipulatedArray.join('')
    manipulatedArray = []
  }
  return manipulatedText;
}
