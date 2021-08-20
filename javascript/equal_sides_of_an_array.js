/*

input:
  - array of integers (length 0 to 1000)

output:
  - index at which the left and right sides have equal sums, or -1

rules:
  - don't include the number at the current index in either sum
  - the sum to the left of the first number is 0
  - the sum to the right of the last number is 0
  - if there are multiple correct answers, return the lowest index anser
    - iterating from the beginning and early exit will automatically solve this

algorithm:
  - iterate through array (use for loop for early exit)
    - if first element
      - check if sum of all elements besides first is 0
    - if last element
      - check if sum of all elements besides last is 0
    - else
      - get sum of left side and right side and see if equal
  - return -1 if iteration complete

*/

let findEvenIndex = function (arr) {
  if (arr.length === 1) return 0;
  for (let index = 0; index < arr.length; index += 1) {
    if (index === 0) {
      if (arraySum(arr.slice(1)) === 0) return 0;
    } else if (index === arr.length - 1) {
      if (arraySum(arr.slice(0, arr.length - 1)) === 0) {
        return index;
      }
    } else {
      let leftSum = arraySum(arr.slice(0, index));
      let rightSum = arraySum(arr.slice(index + 1));
      if (leftSum === rightSum) return index;
    }
  }

  return -1;
}

let arraySum = function (array) {
  return array.reduce((sum, number) => sum + number);
}

console.log(findEvenIndex([1,2,3,4,3,2,1]));
console.log(findEvenIndex([1,100,50,-51,1,1]));
console.log(findEvenIndex([1,2,3,4,5,6]));
console.log(findEvenIndex([20,10,30,10,10,15,35]));
