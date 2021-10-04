function isIntArray(arr) {
  return !!arr && (arr.length === 0 ||
         arr.every(element => {
           return typeof element === 'number' && 
                  element / Math.floor(element) === 1;
         }));
}

// tests
console.log(isIntArray([]));
console.log(isIntArray([1, 2, 3, 4]));
console.log(isIntArray([1, 2, 3, NaN]));
