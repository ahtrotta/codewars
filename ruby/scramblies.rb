# count characters in s2
# count characters in s1
# return true if all characters in s2 have larger count in s1

def lett_count(s)
  s.chars.uniq.each_with_object(Hash.new(0)) { |c, h| h[c] = s.count(c) }
end

def scramble(s1, s2)
  s1_counts = lett_count(s1)
  lett_count(s2).all? do |char2, val2|
    val2 <= s1_counts[char2]
  end
end

p scramble('rkqodlw', 'world')
