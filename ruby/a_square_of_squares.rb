=begin

*** Understand the Problem ***

problem:
determine if the input is a square number (if it is the result of squaring another integer)

input(s): integer

output(s): bool

=============================================================================

*** Examples / Test Cases / Edge Cases ***

provided example(s):

test cases:

edge cases:

'bad' input:

=============================================================================

*** Data Structure(s) ***

data structure(s):


=============================================================================

*** Algorithm ***

algorithm:

- return false if negative or zero
- from 1 up to input number check whether squaring the number results in input

=end

def is_square(x)
  return false if x < 1
  1.upto(x).each { |n| return true if n**2 == x }
  false
end

def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end


