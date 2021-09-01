function reverse(str) {
  return str.trim().split(/\s+/).map((word, index) => {
    return (index % 2 === 1 ? word.split('').reverse().join('') : word);
  }).join(' ');
}

console.log(reverse("Reverse this string, please!"));
console.log(reverse("I really don't like reversing strings!"));
