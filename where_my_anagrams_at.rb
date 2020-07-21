require 'pry'

def anagrams(word, words)
  words.select do |str|
    word.chars.sort == str.chars.sort
  end
end

p anagrams('abba', %w(aabb abcd bbaa dada))
