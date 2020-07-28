# input
#   - integer
#
# output
#   - integer
#
# algorithm
#   - repeat until output is same as input
#     - split input into digits
#     - multiply each digit by the corresponding number in the sequence
#     - add all of the digits together

SEQ = [1, 10, 9, 12, 3, 4]

def thirt(n)
  loop do
    sum = n.digits.map.with_index { |dig, i| dig * SEQ[i % 6] }.sum
    return sum if n == sum
    n = sum
  end
end

p thirt(1234567)
