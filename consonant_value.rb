# input
#   - string of lowercase alphabetic characters
#
# output
#   - integer representing largest 'value' substring
#
# algorithm
#   - keep track of max_so_far
#   - keep track of sum, initialize to 0
#   - iterate through characters
#     - add value to sum if consonant
#     - if vowel, assign sum to max_so_far if sum is larger, reset sum

def solve(s)
  max = 0
  sum = 0

  s.each_char.with_index do |c, i|
    if 'aeiou'.include?(c)
      max = sum if sum > max
      sum = 0
    elsif i == s.size - 1
      sum += (c.ord - 96)
      max = sum if sum > max
    else
      sum += (c.ord - 96)
    end
  end

  max
end
