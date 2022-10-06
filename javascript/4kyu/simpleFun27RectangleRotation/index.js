function rectangleRotation(a, b) {
  const maxDotsHorisontal = Math.ceil(a / (Math.sqrt(2)))
  const maxDotsVertical = Math.ceil(b / (Math.sqrt(2)))
  
  const area = (maxDotsHorisontal * 2 - 1) * (maxDotsVertical * 2 - 1) / 2
  return Math.floor(area) % 2 === 0 ? 
        Math.ceil(area) :
        Math.floor(area)
}
