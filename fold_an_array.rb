# input
#   - array of integers
#     - never empty
#   - number of times to fold (runs)
#
# output
#   - folded array
#
# algorithm
#   - create a range from index 0 to halfway point (size / 2)
#     - add item at index to -index - 1
#   - add resultant array to middle value if odd

def fold_array(array, runs)
  return array if array.size == 1 || runs == 0

  folded = (0...(array.size / 2)).map do |i|
    array[i] + array[-i - 1]
  end

  folded = array.size.odd? ? folded + array[(array.size / 2), 1] : folded
  fold_array(folded, runs - 1)
end

p fold_array([1, 2, 3, 4, 5], 1)
p fold_array([1, 2, 3, 4, 5], 2)
p fold_array([1, 2, 3, 4, 5], 3)
p fold_array([-9, 9, -8, 8, 66, 23], 1)
