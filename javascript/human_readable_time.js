/*

input:
  - seconds (non-negative number < 359999)

output:
  - time string ('HH:MM:SS')

rules:
  - hours always has two digits, range 00 - 99
  - minutes, 2 digits, range 00 - 59
  - seconds, 2 digits, range 00 - 59

algorithm:
  - minutes = seconds / 60
  - seconds = seconds % 60
  - hours = minutes / 60
  - minutes = minutes % 60

*/

let humanReadable = function (seconds) {
  let minutes = Math.floor(seconds / 60);
  seconds = String(seconds % 60).padStart(2, '0');
  let hours = String(Math.floor(minutes / 60)).padStart(2, '0');
  minutes = String(minutes % 60).padStart(2, '0');
  return `${hours}:${minutes}:${seconds}`;
}

console.log(humanReadable(0));
console.log(humanReadable(5));
console.log(humanReadable(60));
console.log(humanReadable(86399));
console.log(humanReadable(359999));
