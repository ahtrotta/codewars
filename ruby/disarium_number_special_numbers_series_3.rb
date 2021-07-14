def disarium_number(n)
  dig_pow = n.digits.reverse.map.with_index { |num, i| num**(i + 1) }
  n == dig_pow.sum ? 'Disarium !!' : 'Not !!'
end

p disarium_number(89) == "Disarium !!"
p disarium_number(564) == "Not !!"
p disarium_number(1024) == "Not !!"
p disarium_number(135) == "Disarium !!"
p disarium_number(136586) == "Not !!"
