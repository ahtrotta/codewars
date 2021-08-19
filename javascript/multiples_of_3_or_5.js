/*

input:
  - limit (number)

output:
  - sum of all multiples of 3 or 5 below limit

algorithm:
  - if limit is 3 or lower then return 0
  - initialize sum to 0
  - iterate from 3 to limit - 1
    - if number is multiple of 3 or 5 then add to sum

*/

let solution = function (number) {
  if (number < 4) return 0;
  let sum = 0;
  for (let counter = 3; counter < number; counter += 1) {
    if (counter % 3 === 0 || counter % 5 === 0) {
      sum += counter;
    }
  }

  return sum;
}

console.log(solution(10));
