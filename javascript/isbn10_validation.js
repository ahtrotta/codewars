/*

input:
  - string representing an isbn number

output:
  - true or false

rules:
  - valid isbn:
    - 10 characters long
    - first 9 character are digits (0-9)
    - last character can be 0-9 or X (represents 10)
    - sum of the digits multiplied by their position (starting with 1) modulo 11 is equal to 0

algorithm:
  - use regex to check length and characters
  - then calculate sum of digits 

*/

let validISBN10 = function (isbn) {
  return /^\d{9}(\d|X)$/.test(isbn) && sumISBN(isbn) % 11 === 0;
}

let sumISBN = function (isbn) {
  return isbn.split('').reduce((sum, character, index) => {
    character = (character === 'X' ? 10 : Number(character));
    return sum + (character * (index + 1));
  }, 0);
}

console.log(validISBN10("25115516321"));
console.log(validISBN10("1112223339"));
console.log(validISBN10("048665088X"));
console.log(validISBN10("1293000000"));
console.log(validISBN10("1234554321"));
console.log(validISBN10("1234512345"));
console.log(validISBN10("1293"));
console.log(validISBN10("X123456788"));
console.log(validISBN10("ABCDEFGHIJ"));
console.log(validISBN10("XXXXXXXXXX"));
console.log(validISBN10("048665088XZ"));
