/*

input:
  - g: step between primes
  - m: start of range (inclusive)
  - n: end of range (inclusive)

output:
  - array with two primes

rules:
  - return the first pair of primes separated by step g
  - there can be a prime between the output primes
    - 101-107, there is 103 between them, but it's still valid

algorithm:
  - initialize primes array
  - iterate from beginning of range to end of range
    - check if prime
      - iterate from 2 to sqrt of input
        - if number is evenly divisible by current number return false
      - return true
    - if prime
      - iterate backwards through primes array
        - find step between primes
        - if step equals search step
          - return two primes
        - if step is larger than search step
          - break
      - add prime to primes array

*/

function step(g, m, n) {
  let primes = [];
  for (let number = m; number <= n; number += 1) {
    if (isPrime(number)) {
      for (let index = primes.length - 1; index >= 0; index -= 1) {
        if (index === -1) {
          break;
        } else {
          let step = number - primes[index];
          if (step === g) {
            return [primes[index], number];
          }
        }
      }

      primes.push(number);
    }
  }

  return null;
}

function isPrime(number) {
  if (number === 1) {
    return false;
  } else if (number < 3) {
    return true;
  }

  for (let divisor = 2; divisor <= Math.sqrt(number); divisor += 1) {
    if (number % divisor === 0) {
      return false;
    }
  }

  return true;
}

// tests
//console.log(isPrime(1));
//console.log(isPrime(2));
//console.log(isPrime(3));
//console.log(isPrime(4));
//console.log(isPrime(5));
//console.log(isPrime(6));
//console.log(isPrime(7));

console.log(step(2,100,110));
console.log(step(4,100,110));
console.log(step(6,100,110));
console.log(step(8,300,400));
console.log(step(10,300,400));
