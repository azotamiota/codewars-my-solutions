function formatDuration (seconds) {
  if (seconds === 0) return 'now'

  /********************************calculate different units */
  const secondsInHour = 60 * 60
  const secondsInDay = secondsInHour * 24
  const secondsInYear = secondsInDay * 365
  const year = Math.floor(seconds / secondsInYear)
  let remainderSeconds = year ? seconds % (year * secondsInYear) : seconds
  const day = Math.floor(remainderSeconds / secondsInDay)
  remainderSeconds = day ? remainderSeconds % (day * secondsInDay) : remainderSeconds
  const hour = Math.floor(remainderSeconds / secondsInHour) 
  remainderSeconds = hour ? remainderSeconds % (hour * secondsInHour) : remainderSeconds
  const minute = Math.floor(remainderSeconds / 60)
  const second = minute ? (remainderSeconds % 60) : remainderSeconds
  
  const timeObject = {year,day,hour,minute,second}

  /*********************delete if unit value is 0 */
  for (timeElement in timeObject) {
    if (timeObject[timeElement] === 0) {
      delete timeObject[timeElement]
    }
  }

  /*********************build required format */
  let result = ''
  for (let i = 0, lengthOfObject = Object.keys(timeObject).length;
       i < lengthOfObject; i++) {
    const currentChunk = Object.entries(timeObject)[i]
    result += `${i === 0 ? '' : i === lengthOfObject - 1 ?
       ' and ' : ', '}${currentChunk[1]} ${currentChunk[0]}${currentChunk[1] > 1 ?
       's' : ''}`
  }

  return result
}
