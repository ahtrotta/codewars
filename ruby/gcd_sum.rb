def solve(s, g)
  n = g

  loop do
    s -= g
    n += g
    break [s, g].sort if s % g == 0
    break -1 if s < 1
  end
end

p solve(6, 3)

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(solve(6,3), [3,3])
Test.assert_equals(solve(8,2), [2,6])
Test.assert_equals(solve(10,3), -1)
Test.assert_equals(solve(12,4), [4,8])
Test.assert_equals(solve(12,5), -1)    
