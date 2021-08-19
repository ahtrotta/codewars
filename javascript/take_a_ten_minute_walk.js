/*

input:
  - array of directions ['n', 's', 'e', 'w']

output:
  - true or false

rules:
  - always will be a non-empty array with valid directions
  - walk must take 10 minutes (one block takes one minute)
  - walk must return to starting position

algorithm:
  - check if length is 10
  - check if returns to start
    - generate counts of directions
    - check that 'e' and 'w' are equal and 'n' and 's' are equal

*/

let isValidWalk = function (walk) {
  return walk.length === 10 && returnsToStart(walk);
}

let returnsToStart = function (walk) {
  let counts = walk.reduce((counts, dir) => {
    counts[dir] ? counts[dir] += 1 : counts[dir] = 1;
    return counts;
  }, {});

  return counts['e'] === counts['w'] && counts['n'] === counts['s'];
}

console.log(isValidWalk(['n','s','n','s','n','s','n','s','n','s']));
console.log(isValidWalk(['w','e','w','e','w','e','w','e','w','e','w','e']));
console.log(isValidWalk(['w']));
console.log(isValidWalk(['n','n','n','s','n','s','n','s','n','s']));

