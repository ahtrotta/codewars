/*

input:
  - iterable

output:
  - same list but without any elements of the same value next to each other

algorithm:
  - initialize result array to first element of input
  - iterate over input (excpet first element)
    - if the current value is not the same as the last element in result array
      - add it to result array
  - return result array

*/

let uniqueInOrder = function (iterable) {
  if (iterable.length === 0) return [];
  let result = [iterable[0]];
  for (let index = 1; index < iterable.length; index += 1) {
    if (iterable[index] !== result[result.length - 1]) {
      result.push(iterable[index]);
    }
  }

  return result;
}

console.log(uniqueInOrder('AAAABBBCCDAABBB'));
