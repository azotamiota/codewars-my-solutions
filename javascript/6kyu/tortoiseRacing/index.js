function race(v1, v2, g) {
  if (v1 >= v2) {
    return null;
  }
  let v1pos = g;
  let v2pos = 0;
  let milliSecCounter = 0;
  while (v2pos < v1pos) {
    milliSecCounter++;
    v1pos += v1 / 3600000;
    v2pos += v2 / 3600000;
  }
  return [Math.floor(milliSecCounter / 3600000),
          Math.floor((milliSecCounter % 3600000) / 60000),
          Math.floor((milliSecCounter % 60000) / 1000)]
}
