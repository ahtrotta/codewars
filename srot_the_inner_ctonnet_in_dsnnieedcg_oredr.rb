# problem
#   - sort the inner content of each word in a string in descending order
#   - inner content is all letters except the first and last
#
# input
#   - string of words 
#     - only contains whitespace and lowercase-letters
#
# output
#   - string with sorted inner content of each word
#
# algorithm
#   - split input on the space character
#   - iterate through the array (map)
#     - create new sorted string
#       - split word into characters
#         - slice from index 1 to -2 then sort and add to first and last characters
#   - join array on space character

def sort_the_inner_content(words)
  sroted = words.split.map do |word|
    arr = word.chars
    arr.size == 1 ? arr.first : arr.first + arr[1..-2].sort.reverse.join + arr.last
  end
  sroted.join(' ')
end

p sort_the_inner_content('sort the inner content in descending order')
p sort_the_inner_content('sort e inner content in descending order')
