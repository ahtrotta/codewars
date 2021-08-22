/*

input:
  - many elements, including arrays (possibly)

output:
  - all inputs flattened to a single array

algorithm:
  - iterate through arguments
    - if element is not an array
      - add element to the result array
    - otherwise call flatten on the array, pass in the result array

*/

let flatten = function (...args) {
  let result = [];
  args.forEach(item => {
    Array.isArray(item) ? innerFlatten(item, result) : result.push(item);
  });

  return result;
}

let innerFlatten = function (array, result) {
  array.forEach(item => {
    Array.isArray(item) ? innerFlatten(item, result) : result.push(item);
  });
}

console.log(flatten(1, [2, 3], 4, 5, [6, [7]]));            // [1, 2, 3, 4, 5, 6, 7]
console.log(flatten('a', ['b', 2], 3, null, [[4], ['c']])); // ['a', 'b', 2, 3, null, 4, 'c']
