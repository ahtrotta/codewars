def minimum_steps(numbers, value)
  sum = 0

  numbers.sort.each_with_index do |num, i|
    sum += num
    return i if sum >= value
  end
end

p minimum_steps([4,6,3], 7) == 1
p minimum_steps([10,9,9,8], 17) == 1
p minimum_steps([8,9,10,4,2], 23) == 3
p minimum_steps([19,98,69,28,75,45,17,98,67], 464) == 8
p minimum_steps([4,6,3], 2) == 0
