# problem
#   - create a square 'board' of fractions (dimensions n x n)
#   - determine the sum of all the fractions on the board
#   - each row has sequence (1 / n), (2 / (n + 1)), (3 / (n + 2)), etc
#
# input
#   - integer representing dimensions of board
#
# output
#   - sum of all fractions on board
#
# algorithm
#   - create board
#     - initialize board
#     - iterate from 2 to (n + 1) (den)
#       - initialize a row
#       - iterate from 1 to 8 (num)
#         - add [num, den] to row
#         - increment num and den by 1 each
#
# algorithm2
#   - initialize sum to 0
#   - iterate from 2 to (n + 1) (den)
#     - zip the range (1..n) with (den...(den + n))
#     - map the row to rational numbers
#     - add the sum of the row to running total
#   - return the sum
#     - if denom is 1 return [integer]
#     - else return array with [num, den]

#def game(n)
#  rows = (2..(n + 1)).map do |den|
#    (1..n).zip(den...(den + n)).map { |n, d| Rational(n, d) }.sum
#  end
#
#  num, den = rows.sum.numerator, rows.sum.denominator
#  den == 1 ? [num] : [num, den]
#end

# algorithm3
#   - initialize sum to 0
#   - iterate from 2 to (n + 1) (den)
#     - initialize current_den to den
#     - iterate from 1 to n (num)
#       - add Rational(num, den) to sum
#       - increment both num and den
#   - return sum

#def game(n)
#  board = {}
#  start_den = 2
#
#  loop do
#    break if start_den == n + 2
#    den = start_den
#    num = 1
#
#    loop do
#      break if num == n + 1
#      frac = Rational(num, den)
#
#      if board.has_key?(frac.denominator)
#        board[frac.denominator] << frac
#      else
#        board[frac.denominator] = [frac]
#      end
#
#      den += 1
#      num += 1
#    end
#
#    start_den += 1
#  end
#
#  sum = board.map { |den, arr| arr.sum }.sum
#  num, den = sum.numerator, sum.denominator
#  den == 1 ? [num] : [num, den]
#end

def game(n)
  frac = Rational(n.to_f**2 / 2)
  num, den = frac.numerator, frac.denominator
  den == 1 ? [num] : [num, den]
end

p game(8)
p game(1)
