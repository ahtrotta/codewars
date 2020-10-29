# input
# - array of integers representing rope lengths
#
# output
# - array of integers representing number of ropes remaining after each step
#
# algorithm
# - initialize results array to current number of ropes
# - loop
#   - get minimum from array
#   - subtract minimum from each element in array
#   - remove all 0 lengths
#   - add array size to results array
#   - break if array is empty

def cut_the_ropes(arr)
  results = [arr.size]

  loop do
    min = arr.min
    arr = arr.map { |n| n - min }
    arr.select! { |n| n > 0 }
    break if arr.empty?
    results << arr.size
  end

  results
end

p cut_the_ropes([3, 3, 2, 9, 7])
