# problem
# - figure out how large of a beer pyramid can be made
# 
# input
# - money (integer)
# - price of beer (integer)
#
# output
# - number of levels that can be constructed
# 
# algorithm
# - calculate number of beers money / price of beer
# - set counter to 1
# - loop
#   - subtract counter**2 from number of beers
#   - break counter if number of beers is negative or 0
#   - add 1 to counter

require 'pry'

def beeramid(bonus, price)
  beers = bonus / price
  levels = 1
  
  loop do
    beers -= levels**2
    break (levels - 1) if beers < 0
    levels += 1
  end
end

p beeramid(1500, 2)
p beeramid(5000, 3)
p beeramid(9, 2)
p beeramid(21, 1.5)
