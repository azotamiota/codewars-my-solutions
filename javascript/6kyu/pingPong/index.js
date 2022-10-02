function pingPong(sounds) {
  let soundsArr = sounds.split("-");
  if (soundsArr.length === 2) {   // if the server fails serving and the rally is over
     return soundsArr[0] === "ping" ? "pong" : "ping";
    }
  let scores = [];
  let server;
  for (let i = 0; i < soundsArr.length; i++) {
    if (soundsArr[0] === "ping" || soundsArr[0] === "pong") { // soundsArr variable will be amended later, thus this condition check is needed
      server = soundsArr[0];
      if (soundsArr[i] !== "ping" && soundsArr[i] !== "pong") { // if bad noise occurs check who's getting the score (if anybody)
        if (server !== soundsArr[i - 1]) {
          scores.push(server);  // if not the server failed this rally, he's getting a point
        }
        soundsArr = soundsArr.slice(i + 1); // remove other bad noise until we get 'ping' or 'pong' for the [0] element
        i = -1; // restart for loop when new rally starts
      }
    } else {
      soundsArr = soundsArr.slice(1); 
      i = -1;
    }
  }

  if (scores.length === 0 || scores.filter((player) => player === "pong").length === scores.length / 2) { // if no one scored or it's a draw
    const lastPing = sounds.split("-").lastIndexOf("ping"); // check who failed last time
    const lastPong = sounds.split("-").lastIndexOf("pong");
    return lastPing < lastPong ? 'ping' : 'pong' // opposite is the winner
  }
  return scores.filter((player) => player === "pong").length > scores.length / 2 // compare amounts of points in the scores array
    ? "pong"
    : "ping";
}
