=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def halving_sum(n)
  den = 1
  sum = 0
  loop do
    num = n / den
    break if num == 0
    sum += num
    den *= 2
  end
  sum
end

# test cases

p halving_sum(25) == 47
p halving_sum(127) == 247
