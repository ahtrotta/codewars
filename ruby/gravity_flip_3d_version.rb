# input
# - matrix (array of arrays of integers)
#   - represents a series of stacked cubes (integer is cube height)
# - direction of gravity change
#
# output
# - matrix (array of arrays of integers)
# 
# algorithm
# - when direction is 'R' for right
#   - return all arrays sorted from lowest to highest (sort)
# - when direction is 'L' for left
#   - return all arrays sorted from highest to lowest (sort.reverse)
# - when direction is 'U' or 'D'
#   - get each column and store as an array of arrays
#     - initialize columns array of arrays (size of each row arrays)
#     - iterate through rows
#       - iterate through elements (with index)
#         - add element to appropriate array in columns
#   - sort each column
#   - re-assemble the matrix
#     - do the same as above

class Test
  def self.assert_equals(obj1, obj2)
    res = obj1 == obj2
    p res
    res
  end
end

def transpose(matrix)
  result = []
  matrix.first.size.times { |_| result << Array.new }

  matrix.each do |row|
    row.each_with_index { |el, i| result[i] << el }
  end

  result
end

def flip(dir, box)
  if dir == 'R'
    box.map(&:sort)
  elsif dir == 'L'
    box.map { |row| row.sort.reverse }
  else
    cols = transpose(box)
    dir == 'U' ? cols.map! { |col| col.sort.reverse } : cols.map!(&:sort)
    transpose(cols)
  end
end

BOX = [ [1, 3, 2],
        [4, 5, 1],
        [6, 5, 3],
        [7, 2, 9] ]

Test.assert_equals(flip('R', BOX),
  [ [1, 2, 3],
    [1, 4, 5],
    [3, 5, 6],
    [2, 7, 9] ])

Test.assert_equals(flip('L', BOX),
  [ [3, 2, 1],
    [5, 4, 1],
    [6, 5, 3],
    [9, 7, 2] ])

Test.assert_equals(flip('U', BOX),
  [ [7, 5, 9],
    [6, 5, 3],
    [4, 3, 2],
    [1, 2, 1] ])

Test.assert_equals(flip('D', BOX),
  [ [1, 2, 1],
    [4, 3, 2],
    [6, 5, 3],
    [7, 5, 9] ])
