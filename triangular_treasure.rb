#def triangular(n)
#  tri = 1
#  count = 1
#
#  until count == n
#    tri += (count + 1)
#    count += 1
#  end
#
#  tri
#end

def triangular(n)
  return 0 if n < 1
  n * (n + 1) / 2
end

p triangular(2)
p triangular(4)
p triangular(20)
