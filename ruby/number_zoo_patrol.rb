#def find_missing_number(numbers)
#  last = 0
#
#  numbers.sort.each do |n|
#    return n - 1 unless n - last == 1
#    last = n
#  end
#
#  last + 1
#end
#
#def find_missing_number(numbers)
#  numbers = numbers.sort
#  idx = 1
#  last = numbers.first
#  return 1 if last != 1
#  size = numbers.size
#
#  loop do
#    current = numbers[idx]
#    return current - 1 unless current - last == 1
#    idx += 1
#    last = current
#    break if idx == size
#  end
#
#  last + 1
#end

def find_missing_number(numbers)
  max = numbers.max
  res = (1..max).sum - numbers.sum
  res == 0 ? max + 1 : res
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(find_missing_number([2, 3, 4]), 1)
Test.assert_equals(find_missing_number([1, 3, 4]), 2)
Test.assert_equals(find_missing_number([1, 2, 4]), 3)
Test.assert_equals(find_missing_number([1, 2, 3]), 4)
