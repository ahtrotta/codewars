=begin

*** Understand the Problem ***

problem:
Count distinct case-insensitive alphanumeric digits that occur more than once in the
input string. Input string only has alphanumeric characters.

input(s): string consisting of uppercase/lowercase letters and numbers

output(s): integer

notes: only return the most repeats

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

- split string into array of characters
- remove non-unique characters
- iterate through array and count occurences of each character


=end

def duplicate_count(text)
  count = 0
  text.downcase.chars.uniq.each do |c|
    num = text.downcase.count(c)
    if num > 1 && num > count
      count = num
    end
  end
  count
end

puts duplicate_count('abcde') == 0
puts duplicate_count('aabbcde') == 2


