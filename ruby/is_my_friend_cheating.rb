# algorithm
#   - get all combinations of two numbers from the range
#   - check if the product of those numbers is the sum of the rest of the numbers
#
# n1n2 = sum - n1 - n2
# n1n2 + n2 = sum - n1
# n2(n1 + 1) = sum - n1
# n2 = (sum - n1) / (n1 + 1)

#def removNb(n)
#  seq = (1..n).to_a
#  sum = seq.sum
#  seq.combination(2).to_a.each_with_object([]) do |comb, arr|
#    arr << comb << comb.reverse if sum - comb.sum == comb.inject(:*)
#  end
#end

def removNb(n)
  sum = (1..n).sum
  (1..n).each_with_object([]) do |n1, arr|
    n2 = (sum - n1).to_f / (n1 + 1)
    arr << [n1, n2.to_i] if n2 <= n && n2 == n2.to_i
  end
end

p removNb(26)
