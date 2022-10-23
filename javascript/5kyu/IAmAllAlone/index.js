function allAlone(house) {
	let isHeAlone = true
  house = house.split('\n')
  house = house.map(line => [...line])
  // console.log(house)
  for (let rowIndex = 0; rowIndex < house.length; rowIndex++) {
    let isIn = false
    if (house[rowIndex].includes('o')) {
      for (let fieldIndex = 0; fieldIndex < house[rowIndex].length; fieldIndex++) {
        if (house[rowIndex][fieldIndex] === '#' && (house[rowIndex][fieldIndex - 1] !== '#' || house[rowIndex][fieldIndex + 1] !== '#')) {
          isIn = !isIn
        }
        if (house[rowIndex][fieldIndex] === 'o' && isIn) {
          isHeAlone = false
        }
      }
    }
  }
  // house.forEach(row => {
  //   if (/o/.test(row) && 
  //   /\s/.test((house.join``.replace(/o/g, ' ')).trim())) {
  //     let isIn = false;
  //     [...row].forEach((isWall, index) => {
  //       if (isWall === '#' && (row[index + 1] === ' ' || index + 1 === row.length)) {
  //         isIn = !isIn
  //       }
  //       if (isWall === 'o' && isIn) {
  //         isHeAlone = false
  //       }
  //     })
  //   }
  // })
  return isHeAlone
}

console.log(allAlone("\
  o                o        #######\n\
###############  o          #     #\n\
#             #        o    #     #\n\
#  X          ###############     #\n\
#                                 #\n\
###################################")) // true

console.log(allAlone(
		 "#################             \n\
			#               #   o         \n\
			#          ######        o    \n\
			####       #                  \n\
			   #       ###################\n\
			   #                         #\n\
			   #                  X      #\n\
			   ###########################")) // false
