function towerBuilder(nFloors) {
  let pyramid = [];
  for (let i = 1; i <= nFloors; i++) {
    pyramid.push(
      " ".repeat((nFloors - i)) +
        "*".repeat(i * 2 - 1) +
        " ".repeat((nFloors - i))
    );
  }
  return pyramid
}
