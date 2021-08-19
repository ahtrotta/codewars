/*

input:
  - string

output:
  - string with alphabet positions for all alphabetical characters

rules:
  - if a character isn't a letter, ignore it
  - a is 1
  - case insensitive

algorithm:
  - create a constant with alphabet in array (first item empty)
  - initialize a return string to an empty string
  - iterate through the string
    - if letter, put number in return string with a trailing space
  - trim the last space

*/

let alphabetPosition = function (text) {
  const ALPHABET = [ , 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ];
  let result = '';
  for (let index = 0; index < text.length; index += 1) {
    let currentCharacter = text[index].toLowerCase();
    if (/[a-z]/.test(currentCharacter)) {
      result += `${ALPHABET.indexOf(currentCharacter)} `;
    }
  }

  return result.trim();
}

console.log(alphabetPosition("The sunset sets at twelve o' clock."));
console.log(alphabetPosition("The narwhal bacons at midnight."));
