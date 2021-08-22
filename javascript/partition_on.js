/*

input:
  - predicate (function for determining partitioning)
  - list of items to be partitioned

output:
  - boundary index (first index of 'true' elements)

rules:
  - after execution, list should be ['false', 'false', ..., 'true', 'true', ...]
  - ordering of the falses and trues should be preserved

algorithm:
  - initialize true and false lists
  - until items list is empty
    - remove first element
    - check if true or false
    - add to appropriate list
  - iterate through false list
    - push each item to original list
  - iterate through true list
    - push each item to original list
  - return length of false list

*/

let partitionOn = function (pred, items) {
  let trueList = [];
  let falseList = [];
  while (items.length > 0) {
    let item = items.shift();
    pred(item) ? trueList.push(item) : falseList.push(item);
  }

  falseList.forEach(item => items.push(item));
  trueList.forEach(item => items.push(item));

  return falseList.length;
}

let items = [1, 2, 3, 4, 5, 6];
function isEven(n) {return n % 2 == 0}
let i = partitionOn(isEven, items);
console.log(i);
console.log(items.slice(0, i));
console.log(items.slice(i));
