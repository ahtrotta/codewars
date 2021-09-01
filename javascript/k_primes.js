/*

input:
  - k: number of prime factors
  - start: start of range (inclusive)
  - end: end of range (inclusive)

output:
  - array of numbers in range with k prime factors

algorithm:
  - initialize result array
  - iterate through range
    - find prime factors of number
      - iterate from 1 to sqrt of number
        - check if prime
          - iterate from 2 to sqrt of number
            - if number evenly divisible, return false
          - return true if iteration completes
        - if prime, add to factors array
    - if there are k prime factors, add to result array


GET PRIME FACTORS:

input:
  - number

output:
  - array of prime factors

algorithm:
  - initialize results array
  - iterate through possible divisors less than or equal to sqrt of number
    - if divisor and if prime
      - add divisor concatenated with prime factorization of other divisor to list

*/

const PRIME_FACTORIZATIONS = {};

function countKprimes(k, start, end) {
  let result = [];
  if (start < 2) {
    start = 2;
  }

  for (let number = start; number <= end; number += 1) {
    let primeFactors = getPrimeFactors(number);
    if (primeFactors.length === k) {
      result.push(number);
    }
  }

  return result;
}

function getPrimeFactors(number) {
  let lookup = PRIME_FACTORIZATIONS[number];
  if (lookup) {
    return lookup;
  } else if (isPrime(number)) {
    return [number];
  }

  let otherDivisor;
  let divisor = 2;
  while (true) {
    if (number % divisor === 0 && isPrime(divisor)) {
      otherDivisor = number / divisor;
      break;
    }

    divisor += 1;
  }

  let result = getPrimeFactors(otherDivisor).concat([divisor]);
  PRIME_FACTORIZATIONS[number] = result;

  return result;
}

function isPrime(number) {
  let lookup = PRIME_FACTORIZATIONS[number];
  if (number === 1 || number === 0) {
    return false;
  } else if (number < 3) {
    return true;
  } else if (lookup) {
    return lookup.length === 1;
  }

  for (let divisor = 2; divisor <= Math.sqrt(number); divisor += 1) {
    if (number % divisor === 0) {
      return false;
    }
  }

  return true;
}

/*

input:
  - s: number

output:
  - number of possible solutions

rules:
  - find solutions to a + b + c = s
    - a is 1-prime
    - b is 3-prime
    - c is 7-prime

algorithm:
  - initialize object to keep track of possible a/b/c values
  - iterate backwards from number to 0
    - if 1-, 3-, or 7-prime add to object
  - if there are 0 in any of 1-, 3-, or 7-primes return 0
  - initialize counter to 0
  - iterate through 7-primes
    - iterate through 3-primes
      - iterate through 1-primes
        - if sum is number add 1 to counter
*/

function puzzle(s) {
  let kPrimeCandidates = {1: [], 3: [], 7: []};
  for (let number = s; number >= 2; number -= 1) {
    let primeFactors = getPrimeFactors(number);
    if (primeFactors.length === 1) {
      kPrimeCandidates[1].push(number);
    } else if (primeFactors.length === 3) {
      kPrimeCandidates[3].push(number);
    } else if (primeFactors.length === 7) {
      kPrimeCandidates[7].push(number);
    }
  }

  let kPrimes = Object.keys(kPrimeCandidates).map(key => kPrimeCandidates[key].length);
  if (kPrimes.some(value => value === 0)) {
    return 0;
  }

  let counter = 0;
  kPrimeCandidates[7].forEach(sevenPrime => {
    kPrimeCandidates[3].forEach(threePrime => {
      kPrimeCandidates[1].forEach(onePrime => {
        if (sevenPrime + threePrime + onePrime === s) {
          counter += 1;
        }
      });
    });
  });

  return counter;
}

// tests
//console.log(getPrimeFactors(8));
//console.log(getPrimeFactors(12));
//console.log(getPrimeFactors(32));
//console.log(isPrime(1) === false);
//console.log(isPrime(2) === true);
//console.log(isPrime(3) === true);
//console.log(isPrime(4) === false);
//console.log(isPrime(5) === true);
//console.log(isPrime(6) === false);
//console.log(isPrime(7) === true);
//console.log(isPrime(8) === false);
//console.log(isPrime(9) === false);
//console.log(isPrime(11) === true);
console.log(countKprimes(2, 0, 100));
console.log(countKprimes(3, 0, 100));
console.log(countKprimes(5, 1000, 1100));
console.log(countKprimes(5, 500, 600));
console.log(puzzle(138));
console.log(puzzle(143));
