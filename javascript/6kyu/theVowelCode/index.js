function encode(string) {
  return [...string]
    .map(c => {
        if (c=='a') {return 1}
        if (c=='e') {return 2}
        if (c=='i') {return 3}
        if (c=='o') {return 4}
        if (c=='u') {return 5}
        return c
    })
    .join('')
}

function decode(string) {
  return [...string]
    .map(c => {
        if (c=='1') {return 'a'}
        if (c=='2') {return 'e'}
        if (c=='3') {return 'i'}
        if (c=='4') {return 'o'}
        if (c=='5') {return 'u'}
        return c
    })
    .join('')
}
