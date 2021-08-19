/*

input: 
  - integer

output:
  - number of bits equal to 1 in binary representation of input

algorithm:
  - convert integer to binary
  - iterate through binary digits and count 1s

*/

let countBits = function (n) {
  return n.toString(2).split('').reduce((ones, digit) => {
    return digit === '1' ? ones + 1 : ones;
  }, 0);
}

console.log(countBits(0));
console.log(countBits(4));
console.log(countBits(7));
console.log(countBits(9));
console.log(countBits(10));
