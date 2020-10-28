# input
# - array of arrays
#
# output
# - integer representing number of unique combinations taking one element from each sub-array
#
# algorithm
# - 

def solve(arr)
  arr.map { |el| el.uniq.size }.inject(:*)
end

p solve([[1, 2, 3], [3, 4, 6, 6, 7], [8, 9, 10, 12, 5, 6]])
