/*

input:
  - array of arrays (subarrays represent fractions)

output:
  - [numerator, denominator], irreducible sum of franctions

rules:
  - numerator and denominator have only 1 as a common divisor

algorithm:
  - get lowest common multiple of denominators
    - initialize multiple to largest of numbers
    - loop
      - check if multiple can be evenly divided by all numbers
      - if so then return multiple
      - if not, then add largest to multiple
  - initialize new numerator to 0;
  - iterate through input array
    - convert fraction to denominator with lcm
    - add numerator to new numerator
  - get least common divisor to new numerator and lcm
    - if either is 0, return the other
    - if one is larger
      - return function call with larger % smaller and smaller as inputs
*/

function sumFracts(l) {
  if (l.length === 0) {
    return null;
  }
  
  let denominators = l.map(fraction => fraction[1]);
  let newDenominator = lcm(...denominators);
  let newNumerator = 0;
  l.forEach(fraction => {
    let [numerator, denominator] = fraction;
    let multiplier = newDenominator / denominator;
    newNumerator += numerator * multiplier;
  });

  let commonDenominator = gcd(newNumerator, newDenominator);
  newNumerator /= commonDenominator; 
  newDenominator /= commonDenominator;

  if (newDenominator === 1) {
    return newNumerator;
  } else {
    return [newNumerator, newDenominator];
  }
}

function lcm(...numbers) {
  let largest = numbers.reduce((max, current) => {
    return (current > max ? current : max);
  });

  let multiple = largest;
  while (numbers.some(number => multiple % number !== 0)) {
    multiple += largest;
  }

  return multiple;
}

function gcd(a, b) {
  if (a === 0) {
    return b;
  } else if (b === 0) {
    return a;
  } else if (a > b) {
    return gcd(a % b, b);
  } else if (a < b) {
    return gcd(b % a, a);
  }
}

console.log(gcd(18, 48));
console.log(lcm(2, 3, 4));
console.log(sumFracts([[1, 2], [1, 3], [1, 4]]));
