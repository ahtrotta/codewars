/*

input:
  - string of words
    - each word has a number in it

output:
  - rearranged string of words
    - ordered by the number associated with the word (1 is first)

rules:
  - numbers are 1 to 9
  - if input is empty string, return empty string
  - only valid input

algorithm:
  - split the string into words
  - use the built-in sort method 
    - use regex to extract matches for digits
    - compare the digits
  - join the array on the space character

*/

let order = function (words) {
  if (words.length === 0) return words;
  let wordArray = words.split(' ');
  return wordArray.sort((word1, word2) => {
    return extractDigit(word1) - extractDigit(word2);
  }).join(' ');
}

let extractDigit = function (string) {
  return Number(string.match(/\d/)[0]);
}

console.log(order("is2 Thi1s T4est 3a"));
console.log(order("4of Fo1r pe6ople g3ood th5e the2"));
console.log(order(""));
