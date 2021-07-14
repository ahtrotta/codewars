=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

ALPHABET = ('a'..'z').to_a

def high(x)
  score, idx = [0, 0]
  x.split.each_with_index do |word, i|
    val = word.chars.map { |c| ALPHABET.index(c) + 1 }.sum
    if val > score 
      score, idx = val, i 
    elsif val == score
      score, idx = val, i if i < idx
    end
  end
  x.split[idx]
end

# test cases

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
