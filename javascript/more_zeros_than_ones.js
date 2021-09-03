/*

input:
  - string

output:
  - array of characters

rules:
  - keep characters where the binary representation has more 0s than 1s
  - remove duplicate characters
    - keep only the first occurence, so order matters
  - all input will be valid, non-empty strings

algorithm:
  - split input into characters
  - initialize seen array to empty array
  - filter characters array
    - if character not in seen array
      - get binary representation (toString(2))
      - count 0s and 1s in binary representation
        - initialize count object
        - iterate through characters
          - add to 0 or 1 as appropriate
      - add character to seen array
      - if more 0s, then return true
      - otherwise return false
    - return false

*/

function moreZeros(s) {
  let characters = s.split('');
  let seen = [];
  return characters.filter(character => {
    if (!seen.includes(character)) {
      seen.push(character);
      let binary = character.charCodeAt().toString(2);
      return hasMoreZeros(binary);
    } else {
      return false;
    }
  });
}

function hasMoreZeros(binaryString) {
  let counts = { 0: 0, 1: 0 };
  for (let index = 0; index < binaryString.length; index += 1) {
    let digit = binaryString[index];
    if (digit === '0') {
      counts[0] += 1;
    } else {
      counts[1] += 1;
    }
  }

  return counts[0] > counts[1];
}

console.log(hasMoreZeros('00000'));
console.log(!hasMoreZeros('1111'));
console.log(!hasMoreZeros('1001'));
console.log(!hasMoreZeros('10011'));

console.log(moreZeros('abcde'));
