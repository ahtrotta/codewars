=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def two_sum(numbers, target)
  i1 = 0
  loop do
    break if i1 == numbers.size
    i2 = i1 + 1
    loop do
      break if i2 == numbers.size
      return [i1, i2] if numbers[i1] + numbers[i2] == target
      i2 += 1
    end
    i1 += 1
  end
end

# test cases

p two_sum([1, 2, 3], 4).sort == [0, 2]
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
p two_sum([2, 2, 3], 4).sort == [0, 1]
