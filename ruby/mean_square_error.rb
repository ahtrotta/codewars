# problem
#   - compute the mean square error
#
# input
#   - two arrays of numbers of equal length
#
# output
#   - number representing the mean square error
#
# algorithm
#   - zip the two arrays
#     - map to the diff squared
#       - sum the values in the resultant array and divide by array size

def solution(arr1, arr2)
  (arr1.zip(arr2).map { |a| (a.first - a.last)**2 }.sum).to_f / arr1.size
end

p solution([1, 2, 3], [4, 5, 6])
