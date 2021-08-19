/*

input:
  - string (only alphanumeric characters)

output:
  - number of repeated characters

rules:
  - only alphanumeric characters in input
  - case insensitive

algorithm:
  - create a count object with the count of each character
    - iterate through characters and add to object (reduce)
  - reduce the count object keys
    - if the count is larger than 1, add 1 to the sum

*/

let duplicateCount = function (text) {
  let counts = {};
  for (let index = 0; index < text.length; index += 1) {
    let character = text[index].toLowerCase();
    counts[character] ? counts[character] += 1 : counts[character] = 1;
  }

  return Object.keys(counts).reduce((duplicates, character) => {
    if (counts[character] > 1) {
      return duplicates + 1;
    } else {
      return duplicates;
    }
  }, 0);
}

console.log(duplicateCount(""));
console.log(duplicateCount("abcde"));
console.log(duplicateCount("aabbcde"));
console.log(duplicateCount("aabBcde"));
console.log(duplicateCount("Indivisibility"));
console.log(duplicateCount("Indivisibilities"));
