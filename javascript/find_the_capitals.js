/*
let capitals = function (word) {
  let capitalIndexes = [];
  for (let index = 0; index < word.length; index += 1) {
    let currentCharacter = word[index];
    if (/[A-Z]/.test(currentCharacter)) {
      capitalIndexes.push(index);
    }
  }

  return capitalIndexes;
}
*/

let capitals = function (word) {
  let indexes = [];
  let matches = word.matchAll(/[A-Z]/g);
  for (let match of matches) {
    indexes.push(match.index);
  }

  return indexes;
}

console.log(capitals('CodEWaRs'));
