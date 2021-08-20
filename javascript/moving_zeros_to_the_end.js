/*

input:
  - array

output:
  - same array with 0s at the end

rules: 
  - order of non-zero elements should be preserved

algorithm:
  - initialize return array to empty array
  - initialize zero counter to 0
  - iterate through array
    - if element is 0
      - add 1 to zero counter
    - else
      - push element to result array
  - add zeros according to zero counter

*/

let moveZeros = function (arr) {
  let result = [];
  let zeroCount = 0;
  arr.forEach(element => {
    if (element === 0) {
      zeroCount += 1;
    } else {
      result.push(element);
    }
  });

  for (let count = 1; count <= zeroCount; count += 1) {
    result.push(0);
  }

  return result;
}

console.log(moveZeros([1,2,0,1,0,1,0,3,0,1]));
