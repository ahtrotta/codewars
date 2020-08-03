# input
#   - array of integers
#
# output
#   - array of integers
#
# algorithm
#   - create a range from 0 to size of input array - 1 and iterate through it
#     - create a slice from each value to -1 and compute sum
#
# algorithm2
#   - initialize sum to be 0
#   - iterate backwards through array
#     - add sum to output array (shift)
#     - add current_value to sum

#def parts_sums(ls)
#  (0..ls.size).map { |i| ls[i..-1].sum }
#end

def parts_sums(ls)
  sum = 0
  ls.reverse_each.with_object([0]) do |num, sums|
    sum += num
    sums.unshift(sum)
  end
end


p parts_sums([1, 2, 3, 4, 5, 6])
