=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

ALPHABET = ('a'..'z').to_a

def alphabet_position(text)
  num_str = text.chars.each_with_object('') do |c, str|
    if ALPHABET.include?(c.downcase)
      str << (ALPHABET.index(c.downcase) + 1).to_s + ' '
    end
  end
  num_str.strip
end

# test cases

puts 
