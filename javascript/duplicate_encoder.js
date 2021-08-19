/*

input:
  - string

output:
  - encoded string of ")" and "("

rules:
  - each character that appears once in original string is replaced by "("
  - characters that appear more than once are replaced by ")"
  - ignore capitalization when determining if a character is a duplicate

algorithm:
  - create a count object with counts of each character
    - reduce, set to 1 if not present, otherwise add 1
  - map the array of characters, replacing with ")" or "("

*/

let duplicateEncode = function (word) {
  let chars = word.toLowerCase().split('');
  let counts = chars.reduce((counts, character) => {
    counts[character] ? counts[character] += 1 : counts[character] = 1;
    return counts;
  }, {});

  return chars.map(character => {
    if (counts[character] > 1) {
      return ')';
    } else {
      return '(';
    }
  }).join('');
}

console.log(duplicateEncode("din"));
console.log(duplicateEncode("recede"));
console.log(duplicateEncode("Success"));
console.log(duplicateEncode("(( @"));
