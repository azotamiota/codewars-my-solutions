function numberOfPairs(gloves) {
  let pairs = {}
  for (let color of gloves) {
    pairs[color] = (pairs[color] || 0) + 1
  }
  const pairsArr = Object.values(pairs).reduce((total, current) => {
    return total + Math.floor(current / 2)
  }, 0)
  return pairsArr
}
