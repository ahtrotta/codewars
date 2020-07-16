def accum(s)
  arr = []
  s.split('').each_with_index do |c, i|
    arr << c.upcase + c.downcase * i
  end
  arr.join('-')
end

p accum('abcd')
