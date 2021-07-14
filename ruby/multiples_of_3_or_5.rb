# ALGORITHM
# - create range from 1..input
# - select from range if num % 3 == 0 || num % 5 == 0
# - inject(:+)

def solution(number)
  (1...number).select { |num| num % 3 == 0 || num % 5 == 0 }.inject(:+)
end

p solution(10)
