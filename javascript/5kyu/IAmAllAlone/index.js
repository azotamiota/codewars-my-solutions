function allAlone(house) {
	let isHeAlone = true
  house = house.split('\n')
  house = house.map(line => [...line])
  console.log(house)
  for (let row = 0; row < house.length; i++) {
    if (house[row].includes('o'))
    for (let roomIndex = 0; roomIndex < row.length; roomIndex++) {
      let amIIn = false

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
###############             #     #\n\
#             #        o    #     #\n\
#  X          ###############     #\n\
#                                 #\n\
###################################")) // true

// console.log(allAlone(
// 		 "#################             \n\
// 			#     o         #   o         \n\
// 			#          ######        o    \n\
// 			####       #                  \n\
// 			   #       ###################\n\
// 			   #                         #\n\
// 			   #                  X      #\n\
// 			   ###########################")) // false
