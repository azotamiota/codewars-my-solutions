function cakes(recipe, available) {
  if (Object.keys(recipe).length > Object.keys(available).length) {
    return 0;
  }
  let recipeEntries = Object.entries(recipe)
  let flatRecipeEntries = [].concat.apply([], recipeEntries)
  let availableEntries = Object.entries(available)
  let flatAvailableEntries = [].concat.apply([], availableEntries)
  let numbersOfCakes = Infinity
  for (let i = 0; i < flatRecipeEntries.length; i += 2) {
    const availableRecipeRatio = Math.floor(flatAvailableEntries[flatAvailableEntries.indexOf(flatRecipeEntries[i]) + 1] / flatRecipeEntries[i+1])
    if ( availableRecipeRatio < numbersOfCakes ) {
      numbersOfCakes = availableRecipeRatio
    }
  }
  return numbersOfCakes
}
