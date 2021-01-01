VOWELS = { 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5 }

def encode(s)
  s.chars.map { |char| char =~ /[aeiou]/ ? VOWELS[char] : char }.join
end

def decode(s)
  s.chars.map { |char| VOWELS.values.include?(char.to_i) ? VOWELS.key(char.to_i) : char }.join
end

p encode('hello') == 'h2ll4'
p encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
p encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
p decode('h2ll4') == 'hello'
