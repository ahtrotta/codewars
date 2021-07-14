# input
# - an array of times that a one-minute alarm will go off
#
# output
# - the maximum time interval between alarm states
#
# algorithm
# - initialize max_diff to 0
# - convert times to minutes
# - sort times
# - iterate through times
#   - subtract two sequential times (diff)
#   - update max_diff if the diff is larger than the max_diff 

MINS_PER_DAY = 24 * 60

def minutes(str)
  hrs, mins = str.split(':').map(&:to_i)
  (hrs * 60) + mins
end

def time_string(mins)
  hrs, mins = mins.divmod(60)
  sprintf('%02d:%02d', hrs, mins)
end

def solve(arr)
  max_diff = 0
  mins = arr.map { |t| [minutes(t), minutes(t) + 1] }.flatten.sort
  mins << mins.first
  idx = 0

  loop do
    diff = (mins[idx + 1] - mins[idx]) % MINS_PER_DAY
    max_diff = diff if diff > max_diff
    idx += 1
    break if idx == mins.size - 1
  end

  time_string(max_diff)
end

p solve(['14:51'])
p solve(['23:00', '04:22', '18:05', '06:24'])
