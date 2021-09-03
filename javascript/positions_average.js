/*
 
input:
  - string

output:
  - number (percent similarity)

rules:
  - compare each string with each other string
    - see if characters are the same at a given position
  - return percentage as a number rounded to 10 decimals
  - assume all substrings will have the same, non-zero length

algorithm:
  - split input string into array of substrings
    - split(', ')
  - initialize comparison variable
    - keep track of number of comparisons made
  - initialize same variable
    - keep track of number of times the characters are the same
  - iterate through substring array (substring1)
    - iterate through remaining substring array (substring2)
      - iterate through substring1 and substring2
        - compare each character
        - if same, add 1 to same variable
        - add 1 to comparison variable
  - divide same / comparison
  - round to 10 digits
    - Number(result.toNumber(10))
*/

function posAverage(s) {
  let substrings = s.split(', ');
  let comparisons = 0;
  let same = 0;
  substrings.forEach((substring1, index1) => {
    for (let index2 = index1 + 1; index2 < substrings.length; index2 += 1) {
      let substring2 = substrings[index2];
      for (let index3 = 0; index3 < substring1.length; index3 += 1) {
        let substring1Character = substring1[index3];
        let substring2Character = substring2[index3];
        if (substring1Character === substring2Character) {
          same += 1;
        }

        comparisons += 1;
      }
    }
  });

  return Number(((same / comparisons) * 100).toFixed(10));
}

// tests

console.log(posAverage("6900690040, 4690606946, 9990494604"));
console.log(posAverage("466960, 069060, 494940, 060069, 060090, 640009, 496464, 606900, 004000, 944096"));
console.log(posAverage("444996, 699990, 666690, 096904, 600644, 640646, 606469, 409694, 666094, 606490"));
