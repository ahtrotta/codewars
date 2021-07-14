=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def panagram?(str)
  alphabet_hash = ('a'..'z').map { |letter| [letter, 0] }.to_h
  new_str = str.downcase.delete('^[a-z]')
  new_str.each_char { |c| alphabet_hash[c] += 1 if alphabet_hash[c] }
  !alphabet_hash.any? { |_, count| count == 0 }
end

# test cases

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
