function som(a, b) {
  return a + b;
}

function mini(a, b) {
  return (a < b ? a : b);
}

function maxi(a, b) {
  return (a < b ? b : a);
}

function lcmu(a, b) {
  [a, b] = [Math.abs(a), Math.abs(b)];
  let [larger, smaller] = [mini(a, b), maxi(a, b)];
  let multiple = larger;
  while (multiple % smaller !== 0) {
    multiple += larger;
  }

  return multiple;
}

function gcdi(a, b) {
  [a, b] = [Math.abs(a), Math.abs(b)];
  if (a === 0) {
    return b;
  } else if (b === 0) {
    return a;
  } else {
    return (a > b ? gcdi(a % b, b) : gcdi(b % a, a));
  }
}

function operArray(fct, arr, init) {
  let lastValue = init;
  return arr.map(value => {
    let newValue = fct(lastValue, value);
    lastValue = newValue;
    return newValue;
  });
}
