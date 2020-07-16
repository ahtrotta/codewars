def find_outlier(integers)
  even, odd = integers.partition(&:even?)
  even.size == 1 ? even.first : odd.first
end


p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
