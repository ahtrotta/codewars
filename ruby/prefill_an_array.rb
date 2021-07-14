# problem
#   - create a function that prefills an array with the n elements, all with the same value v
#
# input
#   - n: the size of the desired array
#   - v: the object to fill the array with
#
# algorithm
#   - check if n is valid
#     - if class is Integer
#       - throw TypeError if less than 0
#     - if String
#       - if converting to integer 
#   - multiplte a single element array with v times n

def is_number?(str)
  true if Float(str) rescue false
end

def prefill(n, v = 'undefined')
  if n.class == Integer
    raise TypeError, "#{n} is invalid" if n < 0
    [v] * n
  elsif n.class == String
    raise TypeError, "#{n} is invalid" unless is_number?(n)
    [v] * n.to_i
  end
end
