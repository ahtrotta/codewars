/*

input:
  - number

output:
  - multiplicative persistence (number)

rules:
  - multiplicative persistence is the number of times the digits must be multiplied together to get a single digit number

algorithm:
  - initialize counter to 0
  - loop until num is a single digit number (num % 10 === num)
    - convert num to string, split string into characters
    - map array of characters to number, then reduce to product
    - store product as num
    - add 1 to counter
  - return counter

*/

let persistence = function (num) {
  let counter = 0;
  while (num % 10 !== num) {
    counter += 1;
    num = String(num).split('').map(Number).reduce((product, number) => {
      return product * number;
    });
  }

  return counter;
}

console.log(persistence(39));
console.log(persistence(4));
console.log(persistence(25));
console.log(persistence(999));
