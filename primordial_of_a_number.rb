# problem
#   - given an integer, calculate the primordial
#   - integer n represents the first n prime numbers
#
# input
#   - integer
#
# output
#   - the primordial (first n primes multiplied together)
#
# algorithm
#   - generate an array of n primes then multiply all of them
#   - initialize primes array
#   - initialize current_num to 2
#   - until primes array size is equal to n
#     - check if current num is prime
#       - iterate from 2 to square root of current_num (div)
#         - return false if current_num % div is equal to 0
#       - add to primes if it is prime
#   - multiply all primes together

def is_prime?(num)
  return false if num < 2
  return true if num == 2 || num == 3
  (2..Math.sqrt(num)).each { |n| return false if num % n == 0 }
  true
end

#def num_primordial(n)
#  primes = []
#  current_num = 2
#
#  until primes.size == n
#    primes << current_num if is_prime?(current_num)
#    current_num += 1
#  end
#
#  primes.reduce(:*)
#end

require 'prime'

def num_primordial(n)
  Prime.first(n).reduce(:*)
end

p num_primordial(3) == 30
p num_primordial(4) == 210
p num_primordial(5) == 2310
p num_primordial(8) == 9699690

#p is_prime?(-1) == false
#p is_prime?(0) == false
#p is_prime?(1) == false
#p is_prime?(2) == true 
#p is_prime?(3) == true
#p is_prime?(4) == false
#p is_prime?(12) == false
#p is_prime?(17) == true
