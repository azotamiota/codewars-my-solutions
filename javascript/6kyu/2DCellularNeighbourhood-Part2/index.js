function getNeighbourhood(type, matrix, coordinates, distance = 1) {
  if (!matrix[coordinates[0]] || matrix[coordinates[0]][coordinates[1]] === undefined) {
    return [];
  }
  let result = []
  matrix.forEach((line, index) => {
    if (index >= coordinates[0] - distance && index < coordinates[0]) {
        let tempArr = line.slice(
          coordinates[1] - distance < 0 ? 0 : coordinates[1] - distance,
          coordinates[1] + distance + 1
        );
      if (type !== 'moore') {
        tempArr = line.slice(
          coordinates[1] - distance + (coordinates[0] - index) < 0
            ? 0
            : coordinates[1] - distance + (coordinates[0] - index),
          (coordinates[1] + distance) - (coordinates[0] - index) + 1
        );
      }
      result.push(...tempArr)
    } else 

    if (index === coordinates[0]) {
      result.push(
        ...line
          .slice(
            coordinates[1] - distance < 0 ? 0 : coordinates[1] - distance,
            coordinates[1]
          )
          .concat(
            line.slice(coordinates[1] + 1, coordinates[1] + distance + 1)
          )
      );
    } else
    if (index <= coordinates[0] + distance && index > coordinates[0]) {
      let tempArr2 = line.slice(
            coordinates[1] - distance < 0 ? 0 : coordinates[1] - distance,
            coordinates[1] + distance + 1
        );
      if (type !== "moore") {
          tempArr2 = line.slice(
            coordinates[1] - distance + (index - coordinates[0]) < 0
              ? 0
              : coordinates[1] - distance + (index - coordinates[0]),
            coordinates[1] + distance - (index - coordinates[0]) + 1
          );
      }                  
      result.push(...tempArr2); 
    }
  })
    return result.filter(item => Number.isInteger(item));
  }
