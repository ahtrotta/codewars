def solve(arr)
  dup = arr.dup.sort
  res = []

  until dup.empty?
    res << dup.pop
    break if dup.empty?
    res << dup.shift
  end

  res
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(solve([15,11,10,7,12]),[15,7,12,10,11])
Test.assert_equals(solve([91,75,86,14,82]),[91,14,86,75,82])
Test.assert_equals(solve([84,79,76,61,78]),[84,61,79,76,78])
Test.assert_equals(solve([52,77,72,44,74,76,40]),[77,40,76,44,74,52,72])
Test.assert_equals(solve([1,6,9,4,3,7,8,2]),[9,1,8,2,7,3,6,4])
Test.assert_equals(solve([78,79,52,87,16,74,31,63,80]),[87,16,80,31,79,52,78,63,74])
