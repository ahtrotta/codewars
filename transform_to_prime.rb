require 'prime'

def minimum_number(numbers)
  sum = numbers.sum
  count = 0
  count += 1 until (sum + count).prime?
  count
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
