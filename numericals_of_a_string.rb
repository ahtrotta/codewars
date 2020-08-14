# algorithm 
#   - initialize a counts hash with default value of 0
#   - iterate through characters of input string (map)
#     - add 1 to count of current character in counts hash
#     - return the counts value for the transformation

def numericals(str)
  counts = Hash.new(0)
  cnt_arr = str.chars.map do |c|
    counts[c] += 1
    counts[c]
  end
  cnt_arr.join
end
