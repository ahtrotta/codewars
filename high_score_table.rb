class HighScoreTable
  attr_reader :scores

  def initialize(limit)
    @limit = limit
    reset
  end

  def reset
    @scores = []
  end

  def update(score)
    @scores.push(score).sort!.reverse!
    @scores.pop if @scores.size > @limit
  end
end

highScoreTable = HighScoreTable.new(3)
p highScoreTable.scores == [] # evaluates to True
highScoreTable.update(10)
p highScoreTable.scores == [10]
highScoreTable.update(8)
highScoreTable.update(12)
highScoreTable.update(5)
highScoreTable.update(10)
p highScoreTable.scores == [12, 10, 10]
highScoreTable.reset()
p highScoreTable.scores == []
