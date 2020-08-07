# problem
#   - give a string of names and a weights array, determine the winner
#
# rules
#   - (name length + sum of letter values) * weight
#
# input
#   - string of comma-separated names
#   - array of weights associated with names
#   - rank to output
#
# output
#   - name associated with the given rank (n)
#
# algorithm
#   - split input string into array of names
#   - transform each name into array with name and 'som' value (map)
#     - zip array of names with weights then transform
#     - split each name into lowercase chars
#       - convert char to integer (c.ord - 96)
#       - sum all integers
#   - sort by weights
#   - return name at index n - 1

def rank(st, we, n)
  return 'No participants' if st.empty?
  return 'Not enough participants' if n > we.length
  arr = st.split(',').zip(we).map do |(name, weight)|
    val = name.downcase.chars.map { |c| c.ord - 96 }.sum
    [name, (val + name.length) * weight]
  end
  arr.sort! do |a, b|
    if a[1] == b[1]
     a[0] <=> b[0]
    else
     b[1] <=> a[1]
    end 
  end
  arr[n - 1][0]
end

p rank("Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin", [4, 2, 1, 4, 3, 1, 2], 4)
p rank("Lagon,Lily", [1, 5], 2)
p rank("Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin", [4, 2, 1, 4, 3, 1, 2], 8)
p rank("", [4, 2, 1, 4, 3, 1, 2], 6)
