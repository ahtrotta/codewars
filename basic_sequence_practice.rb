def sum_of_n(n)
  sum = 0
  arr = (0..(n.abs)).map { |i| val = (sum += i) }
  n < 0 ? arr.map { |num| num * -1 } : arr
end

p sum_of_n(3) == [0, 1, 3, 6]
p sum_of_n(-4) == [0, -1, -3, -6, -10]
p sum_of_n(1) == [0, 1]
p sum_of_n(0) == [0]
p sum_of_n(10) == [0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
