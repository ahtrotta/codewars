/*

input:
  - string

output:
  - string with parentheses and everything inside removed

rules:
  - string will only have parentheses, spaces, and letters
  - there can be multiple parentheses
  - the parentheses can be nested

algorithm:
  - initialize result as empty string
  - initialize parentheses variable to 0
  - iterate through the string
    - if open parentheses
      - increment parentheses variable
    - if closed parentheses
      - decrement parentheses variable
    - else if parentheses variable is 0
      - add character to result string
  - return result

*/

function removeParentheses(s) {
  let result = '';
  let parentheses = 0;
  for (let index = 0; index < s.length; index += 1) {
    let character = s[index];
    if (character === '(') {
      parentheses += 1;
    } else if (character === ')') {
      parentheses -= 1;
    } else if (parentheses === 0) {
      result += character;
    }
  }

  return result;
}

// tests
console.log(removeParentheses("example(unwanted thing)example"));
console.log(removeParentheses("example (unwanted thing) example"));
console.log(removeParentheses("a (bc d)e"));
console.log(removeParentheses("a(b(c))"));
console.log(removeParentheses("hello example (words(more words) here) something"));
console.log(removeParentheses("(first group) (second group) (third group)"));
