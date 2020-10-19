# problem
# - make a class called SnakeLadders with method play(die1, die2)
#
# data structure
# - board
#   - hash of snakes and ladders
#   - each key is the square you land on and value is square you end up at

class SnakesLadders
  BOARD = { 2 => 38, 7 => 14, 8 => 31, 15 => 26, 16 => 6, 21 => 42, 
            28 => 84, 36 => 44, 46 => 25, 49 => 11, 51 => 67, 62 => 19, 
            64 => 60, 71 => 91, 74 => 53, 78 => 98, 87 => 94, 89 => 68, 
            92 => 88, 95 => 75, 99 => 80 }

  def initialize
    @player1 = 0
    @player2 = 0
    @turn = :p1
  end

  def play(die1, die2)
    return 'Game over!' if @player1 == 100 || @player2 == 100
    if @turn == :p1
      @player1 += die1 + die2
      @player1 = (100 - (@player1 % 100)) if @player1 > 100
      @turn = :p2 unless die1 == die2
      @player1 = BOARD[@player1] if BOARD[@player1]
      return 'Player 1 Wins!' if @player1 == 100
      "Player 1 is on square #{@player1}"
    else
      @player2 += die1 + die2
      @player2 = (100 - (@player2 % 100)) if @player2 > 100
      @turn = :p1 unless die1 == die2
      @player2 = BOARD[@player2] if BOARD[@player2]
      return 'Player 2 Wins!' if @player2 == 100
      "Player 2 is on square #{@player2}"
    end
  end
end
