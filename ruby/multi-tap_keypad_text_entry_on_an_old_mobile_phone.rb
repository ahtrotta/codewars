# input
#   - string (upper and lower case letters)
#   - ignore punctuation
#
# output
#   - number of button presses
#
# algorithm
#   - generate array of arrays
#     - each sub_array represents a key and the elements are the characters
#
#   - remove non-alphanumeric characters from input string and upcase
#   - split input into characters and iterate through
#     - iterate through array of arrays and find charcter and add button presses to a sum

BUTTONS = { 1 => '1', 2 => 'ABC2', 3 => 'DEF3', 4 => 'GHI4', 5 => 'JKL5', 
            6 => 'MNO6', 7 => 'PQRS7', 8 => 'TUV8', 9 => 'WXYZ9', 0 => ' 0' }

def presses(phrase)
  sum = 0
  phrase.upcase.delete('^ A-Z0-9').chars.each do |c|
    BUTTONS.values.each do |str|
      if str.index(c)
        sum += (str.index(c) + 1) 
        next
      end
    end
  end
  sum
end

p presses('LOL')
