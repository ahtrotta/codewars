var isAnagram = function (test, original) {
  if (test.length !== original.length) return false;

  let testArr = test.toLowerCase().split('').sort();
  let originalArr = original.toLowerCase().split('').sort();

  for (let index = 0; index < test.length; index += 1) {
    if (testArr[index] !== originalArr[index]) return false;
  }

  return true;
}

console.log(isAnagram('foefet', 'toffee') === true);
console.log(isAnagram('Buckethead', 'DeathCubeK') === true);
console.log(isAnagram('dumble', 'bumble') === true);
