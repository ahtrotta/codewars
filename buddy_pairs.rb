# algorithm
# - iterate from beginning to end
#   - get all divisors of number and sum them
#   - add number and divisors to hash
# - iterate through hash
#   - check if sum is a key + 1
#     - check if the key has sum of previous key + 1

def divisor_sum(n)
  lim = Math.sqrt(n)
  divs = 2.upto(lim).each_with_object([]) do |div, arr|
    if n % div == 0
      n == lim ? arr << div : arr << div << (n / div)
    end
  end
  divs.sum + 1
end

def buddy(start, nd)
  start.upto(nd).each_with_object({}) do |num, div_sums|
    sum = divisor_sum(num)
    bud = sum - 1
    next if bud <= num
    bud_sum = div_sums[bud] || divisor_sum(bud)
    return "(#{num} #{bud})" if bud_sum == num + 1
  end
  'Nothing'
end

p buddy(10, 50)
p buddy(1071625, 1103735) == "(1081184 1331967)"
p buddy(57345, 90061) == "(62744 75495)"
p buddy(2177, 4357) == "Nothing"
