def power(s, n=s.size)
  return [] if n < 0
  return s.combination(n).to_a + power(s, n - 1)
end

p power([1,2,3]).sort == [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]].sort
p power(["a","b"]).sort == [[], ["a"], ["b"], ["a", "b"]].sort
