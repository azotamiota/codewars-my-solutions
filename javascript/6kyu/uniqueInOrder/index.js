const uniqueInOrder = function (iterable) {
  return [...iterable].filter((item, index) => {
    return item !== iterable[index+1]
  })
};
