def peak(arr)
  (0...arr.size).each do |i|
    return i if arr[0...i].sum == arr[(i + 1)..-1].sum
  end
  -1
end

p peak([1,2,3,5,3,2,1]) == 3
p peak([1,12,3,3,6,3,1]) == 2
p peak([10,20,30,40]) == -1
