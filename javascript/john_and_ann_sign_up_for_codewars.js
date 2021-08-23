/*

john and ann

input:
  - n: number representing the number of days

output:
  - list of katas ann or john should do on the first n days

rules:
  - ann
    - katas = n - john(t)
    - t = ann(n - 1)
  - john
    - katas = n - ann(t)
    - t = john(n - 1)

algorithm:

*/

const RESULTS = {
  john: {
    list: [0],
    sums: [0],
  },
  ann: {
    list: [1],
    sums: [1],
  },
}

let john = function (n) {
  let johnList = RESULTS.john.list;
  while (johnList.length < n) {
    johnList[johnList.length] = getJohnKata(johnList.length);
  }

  return johnList.slice(0, n);
}

let getJohnKata = function (n) {
  if (n === 0) {
    return 0;
  } else if (RESULTS.john.list[n]) {
    return RESULTS.john.list[n];
  } else {
    return n - getAnnKata(getJohnKata(n - 1));
  }
}

let ann = function (n) {
  let annList = RESULTS.ann.list;
  while (annList.length < n) {
    annList[annList.length] = getAnnKata(annList.length);
  }

  return annList.slice(0, n);
}

let getAnnKata = function (n) {
  if (n === 0) {
    return 1;
  } else if (RESULTS.ann.list[n]) {
    return RESULTS.ann.list[n];
  } else {
    return n - getJohnKata(getAnnKata(n - 1));
  }
}

let sumJohn = function (n) {
  if (RESULTS.john.sums[n - 1]) {
    return RESULTS.john.sums[n - 1];
  } else {
    let startIndex = RESULTS.john.sums.length;
    let johnList = john(n);
    let sum = RESULTS.john.sums[startIndex - 1];
    for (let index = startIndex; index < johnList.length; index += 1) {
      sum += johnList[index];
      RESULTS.john.sums[index] = sum;
    }

    return sum;
  }
}

let sumAnn = function (n) {
  if (RESULTS.ann.sums[n - 1]) {
    return RESULTS.ann.sums[n - 1];
  } else {
    let startIndex = RESULTS.ann.sums.length;
    let annList = ann(n);
    let sum = RESULTS.ann.sums[startIndex - 1];
    for (let index = startIndex; index < annList.length; index += 1) {
      sum += annList[index];
      RESULTS.ann.sums[index] = sum;
    }

    return sum;
  }
}

console.log(john(11));
console.log(ann(6));
console.log(sumAnn(115));
console.log(sumJohn(75));
