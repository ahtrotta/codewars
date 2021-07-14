function firstNonConsecutive(arr) {
  if (arr.length < 2) {
    return null;
  }

  let lastElement = arr[0];

  for (let index = 1; index < arr.length; index += 1) {
    let currentElement = arr[index];
    if (currentElement - lastElement !== 1) {
      return currentElement;
    }
    lastElement = currentElement; 
  }

  return null;
}

console.log(firstNonConsecutive([1, 2, 3, 4, 6, 7, 8]));
