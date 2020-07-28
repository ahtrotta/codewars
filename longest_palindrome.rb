# input
#   - string of alphanumeric characters (spaces?)
#
# output
#   - number of characters in longest palindrome substring
#
# algorithm
#   - find all substrings
#     - iterate through characters
#       - iterate through remaining characters
#         - create substring and add to array
#   - sort substrings by length (large to small)
#   - iterate through substrings
#     - return the first substring that is a palindrome


def substrings(str)
  idx1 = 0
  idx2 = 0
  substrings = []

  loop do
    break if idx1 == str.length

    loop do
      break if idx2 == str.length
      substrings << str[idx1..idx2]
      idx2 += 1
    end

    idx1 += 1
    idx2 = idx1
  end
  
  substrings.uniq
end

def longest_palindrome(s)
  return 0 if s.empty?
  substrings(s).sort { |a, b| b.length <=> a.length }.each do |sub_str|
    return sub_str.length if sub_str == sub_str.reverse
  end
end

p longest_palindrome('hello')
