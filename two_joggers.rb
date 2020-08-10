# input
#   - lengths of laps of Charles and Bob (two integers)
#
# output  
#   - number of laps each person needs to complete to meet
#     - they are running the same speed
#
# scratch
#   - distance = laps * lap distance
#   - ch_dis * ch_laps = b_dis * b_laps
#
# algorithm
#   - determine which lap is smaller distance
#   - initialize a multiplier to 1
#   - loop
#     - check if sm_lap * mult % lg_lap is equal to 0
#       - if true, return (mult * sm_lap) / lg_lap
#     - check if lg_lap % (sm_lap * mult) is equal to 0
#       - if true, return lg_lap / (mult * sm_lap)
#     - add 1 to multiplier

def nbr_of_laps(x, y)
  sm_lap, lg_lap = [x, y].sort
  reverse = [x, y] != [x, y].sort
  mult = 1
  laps = nil

  loop do
    if (sm_lap * mult) % lg_lap == 0
      laps = [mult, (mult * sm_lap) / lg_lap]
      break
    elsif lg_lap % (sm_lap * mult) == 0
      laps = [mult, lg_lap / (mult * sm_lap)]
      break
    else
      mult += 1
    end
  end

  reverse ? laps.reverse : laps 
end

p nbr_of_laps(5, 3)
p nbr_of_laps(4, 6)
p nbr_of_laps(5, 5)
