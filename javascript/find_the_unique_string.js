/*

input:
  - array of strings

output:
  - the string that is not like the other strings

rules:
  - only non-space symbols matter
  - input array will contain more than 3 strings
  - case insensitive
  - not important how many of the same character are in the string, it's the composition of the string --> 'aaaaa' is "equivalent" to 'aa'

algorithm:
  - initialize an object to keep track of unique character combinations
  - iterate through array of strings
    - get unique characters of each string as a string (sorted)
    - add to count for each unique character string
  - filter input array
    - get unique characters
    - count equal to 1 for unique characters
  - return reuslt

*/

let findUniq = function (arr) {
  let counts = {};
  arr.forEach(string => {
    let chars = getUniqueChars(string);
    if (counts[chars]) {
      counts[chars] += 1;
    } else {
      counts[chars] = 1;
    }
  });

  return arr.filter(string => {
    let chars = getUniqueChars(string);
    return counts[chars] === 1;
  })[0];
}

let getUniqueChars = function (string) {
  string = string.replace(/[ ]/g, '').toLowerCase();
  let seen = [];
  for (let index = 0; index < string.length; index += 1) {
    let character = string[index];
    if (!seen.includes(character)) {
      seen.push(character);
    }
  }

  return seen.sort().join('');
}

// tests
console.log(findUniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]));
console.log(findUniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba' ]));
console.log(findUniq([ 'silvia', 'vasili', 'victor' ]));
console.log(findUniq([ 'Tom Marvolo Riddle', 'I am Lord Voldemort', 'Harry Potter' ]));
console.log(findUniq([ '    ', 'a', ' ' ]));
