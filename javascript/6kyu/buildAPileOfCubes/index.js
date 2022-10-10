function findNb(m) {
  let cubeVol = 1
  let counter = 0
  let sumVolume = 0
  while (sumVolume <= m) {
    if (sumVolume === m) {return counter}
    sumVolume += cubeVol ** 3;
    if (sumVolume > m) {return -1}
    counter++;
    cubeVol++
  }
}
