function solve(s) {
    const alphabet = '@abcdefghijklmnopqrstuvwxyz' // assigned values are now equal to indecies
    const valuesOfChunks = s
        .replace(/[aeiuo]/g, '-')
        .split('-')
        .filter(chunk => chunk) // drop empty strings
        .map(piece => {
            return piece.length === 1 ? 
                alphabet.indexOf(piece) : 
                [...piece]
                    .map(char => alphabet.indexOf(char))
                    .reduce((prev, curr) => prev + curr)
        })
    return Math.max(...valuesOfChunks);
};

console.log(solve('strength'))
