def capitalize(s)
  first = s.chars.map.with_index do |c, i|
    i.even? ? c.upcase : c.downcase
  end
  [first.join, first.join.swapcase]
end

p capitalize('abcdef')
