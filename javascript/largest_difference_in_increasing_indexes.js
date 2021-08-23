/*

input:
  - array

output:
  - largest difference in indexes where data[i] <= data[j]

algorithm:
  - initialize largest difference to 0
  - iterate through array (index i)
    - iterate through array starting at i + 1 (index j)
      - if data[i] <= data[j]
        - if j - i > -Infinity
          - change largest difference to j - i
  - return largest difference

*/

let largestDifference = function (data) {
  let maxDifference = 0;
  for (let i = 0; i < data.length; i += 1) {
    for (let j = i + 1; j < data.length; j += 1) {
      if (data[i] <= data[j] && j - i > maxDifference) {
        maxDifference = j - i;
      }
    }
  }

  return maxDifference;
}

console.log(largestDifference([9,4,1,10,3,4,0,-1,-2])); // data[1] <= data[5], so 5 - 1 = 4
console.log(largestDifference([3,2,1])); // never finds i<j such that data[i] <= data[j]
