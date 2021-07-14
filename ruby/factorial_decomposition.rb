# input
# - integer to be factorial-ed
#
# output
# - prime factorization as a string
#   - increasing order of bases
#
# algorithm
# - initialize a hash of factors
# - initialize num to input number
# - loop
#   - get prime factorization of num
#     - iterate through prime factorization and add each to hash
#   - subtract one from num
#   - break if num is 1
# - convert hash to array
#   - iterate through array
#     - convert each entry to string and add to output string

require 'prime'

def decomp(n)
  factors = Hash.new(0)
  num = n

  loop do
    break if num < 2
    Prime.prime_division(num).each do |base, power|
      factors[base] += power
    end
    num -= 1
  end

  res = factors.to_a.sort_by(&:first).map.with_object([]) do |(b, k), arr|
    arr << (k > 1 ? "#{b}^#{k}" : "#{b}")
  end
    
  res.join(' * ')
end

p decomp(12)
