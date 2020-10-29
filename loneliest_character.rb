# input
# - string of lowercase characters and strings
#
# output
# - array of characters surrounded by the most spaces on both sides
#
# algorithm
# - initialize a new_arr and counter
# - iterate through characters
#   - if letter
#     - add counter to new_arr 
#     - add letter to new_arr
#     - reset counter o 0
#   - if space, add 1 to counter
# - iterate through new_arr
#   - if character
#     - sum left and right elements and add character and sum to new array

def loneliest(s)
  new_arr = []
  counter = 0

  s.strip.each_char do |c|
    if ('a'..'z').include?(c)
      new_arr << counter
      counter = 0
      new_arr << c
    else
      counter += 1
    end
  end
  
  new_arr << 0

  counts = []
  idx = 0

  loop do
    el = new_arr[idx]
    if el.class == String
      spaces = new_arr[idx - 1] + new_arr[idx + 1]
      counts << [spaces, el]
    end
    idx += 1
    break if idx == new_arr.size
  end

  max = counts.sort!.last.first
  counts.select { |count, lett| count == max }.map(&:last)
end


p loneliest('a b  c')

