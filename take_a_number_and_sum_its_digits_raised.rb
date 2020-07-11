=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def sum_dig_pow(a, b)
  (a..b).select do |n|
    digits = n.digits.reverse
    (0...digits.size).map { |i| digits[i]**(i + 1) }.sum == n
  end
end

# test cases

p sum_dig_pow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]
p sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
p sum_dig_pow(10, 100) ==  [89]
p sum_dig_pow(90, 100) ==  []
p sum_dig_pow(90, 150) ==  [135]
p sum_dig_pow(50, 150) ==  [89, 135]
p sum_dig_pow(10, 150) ==  [89, 135]
