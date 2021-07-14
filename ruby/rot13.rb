=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate through characters
  - if alphabetic

=end

ALPHABET = ('a'..'z').to_a

def cipher(char)
  if char == char.downcase
    ALPHABET[(ALPHABET.index(char) + 13) % 26]
  else
    ALPHABET[(ALPHABET.index(char.downcase) + 13) % 26].upcase
  end
end

def rot13(str)
  arr = str.chars.map do |c|
    ALPHABET.include?(c.downcase) ? cipher(c) : c
  end
  arr.join
end

# test cases

p rot13("test")
#p "Grfg" == rot13("Test")
