/*

input:
  - array of strings (commands)

output:
  - an object containing the registers

rules:
  - instructions: 
    - mov x y: copies y (can either be a number or a register name) to register x
    - inc x: increments register x by 1
    - dec x: decrements register x by 1
    - jnz x y: jumps to instruction y steps away (positive moves forward and negative moves backwards), but only if x is not zero (x can be a number or a register)
      - the jnz instruction moves relative to itself
        - offset of 1 would be to execute the next instruction
  - register names are letters
  - constants are always integers
  - don't worry about uninitialized registers

algorithm:
  - iterate over instructions (use for loop)
    - split instruction on space
    - check first word

*/

let simple_assembler = function (program) {
  let registers = {};
  for (let index = 0; index < program.length; index += 1) {
    let instruction = program[index].split(' ');
    if (instruction[0] === 'mov') {
      let [ , register, value] = instruction;
      value = getValue(value, registers);
      registers[register] = registers[value];
      registers[register] = Number(value);
    } else if (instruction[0] === 'inc') {
      let [ , register] = instruction;
      registers[register] += 1;
    } else if (instruction[0] === 'dec') {
      let [ , register] = instruction;
      registers[register] -= 1;
    } else if (instruction[0] === 'jnz') {
      let [ , testValue, value] = instruction;
      testValue = getValue(testValue, registers);
      if (testValue !== 0) {
        value = getValue(value, registers);
        index += value - 1;
      }
    }
  }

  return registers;
}

let getValue = function (value, registers) {
  if (/[a-z]/i.test(value)) {
    return registers[value];
  } else {
    return Number(value);
  }
}

console.log(simple_assembler(['mov a 5','inc a','dec a','dec a','jnz a -1', 'inc a'])); 
console.log(simple_assembler(['mov a -10','mov b a','inc a','dec b','jnz a -2'])); 
