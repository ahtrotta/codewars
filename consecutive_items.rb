def consecutive(arr, a, b)
  (0...arr.size).each { |i| return true if arr[i, 2].sort == [a, b].sort }
  false
end

p consecutive([1, 3, 5, 7], 3, 7) == false
p consecutive([1, 3, 5, 7], 3, 1) == true
p consecutive([1, 6, 9, -3, 4, -78, 0], -3, 4) == true
