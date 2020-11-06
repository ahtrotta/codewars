#def least_larger(a, i)
#  max = a.max
#  num = a[i]
#
#  until num > max
#    num += 1
#    idx = a.index(num)
#    return idx if idx
#  end
#
#  -1
#end

def least_larger(a, i)
  a.index(a.select { |n| n > a[i] }.min) || -1
end

p least_larger([4, 1, 3, 5, 6], 0) ==  3
p least_larger([4, 1, 3, 5, 6], 4) == -1    
p least_larger([1, 3, 5, 2, 4], 0) ==  3
