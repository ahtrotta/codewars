# input
#   - string (camelCase)
#
# output
#   - string (kebab-case)
#   - only lowercase letters
#
# algorithm
#   - initialize out_arr to empty array
#   - initialize word to empty string
#   - iterate through characters
#     - check if character is lowercase ('a'..'z').include?(c)
#       - if so add character to word string
#       - if not add word to out_arr, re-assign word to current char lowercased
#   - add word to out_arr
#   - join out arr on '-'

def kebabize(str)
  out_arr = []
  word = ''

  str.each_char do |c|
    if ('a'..'z').include?(c)
      word << c
    elsif ('A'..'Z').include?(c)
      out_arr << word
      word = c.downcase
    end
  end

  out_arr.append(word).reject(&:empty?).join('-')
end

p kebabize('camelsHaveThreeHumps')
p kebabize('4Sqxsa')
