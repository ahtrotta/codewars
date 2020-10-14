# input
# - integers
#
# output
# - integer (least common multiple of inputs)
#
# algorithm
# - set guess to largest input
# - loop
#   - break if all inputs modulo guess equals 0
#   - add 1 to guess
#
require 'pry'

def lcm(*ints)
  return 1 if ints.nil? || ints.empty?
  return 0 if ints.include?(0)
  return ints.first if ints.size == 1
  largest = ints.sort!.pop
  guess = largest
  guess += largest until ints.all? { |n| guess % n == 0 }
  guess
end

p lcm(2, 3, 4)
