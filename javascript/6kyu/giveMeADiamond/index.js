function diamond(n) {
  if (!(n % 2) || n < 0) {return null}
  const asterisk = "*";
  let diamond = "";
  let i, space
  for (i = 1, space = (n - 1) / 2; i <= n; i += 2, space--) {
    diamond += ' '.repeat(space) + asterisk.repeat(i) + "\n";
  }
  for (i = n - 2, space = 1; i >= 1; i -= 2, space++) {
    diamond += " ".repeat(space) + asterisk.repeat(i) + "\n";
  }
  return diamond;
}
