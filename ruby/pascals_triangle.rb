# input
#   - depth of triangle (how many rows to return)
#
# output
#   - flat array of values to the specified depth
#
# algorithm
#   - create array of arrays (array of rows of triangle)
#   - loop n number of times
#     - iterate through last level of triangle
#       - add the current and next values and add to new array
#       - break before reaching last element
#     - add 1 to beginning and end of new array
#     - add new array to master array
#   - flatten master array

def pascalsTriangle(n)
  return [1] if n == 1
  return [1, 1] if n == 2

  tri = [[1], [1, 1]]
  (n - 2).times do |_|
    row = [1]
    idx = 0
    loop do
      break if idx == (tri[-1].size - 1)
      row << tri[-1][idx] + tri[-1][idx + 1]
      idx += 1
    end
    tri << row + [1]
  end

  tri.flatten
end

p pascalsTriangle(1)
p pascalsTriangle(2)
p pascalsTriangle(6)

