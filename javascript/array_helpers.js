Object.assign(Array.prototype, {
  square() {
    return this.map(number => number**2);
  },

  cube() {
    return this.map(number => number**3);
  },

  sum() {
    return this.length === 0 ? 0 : this.reduce((sum, number) => sum + number);
  },

  average() {
    return this.sum() / this.length;
  },

  even() {
    return this.filter(number => number % 2 === 0);
  },

  odd() {
    return this.filter(number => number % 2 === 1);
  },
});

// tests
Test.assertSimilar(numbers.square(), [1, 4, 9, 16, 25]);
Test.assertSimilar(numbers.cube(), [1, 8, 27, 64, 125]);
Test.assertEquals(numbers.sum(), 15, 'Wrong sum');
Test.assertEquals(numbers.average(), 3, 'Wrong average');
Test.assertSimilar(numbers.even(), [2, 4], 'Wrong result for even()');
Test.assertSimilar(numbers.odd(), [1, 3, 5], 'Wrong result for odd()');
