/*

input:
  - two arrays (a, b)

output:
  - new array (a - b)

rules:
  - remove all values from a that are present in b

algorithm:
  - filter a
    - return true if element not in b

*/

let arrayDiff = function (a, b) {
  return a.filter(element => !b.includes(element));
}

console.log(arrayDiff([], [4,5]));
console.log(arrayDiff([3,4], [3]));
console.log(arrayDiff([1,8,2], []));
console.log(arrayDiff([1,2,3], [1,2]));
