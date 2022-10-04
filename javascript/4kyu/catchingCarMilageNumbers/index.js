function isInteresting(number, awesomePhrases) {
  if (number < 98) return 0;
  if (number === 98 || number === 99) return 1;
  if (awesomePhrases.includes(number + 2) || awesomePhrases.includes(number + 1)) return 1;
  if (awesomePhrases.includes(number)) return 2;
  
  /********************************************same digits */
  if ([...new Set([...String(number + 1)])].length === 1) return 1;
  if ([...new Set([...String(number + 2)])].length === 1) return 1;
  if ([...new Set([...String(number)])].length === 1) return 2;
  
  /********************************************a digit followed by all zeros */
  if ((number + 1) % (10 ** (String(number).length - 1)) === 0) return 1;
  if ((number + 2) % (10 ** (String(number).length - 1)) === 0) return 1;
  if (number % (10 ** (String(number).length - 1)) === 0) return 2;
    
  /********************************************incrementing digits */
  if ('1234567890'.includes(String(number + 1))) return 1;
  if ('1234567890'.includes(String(number + 2))) return 1;
  if ('1234567890'.includes(String(number))) return 2;
  
  /********************************************decrementing digits */
  if ('9876543210'.includes(String(number + 1))) return 1;
  if ('9876543210'.includes(String(number + 2))) return 1;
  if ('9876543210'.includes(String(number))) return 2;
  
  /********************************************is palindrome */
  if ([...String(number + 1)].reverse().join('') === String(number + 1)) return 1;
  if ([...String(number + 2)].reverse().join('') === String(number + 2)) return 1;
  if ([...String(number)].reverse().join('') === String(number)) return 2;
  return 0;
}

