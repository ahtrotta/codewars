/*

input:
  - string represneting a chemical formula

output:
  - object with counts of each atom

rules:
  - braces can surround atoms
    - can be round, square, or curly

algorithm:
  - match for brackets and optional number


*/

let parseMolecule = function (formula) {
  let atomCounts = {};
  expandFormula(formula).match(/[A-Z][a-z]*\d*/g).forEach(group => {
    let match = group.match(/(?<atom>[A-Z][a-z]*)(?<number>\d*)/);
    let atom = match.groups.atom;
    let number = Number(match.groups.number) || 1;
    atomCounts[atom] ? atomCounts[atom] += number : atomCounts[atom] = number;
  });

  return atomCounts;
}

let expandFormula = function (formula) {
  const BRACKETS = [
    { open: '(', close: ')' },
    { open: '[', close: ']' },
    { open: '{', close: '}' },
  ]

  let fillRegexTemplate = function (bracket) {
    return `(?<before>.*)\\${bracket.open}(?<inner>.*)\\${bracket.close}(?<number>\\d*)(?<after>.*)`;
  }

  BRACKETS.forEach(bracket => { 
    let regex = new RegExp(fillRegexTemplate(bracket));
    while (true) {
      let match = formula.match(regex);
      if (match === null) break;
      let repeatNumber = match.groups.number || 1; 
      let inner = match.groups.inner.repeat(repeatNumber);
      let newFormula = match.groups.before + inner + match.groups.after;
      formula = newFormula;
    }
  });

  return formula;
}

console.log(parseMolecule("H2O"));
console.log(parseMolecule("Mg(OH)2"));
console.log(parseMolecule("K4[ON(SO3)2]2"));
console.log(parseMolecule("C6H12O6"));
