/*

input:
  - string of words

output:
  - same string but with 5 letter or longer words reversed

requirements:
  - strings will consist of letters and spaces
  - spaces are only present when more than one word is present

algorithm:
  - split the string on the space character to make an array of words
  - map the array
    - if length of word is 5 or more then reverse it
      - convert to an array of characters, reverse, then convert back to string
  - join the array on space

*/

let spinWords = function (string) {
  let words = string.split(' ');
  let result = words.map(word => {
    if (word.length >= 5) {
      return word.split('').reverse().join('');
    } else {
      return word;
    }
  });

  return result.join(' ');
}

console.log(spinWords("Welcome"));
console.log(spinWords("Hey fellow warriors"));
console.log(spinWords("This is a test"));
console.log(spinWords("This is another test"));
console.log(spinWords("You are almost to the last test"));
console.log(spinWords("Just kidding there is still one more"));
console.log(spinWords("Seriously this is the last one"));
