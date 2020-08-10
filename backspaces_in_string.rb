# problem
#   - given a string with '#' symbols acting like a delete function, process an input string
#
# input
#   - string with '#' symbols
#
# output
#   - processed string
#
# algorithm
#   - initialize a stack (array)
#   - iterate over the characters of the input string
#     - if character is equal to '#'
#       - remove last stack element (pop)
#     - otherwise
#       - add character to the stack
#   - return stack joined on empty string

def clean_string(string)
  string.chars.each_with_object([]) { |c, stk| c == '#' ? stk.pop : stk << c }.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
