let digital_root = function (n) {
  while (n % 10 !== n) {
    let digits = String(n).split('').map(Number);
    n = digits.reduce((sum, digit) => sum + digit);
  }

  return n;
}

console.log(digital_root(16));
console.log(digital_root(456));
