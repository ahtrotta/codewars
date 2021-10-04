/*
function chained(functions) {
  let index = 0;
  return function inner(input) {
    let value = functions[index](input);
    if (index === functions.length - 1) {
      index = 0;
      return value;
    } else {
      index += 1;
      return inner(value);
    }
  };
}
*/

function chained(functions) {
  return function (input) {
    return functions.reduce((result, func) => func(result), input);
  };
}

function f1(x){ return x*2 }
function f2(x){ return x+2 }
function f3(x){ return Math.pow(x,2) }

function f4(x){ return x.split("").concat().reverse().join("").split(" ")}
function f5(xs){ return xs.concat().reverse() }
function f6(xs){ return xs.join("_") }

console.log(chained([f1,f2,f3])(0));
console.log(chained([f1,f2,f3])(2));
console.log(chained([f3,f2,f1])(2));
console.log(chained([f4,f5,f6])("lorem ipsum"));
