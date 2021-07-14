def twos_difference(lst)
  lst.combination(2).to_a.select { |n1, n2| (n1 - n2).abs == 2 }.map(&:sort).sort
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1
    p obj1 == obj2
  end
end

Test.assert_equals(twos_difference([1, 2, 3, 4]), [[1, 3], [2, 4]])
Test.assert_equals(twos_difference([1, 3, 4, 6]), [[1, 3], [4, 6]])
Test.assert_equals(twos_difference([0, 3, 1, 4]), [[1, 3]])
Test.assert_equals(twos_difference([4, 1, 2, 3]), [[1, 3], [2, 4]])
Test.assert_equals(twos_difference([6, 3, 4, 1, 5]), [[1, 3], [3, 5], [4, 6]])
Test.assert_equals(twos_difference([3, 1, 6, 4]), [[1, 3], [4, 6]])
Test.assert_equals(twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]), [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]])
Test.assert_equals(twos_difference([1, 4, 7, 10]), [])
Test.assert_equals(twos_difference([]), [])
