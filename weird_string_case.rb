def weirdcase(string)
  arr = string.split.map do |word|
    word.chars.map.with_index { |c, i| i.even? ? c.upcase : c.downcase }.join
  end
  arr.join(' ')
end

p weirdcase('Weird string case')
