#def zeros(n)
#  twnty_fvs, rem = n.divmod(25)
#  fives, _ = n.divmod(5)
#  fives + twnty_fvs
#end 

def zeros(n)
  power = 1
  sum = 0
  until (current = n / 5**power) == 0
    sum += current
    power += 1
  end
  sum
end

p zeros(6)
p zeros(12)
p zeros(30)
