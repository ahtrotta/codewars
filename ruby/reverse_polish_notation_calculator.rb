# input
#   - string of numbers and operators, each separated by a space
#
# output
#   - number (integer or float)
#
# algorithm
#   - split string into array
#   - iterate through array
#     - if a number add to register and push current register to stack
#     - if operator proceed with register and top of stack
require 'pry'

def is_num?(str)
  Float(str) != nil rescue false
end

def calc(expr)
  seq = expr.split
  stack = []
  reg = 0
  seq.each do |el|
    if is_num?(el)      
      stack << reg if reg
      reg = el.to_f
    elsif el == '+'        then reg += stack.pop
    elsif el == '-'        then reg = stack.pop - reg
    elsif el == '*'        then reg *= stack.pop 
    elsif el == '/'        then reg = stack.pop / reg
    end
  end
  reg
end

p calc(%q(5 1 2 + 4 * + 3 -))
