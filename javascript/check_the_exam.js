function checkExam(array1, array2) {
  let score = 0;
  
  for (let index = 0; index < array1.length; index += 1) {
    if (array1[index] === array2[index]) {
      score += 4;
    } else if (array2[index] === '') {
      continue;
    } else {
      score -= 1;
    }
  }
  
  return score < 0 ? 0 : score;
}

console.log(checkExam(['b', 'c', 'b', 'a'], ['', 'a', 'a', 'c']));
