def find_short(s)
  s.split.map(&:length).min
end

p find_short('a short sentence')
