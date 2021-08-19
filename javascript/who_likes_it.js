/*

input:
  - array of strings (or empty array)

output:
  - string of people who like 'this'

requirements:
  - if empty array then return "no one likes this"
  - if array has length 1 return "NAME likes this"
  - if array has length 2 then return "NAME1 and NAME2 like this"
  - if array has length 3 then return "NAME1, NAME2, and NAME3 like this"
  - if array has length 4 or more then return "NAME1, NAME2, and NUMBER others like this"

*/

let likes = function (names) {
  let message;
  if (names.length === 0) {
    message = 'no one likes this';
  } else if (names.length === 1) {
    message = `${names[0]} likes this`;
  } else if (names.length === 2) {
    message = `${names[0]} and ${names[1]} like this`;
  } else if (names.length === 3) {
    message = `${names[0]}, ${names[1]} and ${names[2]} like this`;
  } else {
    let others = names.length - 2;
    message = `${names[0]}, ${names[1]} and ${others} others like this`;
  }

  return message;
}

console.log(likes([]));
console.log(likes(['Peter']));
console.log(likes(['Jacob', 'Alex']));
console.log(likes(['Max', 'John', 'Mark']));
console.log(likes(['Alex', 'Jacob', 'Mark', 'Max']));
