function mix(s1, s2) {
  const s1Obj = {}; // Create two objects from given arrays indicating amount of letters occurences
  const s2Obj = {};
  for (let i = 0; i < s1.length; i++) {
    if (/[a-z]/.test(s1[i])) {
      s1Obj[s1[i] + "1"] = (s1Obj[s1[i] + "1"] || 0) + 1; // Add a number (1 or 2) to the key to indicate which array has the current amount of letters
    }
  }
  for (let i = 0; i < s2.length; i++) {
    if (/[a-z]/.test(s2[i])) {
      s2Obj[s2[i] + "2"] = (s2Obj[s2[i] + "2"] || 0) + 1;
    }
  }
  const fullObject = {  // Merge two objects
    ...s1Obj,
    ...s2Obj,
  };
  let resultItem = [];
  for (let entry in fullObject) { // Iterate the full object. 'entry' = current letter + number of the original array
    if (fullObject[entry] < 2) { // delete object entries with value less than 2
      delete fullObject[entry];
    } else if (!(fullObject[entry[0] + "1"] && fullObject[entry[0] + "2"])) { // Condition true if current letter exists in only one of the arrays
      resultItem.push(`${entry[1]}:${entry[0].repeat(fullObject[entry])}`);
    } else if (fullObject[entry[0] + "1"] === fullObject[entry[0] + "2"]) { // Condition true if the values are equal
      resultItem.push(`3:${entry[0].repeat(fullObject[entry])}`); // Temporarily assing a number '3' to sort easily later
      delete fullObject[entry[0] + "1"];
      delete fullObject[entry[0] + "2"];
    } else if (fullObject[entry[0] + "1"] > fullObject[entry[0] + "2"]) { 
      resultItem.push(`1:${entry[0].repeat(fullObject[entry[0] + "1"])}`); // Push "1:" if the occurence of the current letter is higher in the first array 
      delete fullObject[entry[0] + "1"];
      delete fullObject[entry[0] + "2"];
    } else {
      resultItem.push(`2:${entry[0].repeat(fullObject[entry[0] + "2"])}`); // Push "2:" if the opposite
      delete fullObject[entry[0] + "1"];
      delete fullObject[entry[0] + "2"];
    }
  }
  const maxLetterAmount = Math.max( // The highest amount of a letter occured throughout the whole string
    ...resultItem.map((item) => item.split(":")[1].length)
  );

  let sortedArr = [];
  for (let i = maxLetterAmount; i > 1; i--) { // Iterate according to occurence of letters
    const temp = resultItem.filter((item) => { // Temporarily evaluate the entries with the same amount of letter occurence 
      return item.split(":")[1].length === i;
    });
    sortedArr.push( // Push sorted elements to the final array
      ...temp.sort((a, b) => {
        if (a.split(":")[0] > b.split(":")[0]) { // Sort by original array number
          return 1;
        }
        if (a.split(":")[0] < b.split(":")[0]) {
          return -1;
        }
        if (a.split(":")[1] < b.split(":")[1]) { // Alphabetical sort if occurance is the same
          return -1;
        }
        if (a.split(":")[1] > b.split(":")[1]) {
          return 1;
        }
      })
    );
  }
  return sortedArr.join("/").split("3").join("="); // Replace characters to meet final requirement
}
