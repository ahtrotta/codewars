def wave(str)
  (0...str.length).map do |i|
    next if str[i] == ' '
    word = str.downcase
    word[i] = word[i].upcase
    word
  end.compact
end

p wave('hello')
p wave('two words')
