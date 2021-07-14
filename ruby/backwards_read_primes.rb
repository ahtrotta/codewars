# input
#   - two integers that create a range of numbers to check
#
# output  
#   - array of primes that are also another prime when read backwards
#
# algorithm
#   - iterate from start to stop number
#     - check if number is prime
#       - iterate from 2 to square root of number
#         - return false if number modulo current number is 0
#     - convert number to string, reverse, then convert back to integer and check if the resultant integer is prime
#       - if so, add to output array

def is_prime?(n)
  return false if n < 2
  return true if n == 2 || n == 3

  (2..Math.sqrt(n)).each do |div|
    return false if n % div == 0
  end

  true
end

def backwardsPrime(start, stop)
  (start..stop).each_with_object([]) do |num, arr|
    next unless is_prime?(num)
    rev = num.to_s.reverse.to_i
    arr << num if num != rev && is_prime?(rev)
  end
end
    
