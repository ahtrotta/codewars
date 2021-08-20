/*

input:
  - signature (array of three numbers)
  - n (number of elements to return)

output:
  - array of elements (length n)

rules:
  - each element is the sum of the previous three elements
  - return an empty array if n is 0
  - the signature is counted as part of the n elements

algorithm:
  - copy signature
  - loop until length of new array is equal to n
    - get sum of last three elements in the array
      - slice length - 3, then reduce
    - push sum to end of array
  - return array

*/

let tribonacci = function (signature, n) {
  if (n === 0) {
    return [];
  } else if (n < 4) {
    return signature.slice(3 - n);
  }

  let tribonacci = signature.slice();
  while (tribonacci.length < n) {
    let sum = tribonacci.slice(tribonacci.length - 3).reduce((sum, number) => {
      return sum + number;
    });

    tribonacci.push(sum);
  }

  return tribonacci;
}

console.log(tribonacci([1,1,1],10));
console.log(tribonacci([0,0,1],10));
console.log(tribonacci([0,1,1],10));
console.log(tribonacci([1,0,0],10));
console.log(tribonacci([0,0,0],10));
console.log(tribonacci([1,2,3],10));
console.log(tribonacci([3,2,1],10));
console.log(tribonacci([1,1,1],1));
console.log(tribonacci([300,200,100],0));
console.log(tribonacci([0.5,0.5,0.5],30));
