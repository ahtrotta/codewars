/*

input: 
  - number

output:
  - formatted string representing price

rules:
  - comma for every 3 numbers
  - dot to separate cents
  - cents should be truncated to 2 decimals (add zeros if necessary)
  - need to be able to handle negative numbers

algorithm:
  - convert number to float string (toFixed(2))
  - split by decimal point to separate decimal part and integer
  - check if negative
    - if so, remove first digit
  - initialize array to store integer digits
  - initialize a counter to keep track of where commas go
  - iterate over integer characters from right to left
    - add digit to array
    - if counter is 3
      - add comma
      - reset counter to 1
    - otherwise
      - add 1 to counter

*/

let numberToPrice = function (number) {
  if (typeof number !== 'number') {
    return 'NaN';
  }

  let numberString = String(number);
  let [integer, decimal] = numberString.split('.');
  decimal = decimal || '0';
  while (decimal.length < 2) {
    decimal += '0';
  }

  let negative = false;
  if (integer[0] === '-') {
    integer = integer.slice(1);
    negative = true;
  }

  let integerDigits = integer.split('').reverse();
  let integerWithCommas = [];
  let commaCounter = 1;
  integerDigits.forEach((digit, index) => {
    integerWithCommas.push(digit);
    if (commaCounter === 3 && index !== integerDigits.length - 1) {
      integerWithCommas.push(',');
      commaCounter = 1;
    } else {
      commaCounter += 1;
    }
  });

  let result = integerWithCommas.reverse().join('') + '.' + decimal.slice(0, 2);
  return (negative ? '-' + result : result);
}

// tests

console.log(numberToPrice(1500.129));     // 1,500.13
console.log(numberToPrice(-5));           // -5.00
console.log(numberToPrice(1000000.5));    // 1,000,000.50
console.log(numberToPrice('@'));          // NaN
console.log(numberToPrice(500));          // 500.00
