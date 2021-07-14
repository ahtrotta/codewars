=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- ALPHABET string 
- String#include?(sorted_string)

=end

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def solve(st)
  st = st.split('').sort.join
  ALPHABET.include?(st)
end

# test cases

p solve("abc") == true
p solve("abd") == false
p solve("dabc") == true
p solve("abbc") == false
