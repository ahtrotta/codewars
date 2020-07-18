def find_even_index(arr)
  (0...arr.size).each { |i| return i if arr[0...i].sum == arr[(i + 1)..-1].sum }
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1])
