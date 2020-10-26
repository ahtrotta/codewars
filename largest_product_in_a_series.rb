def greatest_product(n)
  idx = 0
  max = 0

  loop do
    break if idx == n.length - 4
    prod = n[idx, 5].chars.map(&:to_i).inject(:*)
    max = prod if prod > max
    idx += 1
  end 

  max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
