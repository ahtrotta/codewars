ALPHABET = ('a'..'z').to_a.join + ('A'..'Z').to_a.join

def pig_it(text)
  p_lat = text.split.map do |word|
    if word.chars.all? { |c| ALPHABET.include?(c) }
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
  end
  p_lat.join(' ')
end

p pig_it('Pig latin is cool')
p pig_it('Hello world !')
