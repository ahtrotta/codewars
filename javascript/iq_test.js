/*

input:
  - string of numbers separated by spaces

output:
  - position (index + 1) of 'different' number

rules:
  - all numbers will be even or odd except one

algorithm:
  - initialize even and odd arrays
  - split string on space
  - iterate through array
    - add string to even or odd
  - return index + 1 of string from even/odd array of length 1

*/

let iqTest = function (numbers) {
  let evens = [];
  let odds = [];
  let numberArray = numbers.split(' ');
  numberArray.forEach(number => {
    if (Number(number) % 2 === 0) {
      evens.push(number);
    } else {
      odds.push(number);
    }
  });

  if (evens.length === 1) {
    return numberArray.indexOf(evens[0]) + 1;
  } else {
    return numberArray.indexOf(odds[0]) + 1;
  }
}

console.log(iqTest("2 4 7 8 10"));
console.log(iqTest("1 2 2"));
