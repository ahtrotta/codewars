# algorithm
#   - make array of arrays representing columns
#     - iterate from 0 to 2 as index values
#       - iterate through rows of board
#         - accumulate values in each row at the index
#   - make array of arrays representing diagonals
#     - iterate from 0 to 2
#       - accumulate values at that index and negative index for each row
#   - iterate through all arrays and check for a winner
#   - also keep track if there are any zero values

def columns(board)
  (0..2).map { |i| board.map { |row| row[i] } }
end

def diagonals(board)
  (0..2).each_with_object([[], []]) do |i, arr|
    arr[0] << board[i][i]
    arr[1] << board[i][2 - i]
  end
end

def is_solved(board)
  full_board = true
  [board, columns(board), diagonals(board)].each do |array|
    array.each do |line|
      full_board = false if full_board && line.any?(0)
      return 1 if line.all?(1)
      return 2 if line.all?(2)
    end
  end
  full_board ? 0 : -1
end

p columns([[0, 1, 2],
           [0, 1, 2],
           [0, 1, 2]])

p diagonals([[0, 2, 1],
             [2, 0, 2],
             [1, 2, 0]])
