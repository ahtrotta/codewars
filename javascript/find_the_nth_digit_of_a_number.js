let findDigit = function (num, nth) {
  let result;
  if (nth <= 0) {
    return -1;
  } else {
    result = String(Math.abs(num)).split('').reverse()[nth - 1];
    if (result === undefined) {
      result = 0;
    }
  }

  return Number(result);
}

console.log(findDigit(5673, 4));
console.log(findDigit(129, 2));
console.log(findDigit(-2825, 3));
console.log(findDigit(-456, 4));
console.log(findDigit(0, 20));
console.log(findDigit(65, 0));
console.log(findDigit(24, -8));
