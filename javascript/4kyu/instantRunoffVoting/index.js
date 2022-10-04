function runoff(voters){
  let winner;
  while (!winner) {
    const firstVotes = {}
    for (let i = 0; i < voters.length; i++) {   // candidates received votes as first preference
      firstVotes[voters[i][0]] = (firstVotes[voters[i][0]] || 0) + 1
    }
        
    /*********************** check if anyone has the half+1 amount of votes */
    for (entry in firstVotes) {
      if (firstVotes[entry] > Math.floor(voters.length / 2)) {
        winner = entry
        break;
      }
    }
    if (winner) {
      break;
    };

    /****************************************** check complete tie*/
    if (Math.min(...Object.values(firstVotes)) === Math.max(...Object.values(firstVotes))) {
      break;
    }

    /***********************************************Remove candidates with the least votes */
    const leastVote = Math.min(...Object.values(firstVotes))
    const candidatesToRemove = []
    for (entry in firstVotes) {
      if (firstVotes[entry] === leastVote) {
        candidatesToRemove.push(entry)
        delete firstVotes[entry]
      }
    }
    
    /*************************if one candidate remained after deleteing, it's the winner */
    if (Object.keys(firstVotes).length === 1) {
        winner = Object.keys(firstVotes)[0]
        break;
    }

    /*************************no winner so far, remove loser candidates */
    voters = voters.map(voteSequence => {
      if (candidatesToRemove.includes(voteSequence[0])) {
        voteSequence.shift()
      }
      return voteSequence
    })
  }
  return winner
}
