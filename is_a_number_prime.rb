#def isPrime(num)
#  return false if num < 2
#  
#  limit = num / 2
#  checked = []
#  div = 2
#  
#  loop do
#    break if div == limit
#    return false if num % div == 0
#    
#    multiples = div
#    multiplier = 2
#    until multiples > (num / multiples)
#      checked << multiples
#      multiples = multiples * multiplier
#      multiplier += 1
#    end
#      
#    div += 1 until !(checked.include?(div))
#  end
#  
#  true
#end
#
# ALGORITHM
# - create array of numbers to check
# - iterate through array
#   - number is divisor to input?
#     - return false
#   - if not?
#     - remove all numbers in to_check array that are divisible by number
#       - reject if n % current == 0

#def isPrime(num)
#  return false if num < 2
#  to_check = (2..(num / 2)).to_a
#
#  to_check.each do |n|
#    if num % n == 0
#      return false
#    else
#      to_check.reject! { |int| int > n && int % n == 0 }
#    end
#  end
#  true
#end

require 'prime'

def isPrime(num)
  return false if num < 2
  Prime.each(num / 2) { |prime| return false if num % prime == 0 }
  true
end

p isPrime(1)
p isPrime(2)
p isPrime(-1)
p isPrime(457)
p isPrime(999)
