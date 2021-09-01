/*

input:
  - values: array
  - n: number of beggars

output:
  - array of beggar's haul

algorithm:
  - initialize beggars array
  - keep track of beggarIndex
  - iterate through values
    - add value to beggars if value set
    - otherwise set value for correct beggar
    - add 1 to beggarIndex
    - set beggarIndex to remainder of n
  - return beggars

*/

function beggars(values, n) {
  if (n === 0) {
    return [];
  }

  let beggars = initializeBeggarsArray(n); 
  let beggarIndex = 0;
  values.forEach(value => {
    beggars[beggarIndex] += value;
    beggarIndex = (beggarIndex + 1) % n;
  });

  return beggars;
}

function initializeBeggarsArray(numberOfBeggars) {
  let result = [];
  for (let count = 1; count <= numberOfBeggars; count += 1) {
    result.push(0);
  }

  return result;
}

// tests
console.log(beggars([1,2,3,4,5],1));
console.log(beggars([1,2,3,4,5],2));
console.log(beggars([1,2,3,4,5],3));
console.log(beggars([1,2,3,4,5],6));
console.log(beggars([1,2,3,4,5],0));
