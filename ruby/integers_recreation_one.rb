=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- for each number between n and m
  - generate array of divisors
  - square all divisors
  - sum squared divisors
  - check if square root of sum modulo 1 is 0

=end

#def list_squared(m, n)
#  dvsrs = (m..n).map do |div|
#    divisors = (1..(div / 2)).select { |num| div % num == 0 } << div
#    sum = divisors.map { |num| num**2 }.sum
#    [div, sum]
#  end
#  dvsrs.select { |int, total| Math.sqrt(total) % 1 == 0 }
#end

#def list_squared(m, n)
#  (m..n).each_with_object([]) do |num, arr|
#    sum = num**2
#    div = 1
#
#    loop do
#      break if div == (num / 2) + 1
#      if num % div == 0
#        sum += div**2
#      end
#      div += 1
#    end
#
#    if Math.sqrt(sum) % 1 == 0
#      arr << [num, sum]
#    end
#
#  end
#end

#def list_squared(m, n)
#  hsh = {}
#  loop do
#    break if m == n + 1
#    sum = m**2
#    div = 1
#
#    loop do
#      break if div == (m / 2) + 1
#      if m % div == 0
#        sum += div**2
#      end
#      div += 1
#    end
#
#    if Math.sqrt(sum) % 1 == 0
#      hsh[m] = sum
#    end
#
#    m += 1
#  end
#  hsh.to_a
#end

def get_divisors(num)
  arr = []
  limit = Math.sqrt(num)
  current = 1
  loop do
    break if current > limit
    if num % current == 0
      arr << current
      arr << (num / current) if current != num / current
    end
    current += 1
  end
  arr
end

def list_squared(m, n)
  (m..n).each_with_object([]) do |num, arr|
    sum = get_divisors(num).map { |el| el**2 }.sum
    arr << [num, sum] if Math.sqrt(sum) == Math.sqrt(sum).to_i
  end
end

# test cases

p list_squared(1, 50)
p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]
