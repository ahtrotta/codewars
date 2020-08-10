# problem
#   - given an array of integers, return an array that has the digits that represent the integer one larger than the original array
#
# input
#   - array of integers
#
# output
#   - array of integers

def up_array(arr)
  return nil if arr.empty? || arr.any? { |n| n < 0 || n > 9 }
  arr.join.to_i.+(1).digits.reverse
end
