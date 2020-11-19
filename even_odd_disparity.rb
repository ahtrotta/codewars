def solve(arr)
  odd, even = arr.select { |el| el.is_a?(Integer) }.partition(&:odd?)
  even.size - odd.size
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(solve([0,1,2,3]),0)
Test.assert_equals(solve([0,1,2,3,'a','b']),0)
Test.assert_equals(solve([0, 15,'z',16,'m', 13, 14,'c', 9, 10, 13,'u', 4, 3]),0)
Test.assert_equals(solve([13, 6, 8, 15, 4, 8, 13]),1)
Test.assert_equals(solve([1,'a', 17, 8,'e', 3,'i', 12, 1]),-2)
Test.assert_equals(solve([5, 15, 16, 10, 6, 4, 16, 't', 13, 'n', 14, 'k', 'n', 0, 'q', 'd', 7, 9]),2)
