def fctrl(num)
  num == 0 ? 1 : (1..num).inject(:*)
end

def choose(n, k)
  k > n ? 0 : fctrl(n) / (fctrl(k) * fctrl(n - k))
end

p choose(1,1)==1
p choose(5,4)==5
p choose(10,5)==252
p choose(10,20)==0
p choose(52,5)==2598960
