function persistence(num) {
   let strNum = String(num);
   let counter = 0;
   while (strNum.length > 1) {
     const digitArr = [...strNum]
     const multResult = digitArr.reduce((prev, cur) => Number(prev) * Number(cur));
     strNum = String(multResult);
     counter++
   }
  return counter
}
