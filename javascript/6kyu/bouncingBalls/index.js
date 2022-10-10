function bouncingBall(h,  bounce,  window) {
  let counter = 0
  if (h > 0 && bounce > 0 && bounce < 1 && window < h) {  
    while (h > window) {
      counter++;
      h *= bounce;
      if (h > window) {counter++}
    } 
  } else {return -1}
  return counter;
} 
