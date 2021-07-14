def solve(arr)
  arr.reject { |n| arr.include?(n * -1) }.first
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(solve([1,-1,2,-2,3]),3)
Test.assert_equals(solve([-3,1,2,3,-1,-4,-2]),-4)
Test.assert_equals(solve([1,-1,2,-2,3,3]),3)
Test.assert_equals(solve([-110,110,-38,-38,-62,62,-38,-38,-38]),-38)
Test.assert_equals(solve([ -9,-105,-9,-9,-9,-9,105]),-9)
