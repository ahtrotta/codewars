# input
#   - positive integer up to 16 digits
#
# output
#   - true or false
#
# algorithm
#   - split number into digits, reverse them
#   - double every other digit (odd index)
#   - replace all numbers greater than 9 with sum of digits
#   - sum all transformed digits
#   - check if resultant sum modulo 10 is 0

def validate(n)
  return false if n.digits.size > 16
  arr = n.digits.map.with_index { |dig, i| i.odd? ? dig * 2 : dig }.map do |num|
    num > 9 ? num.digits.sum : num
  end
  arr.sum % 10 == 0
end
