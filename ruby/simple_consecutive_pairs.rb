def pairs(arr)
  arr.each_slice(2).map { |pair| pair.size != 2 ? 0 : ((pair.first - pair.last).abs == 1 ? 1 : 0) }.sum
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(pairs([1,2,5,8,-4,-3,7,6,5]),3)
Test.assert_equals(pairs([21, 20, 22, 40, 39, -56, 30, -55, 95, 94]),2)
Test.assert_equals(pairs([81, 44, 80, 26, 12, 27, -34, 37, -35]),0)
Test.assert_equals(pairs([-55, -56, -7, -6, 56, 55, 63, 62]),4)
Test.assert_equals(pairs([73, 72, 8, 9, 73, 72]),3)
