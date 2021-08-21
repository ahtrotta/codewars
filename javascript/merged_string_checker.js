/*

input:
  - s: string
  - part1: string (fragment of s, maybe)
  - part2: string (fragment of s, maybe)

output:
  - true or false

rules:
  - check whether s can be formed from part1 and part2
  - the order must be preserved
 
algorithm:
  - check if both first letters of part1 and part2 are same as first letter of s
    - return isMerge with first letter of s/part1 removed logical or iSmerge s/part2 removed
  - check if first letter of part1 is the same as first letter of s
    - return isMerge with first letters of part1 and s removed
  - same as above for part2

Bananas from Bahamas

Bananas from am
Bahas
             
*/

let isMerge = function (s, part1, part2) {
  if (s.length === 0 && (part1.length !== 0 || part2.length !== 0)) {
    return false;
  } else if (s.length === 0 && part1.length === 0 && part2.length === 0) {
    return true;
  } else if (s[0] === part1[0] && s[0] === part2[0]) {
    return isMerge(s.slice(1), part1.slice(1), part2) ||
           isMerge(s.slice(1), part1, part2.slice(1));
  } else if (s[0] === part1[0]) {
    return isMerge(s.slice(1), part1.slice(1), part2);
  } else if (s[0] === part2[0]) {
    return isMerge(s.slice(1), part1, part2.slice(1));
  } else {
    return false;
  }
}

console.log(isMerge('codewars', 'code', 'wars'));
console.log(isMerge('codewars', 'cdw', 'oears'));
console.log(!isMerge('codewars', 'cod', 'wars'));
console.log(!isMerge('codewars', 'code', 'warss'));
console.log(isMerge('Bananas from Bahamas', 'Bahas', 'Bananas from am'));

