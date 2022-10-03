function domainName(url) {
  let partsArr = url.split(/[(://),\.]/);
  return partsArr.filter(elem => {
      return !/^(http)|(www)|''/.test(elem) && elem !== ''
  })[0]
}
