/*

input:
  - n: integer
  - p: power to start with

output:
  - multiplier (k) to get sum of consecutive powers equal to n * k

rules:
  - raise each digit to a consecutive power starting with p and then sum
  - return -1 if there is no integer 
  - n and p will always be given as positive integers

algorithm:
  - convert n to string, split into characters, convert each into a number
  - reduce the above array
    - raise the digit to p
    - increment p by 1
    - add to sum
  - check if sum is divisible by n
    - if so, return the result of dividing sum by n
    - else return -1

*/

let digPow = function (n, p) {
  let digits = String(n).split('').map(Number);
  let sum = digits.reduce((sum, digit) => {
    let power = digit**p;
    p += 1;
    return sum + power;
  }, 0);

  if (sum % n === 0) {
    return sum / n;
  } else {
    return -1;
  }
}

console.log(digPow(89, 1));
console.log(digPow(92, 1));
console.log(digPow(46288, 3));
