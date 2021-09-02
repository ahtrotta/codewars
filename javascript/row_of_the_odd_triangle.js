/*

1 --> 1
2 --> 3
3 --> 7
4 --> 13
5 --> 21 

n**2 - (n - 1)


*/

function oddRow(n) {
  let start = n**2 - (n - 1);
  let row = [start];
  while (row.length < n) {
    row.push(row[row.length - 1] + 2);
  }

  return row;
}

// tests
console.log(oddRow(1));
console.log(oddRow(2));
console.log(oddRow(13));
console.log(oddRow(19));
console.log(oddRow(41));

