# input
#   - t: integer representing max distance
#   - k: integer representing number of towns to visit
#   - ls: array of distances between towns
#
# output
#   - the 'best sum
#     - the biggest possible sum of k distances less than or equal to the limit
#
# algorithm
#   - create all possible combinations of k distances from ls
#   - sum all combinations
#   - iterate through sorted list and return first one that is less than or equal to the limit

def choose_best_sum(t, k, ls)
  ls.combination(k).to_a.map(&:sum).sort.reverse.each do |sum|
    return sum if sum <=t
  end
  nil
end

p choose_best_sum(174, 3, [50, 55, 57, 58, 60])
