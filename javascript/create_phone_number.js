/*

input:
  - array of 10 digits

output:
  - string representing phone number

algorithm:
  - 

*/

let createPhoneNumber = function (numbers) {
  let areaCode = numbers.slice(0, 3).join('');
  let firstThree = numbers.slice(3, 6).join('');
  let lastFour = numbers.slice(6, 10).join('');

  return `(${areaCode}) ${firstThree}-${lastFour}`;
}

console.log(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
console.log(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]));
console.log(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
