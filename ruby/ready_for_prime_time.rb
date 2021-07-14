# problem
# - generate an array containing every prime number betwee 0 and input
#
# input
# - integer representing maximum bound (inclusive)
#
# output
# - array of primes up to maxiumum bound

require 'prime'

def prime(n)
  return [] if n < 2
  arr = []

  Prime.each do |p|
    break if p > n
    arr << p
  end

  arr
end

p prime(11)

