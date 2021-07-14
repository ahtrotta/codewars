function hello(name) {
  if (!name) {
    return 'Hello, World!';
  }

  nameArr = name.toLowerCase().split('');
  nameArr[0] = nameArr[0].toUpperCase();

  return `Hello, ${nameArr.join('')}!`;
}

console.log(hello('johN') === 'Hello, John!');
console.log(hello('alice') === 'Hello, Alice!');
console.log(hello() === 'Hello, World!');
console.log(hello('') === 'Hello, World!');
