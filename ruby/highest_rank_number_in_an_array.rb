def highest_rank(arr)
  sorted = arr.uniq.sort do |a, b|
             res = arr.count(a) <=> arr.count(b)
             res == 0 ? a <=> b : res
           end
  sorted.last
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]), 12)
Test.assert_equals(highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]), 12)
Test.assert_equals(highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]), 3)
