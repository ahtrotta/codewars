=begin

*** Understand the Problem ***

problem:
given a signature (array with 3 integers) and a number n, return a new array of length
n where each number is the sum of the previous three numbers

input(s):

output(s):

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

- until arr.size == number
  - add sum of previous three to array


=end

def tribonacci(signature, n)
  if n < 4
    signature[0, n]
  else
    until signature.size == n
      signature << signature[-3, 3].sum
    end
    signature
  end
end

p tribonacci([1, 1, 1], 10)
