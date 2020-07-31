# input
#   - matrix
#   - array of arrays of integers
#
# output
#   - 'Try again!' if invalid, 'Finished!' if valid
#
# algorithm
#   - iterate through rows
#     - return 'Try again!' unless sorted array is equal to array with 1 thru 9
#   - iterate from 0 to 8
#     - make array from elements at num are equal to array with 1 thru 9
#   - create array of arrays representing the square regions
#     - iterate through rows
#       - add each third to a new array
#       - for iterations 3 and 6
#         - add new arrays to another new array
#         - re-start new arrays

def squares(board)
  regions = []
  first, second, third = [], [], []
  board.each_with_index do |row, i|
    first << row[0..2]
    second << row[3..5]
    third << row[6..8]
    if i == 2 || i == 5 || i == 8
      regions << first.flatten << second.flatten << third.flatten
      first, second, third = [], [], []
    end
  end
  regions
end

def columns(board)
  (0..8).map { |i| board.each_with_object([]) { |row, arr| arr << row[i] } }
end

def done_or_not(board)
  [board, columns(board), squares(board)].each do |matrix|
    matrix.each do |region|
      return 'Try again!' unless region.sort == (1..9).to_a
    end
  end
  'Finished!'
end

#p columns([[0, 0, 0, 1, 1, 1, 2, 2, 2],
#           [0, 0, 0, 1, 1, 1, 2, 2, 2],
#           [0, 0, 0, 1, 1, 1, 2, 2, 2],
#           [3, 3, 3, 4, 4, 4, 5, 5, 5],
#           [3, 3, 3, 4, 4, 4, 5, 5, 5],
#           [3, 3, 3, 4, 4, 4, 5, 5, 5],
#           [6, 6, 6, 7, 7, 7, 8, 8, 8],
#           [6, 6, 6, 7, 7, 7, 8, 8, 8],
#           [6, 6, 6, 7, 7, 7, 8, 8, 8]])
