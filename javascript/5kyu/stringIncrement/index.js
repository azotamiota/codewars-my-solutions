function incrementString(strng) {
  if (!strng) {return '1'}
  if (strng.match(/\d+/)) {
    const numString = strng.match(/\d+/)[0];
    const incremented = Number(numString) + 1;
    const incrementedLength = String(incremented).length
    if (incrementedLength > numString.length) {
      return (
        strng.slice(0, strng.length - numString.length) + incremented
      );

    } else {
      return strng.slice(0, strng.length - numString.length) + '0'.repeat(numString.length - incrementedLength) + incremented

    }
  } else {
    return strng + '1'
  }
}
