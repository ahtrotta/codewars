# input
#   - fighters (array of two arrays of six strings representing fighters names)
#   - position (array of two integers representing initial position)
#   - moves (array of strings that represent movements for the cursor)
#
# output
#   - array of strings with character names that were selected during moves
#
# algorithm
#   - iterate through moves array
#     - if up
#       - if in top row
#         - position doesn't change
#         - add current fighter to output array
#       - else
#         - move up one row
#         - add current fighter to ouput array
#     - if down
#       - if bottom row
#         - position doesn't change
#         - add current fighter to output array
#       - else
#         - move down one row
#         - add current fighter to output
#     - if left or right
#       - move left or (use modulo to move from beginning to end or vice versa)
  
fighters = [
  ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
  ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]
  
def streetFighterSelection(fighters, position, moves)
  moves.each_with_object([]) do |move, out|
    row, column = position
    case move
    when 'up'     then row -= 1 if row == 1
    when 'down'   then row += 1 if row == 0
    when 'left'   then column = (column - 1) % 6
    when 'right'  then column = (column + 1) % 6
    end
    out << fighters[row][column]
    position = [row, column]
  end
end

p streetFighterSelection(fighters, [0, 0], %w(up left right left left))
