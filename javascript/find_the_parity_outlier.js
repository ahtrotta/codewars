/*

input:
  - array of integers

output:
  - the 'outlier' 
    - either the only even or only odd number

data structure(s):
  - keep track of even and odds with arrays
  - return whichever one has length of 1

algorithm:
  - initialize arrays to store even and odd numbers
  - iterate through array, adding each element to appropriate array
  - return the element in whichever array has length of 1

*/

let findOutlier = function (integers) {
  let evens = [];
  let odds = [];
  integers.forEach(integer => {
    if (integer % 2 === 0) {
      evens.push(integer);
    } else {
      odds.push(integer);
    }
  });

  return (evens.length === 1 ? evens[0] : odds[0]);
}

console.log(findOutlier([0, 1, 2]));
console.log(findOutlier([1, 2, 3]));
console.log(findOutlier([2,6,8,10,3]));
console.log(findOutlier([0,0,3,0,0]));
console.log(findOutlier([1,1,0,1,1]));
