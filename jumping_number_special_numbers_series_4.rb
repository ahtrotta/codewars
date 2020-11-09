def jumping_number(n)
  digs = n.digits
  last = digs.shift

  digs.each do |num|
    return 'Not!!' unless (num - last).abs == 1
    last = num
  end

  'Jumping!!'
end

p jumping_number(1) == "Jumping!!"
p jumping_number(7) == "Jumping!!"
p jumping_number(9) == "Jumping!!"
p jumping_number(23) == "Jumping!!"
p jumping_number(32) == "Jumping!!"
p jumping_number(79) == "Not!!"
p jumping_number(98) == "Jumping!!"
p jumping_number(8987) == "Jumping!!"
p jumping_number(4343456) == "Jumping!!"
p jumping_number(98789876) == "Jumping!!"
