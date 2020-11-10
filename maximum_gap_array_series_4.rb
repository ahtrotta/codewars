def max_gap(numbers)
  numbers = numbers.sort
  last = numbers.shift
  max_gap = 0

  numbers.each do |n|
    gap = (n - last).abs
    max_gap = gap if gap > max_gap
    last = n
  end

  max_gap
end

p max_gap([13,10,2,9,5]) == 4
p max_gap([13,3,5]) == 8
p max_gap([24,299,131,14,26,25]) == 168
p max_gap([-3,-27,-4,-2]) == 23
p max_gap([-7,-42,-809,-14,-12]) == 767
p max_gap([12,-5,-7,0,290]) == 278
p max_gap([-54,37,0,64,-15,640,0]) == 576
p max_gap([130,30,50]) == 80
p max_gap([1,1,1]) == 0
p max_gap([-1,-1,-1]) == 0
