/*

input:
  - array of integers

output:
  - integer that repeats an odd number of times

algorithm:
  - get count of each number in array
    - reduce array to an object
  - iterate through count object
    - return the first number that has an odd count

*/

let findOdd = function (A) {
  let counts = A.reduce((countObject, number) => {
    if (countObject[number]) {
      countObject[number] += 1;
    } else {
      countObject[number] = 1;
    }

    return countObject;
  }, {});

  let keys = Object.keys(counts);
  for (let index = 0; index < keys.length; index += 1) {
    if (counts[keys[index]] % 2 === 1) {
      return Number(keys[index]);
    }
  }
}

console.log(findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], 5));
console.log(findOdd([1,1,2,-2,5,2,4,4,-1,-2,5], -1));
console.log(findOdd([20,1,1,2,2,3,3,5,5,4,20,4,5], 5));
console.log(findOdd([10], 10));
console.log(findOdd([1,1,1,1,1,1,10,1,1,1,1], 10));
console.log(findOdd([5,4,3,2,1,5,4,3,2,10,10], 1));
