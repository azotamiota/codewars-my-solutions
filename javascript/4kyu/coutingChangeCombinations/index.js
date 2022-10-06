function countChange(money, coins) {
  if (money === 0) return 1;
  coins = coins.filter(coin => coin < money) // drop the coin that bigger than change
  let length = 0
  const sortedCoins = coins.sort((a, b) => a - b) 
  const maxArrLength = Math.floor(money / sortedCoins[0])
  let initialArr = [...Array(maxArrLength).fill(sortedCoins[0])]
  for (num of initialArr) {
    initialArr.reduce((prev,curr) => {
      if (prev + curr === money) {length += 1};
      return prev + curr
    })
  }
    return length
  
  }

 console.log(countChange(4, [1,2])) // => 3
  console.log(countChange(10, [5,2,3])) // => 4
  console.log(countChange(11, [5,7])) //  => 0
  console.log(countChange(300, [5, 10, 20, 50, 100, 200, 500])) // 1022
  