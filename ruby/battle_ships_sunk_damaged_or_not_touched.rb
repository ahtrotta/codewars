# input
# - board (array of arrays)
#   - 0 represents empty, 1-3 are ships (1-4 spaces long)
# - attacks (array of arrays)
#   - each element represents a coordinate on the board to attack
#
# output
# - hash of data
#   - sunk, damaged, not_touched, points
#   - points
#     - 1 pt for each sunk boat
#     - 0.5 pt for each hit boat
#     - -1 pt for each boat completely missed
#
# data structures
# - boats
#   - hash of boats, each value is an integer representing unhit spots
#   - { 1 => 2, 2 => 3 }
#
# algorithm
# - initialize hash of boats
#   - flatten board, count each number 1-3
# - iterate through attacks
#   - get value of board at attack
#   - update boats hash if hit
# - iterate through boats hash
#   - update results hash

require 'pry'

def damaged_or_sunk(board, attacks)
  boat_nums = board.flatten.uniq.sort[1..-1]
  boats = boat_nums.each_with_object({}) do |boat, hsh|
    hsh[boat] = [board.flatten.count(boat)] * 2
  end

  attacks.each do |x, y|
    val = board[board.size - y][x - 1]
    boats[val][0] -= 1 if boat_nums.include?(val)
  end

  results = { 'sunk' => 0, 'damaged' => 0, 'not_touched' => 0, 'points' => 0 }

  boats.each do |(boat, (unhit, length))|
    if unhit == 0
      results['sunk'] += 1
    elsif unhit != length
      results['damaged'] += 1
    else
      results['not_touched'] += 1
    end
  end
    
  results['points'] = results['sunk'] + results['damaged'].fdiv(2) - results['not_touched']
  results
end

board = [[0,0,0,2,2,0],
         [0,3,0,0,0,0],
         [0,3,0,1,0,0],
         [0,3,0,1,0,0]]
         
attacks = [[2, 1], [1, 3], [4, 2]]

p damaged_or_sunk(board, attacks)
