/*

input:
  - arr: array to manipulate
  - n: number of times to perform the transformation

output:
  - array resulting from operation(s)

rules:
  - split array in two (smaller half is always first half
  - put them on top and add them together
    - add from the back of the array

algorithm:
  - get center index
    - array length / 2 floor
      - 5 / 2 = 2.5 --> 2 
  - split array into two halves
  - initialize result array
  - until second half is empty
    - pop last element off of both arrays and add together
    - add to result array
  - return result array

*/

function splitAndAdd(arr, n) {
  for (let count = 1; count <= n; count += 1) {
    let middleIndex = Math.floor(arr.length / 2);
    let firstHalf = arr.slice(0, middleIndex);
    let secondHalf = arr.slice(middleIndex);
    let newArray = [];
    while (secondHalf.length > 0) {
      let firstHalfElement = firstHalf.pop() || 0;
      let secondHalfElement = secondHalf.pop();
      newArray.push(firstHalfElement + secondHalfElement);
    }

    arr = newArray.reverse();
  }

  return arr;
}

// tests
console.log(splitAndAdd([1,2,3,4,5], 2));
console.log(splitAndAdd([1,2,3,4,5], 3));
console.log(splitAndAdd([15], 3));
console.log(splitAndAdd([32,45,43,23,54,23,54,34], 2));
console.log(splitAndAdd([32,45,43,23,54,23,54,34], 0));
console.log(splitAndAdd([3,234,25,345,45,34,234,235,345], 3));
console.log(splitAndAdd([3,234,25,345,45,34,234,235,345,34,534,45,645,645,645,4656,45,3], 4));
console.log(splitAndAdd([23,345,345,345,34536,567,568,6,34536,54,7546,456], 20));
  
