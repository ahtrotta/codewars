# - iterate through prime numbers
#   - raise each prime to power n until it's not divisible

def is_prime?(n)
  return false if n < 2
  (2..(n / 2)).each_with_object(true) do |num|
    return false if n % num == 0
  end
end

require 'prime'

def primeFactors(n)
  primes = Prime.each
  arr = []
  prime = 2

  loop do
    break if n == 1 || prime > n

    if n % prime == 0
      arr << prime
      n /= prime
    else
      prime = primes.next
    end

  end

  arr.uniq.each_with_object('') do |num, str|
    (pow = arr.count(num)) > 1 ? str << "(#{num}**#{pow})" : str << "(#{num})"
  end
end

p primeFactors(86240)
p primeFactors(933555431)
