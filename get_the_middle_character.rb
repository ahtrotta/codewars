def get_middle(s)
  s.length.odd? ? s[s.length / 2] : s[(s.length / 2) - 1, 2]
end

p get_middle('testing')
p get_middle('test')
