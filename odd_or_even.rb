# input
#   - array of integers
#
# output
#   - string
#     - 'odd' if sum of integers is odd
#     - 'even' if sum of integers is even
#
# algorithm
#   - sum array elements
#   - check whether odd or even

def odd_or_even(array)
  array.sum.odd? ? 'odd' : 'even'
end
