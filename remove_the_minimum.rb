# input
#   - array of integers
#
# output
#   - array of integers without the smallest value from input array
#
# algorithm
#   - find the minimum value
#     - sort the list and return the first element
#   - find the index of the minimum value
#   - create a new array without that index

def remove_smallest(numbers)
  small = numbers.min
  idx = numbers.index(small)
  copy = numbers.dup
  copy.delete_at(idx)
  copy
end
