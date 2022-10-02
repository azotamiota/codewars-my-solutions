function meeting(s) {
  let nameArr = s.toUpperCase()
    .split(';')
    .map(fullName => fullName.split(':'))
    .sort((a, b) => {
      if (a[1] > b[1]) {return 1}
      if (a[1] < b[1]) {return -1}
      if (a[0] > b[0]) {return 1}
      if (a[0] < b[0]) {return -1}
      return 0
  })
  let result = ''
  nameArr.forEach(element => {
    result += '(' + element[1] + ', ' + element[0] + ')'
  });
  return result
}
