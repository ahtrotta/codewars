def dig_pow(n, p)
  target = n.digits.reverse.map.with_index { |dig, pow| dig**(pow + p) }.sum
  k = 1
  until k * n > target
    return k if k * n == target
    k += 1
  end
  -1
end

p dig_pow(89, 1)
p dig_pow(92, 1)
p dig_pow(695, 2)
p dig_pow(46288, 3)
