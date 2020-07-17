def duplicate_encode(word)
  hsh = word.chars.each_with_object(Hash.new(0)) { |c, h| h[c.downcase] += 1 }
  word.chars.each_with_object('') do |c, s| 
    hsh[c.downcase] == 1 ? s << '(' : s << ')'
  end
end

p duplicate_encode('recede')
