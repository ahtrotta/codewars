# problem
#   - give two cells on a standard chess board, determine if they have the same color
#
# input
#   - two cells (letter (a-h), number (1-8))
#
# output
#   - boolean
#
# algorithm
#   - for 'aceg' odd is black, even is white
#   - for 'bdfh' odd is white, even is black
#   - split each cell into characters
#   - determine the color for each cell
#     - see above
#   - return true if same false if not

def get_color(cell)
  col, row = cell.chars
  if 'ACEG'.include?(col)
    row.to_i.odd? ? 'black' : 'white'
  else
    row.to_i.odd? ? 'white' : 'black'
  end
end

#p get_color('A1') == 'black'
#p get_color('C3') == 'black'
#p get_color('F7') == 'white'

def chessboard_cell_color(cell1, cell2)
  get_color(cell1) == get_color(cell2) 
end
