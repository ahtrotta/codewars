def array_leaders(numbers)
  numbers = numbers.reverse
  sum = numbers.shift

  numbers.each_with_object(sum > 0 ? [sum] : []) do |num, leaders|
    leaders.unshift(num) if num > sum
    sum += num
  end
end

p array_leaders([1, 2, 3, 4, 0]) == [4]
p array_leaders([16, 17, 4, 3, 5, 2]) == [17, 5, 2]
p array_leaders([-1, -29, -26, -2]) == [-1]
p array_leaders([-36, -12, -27]) == [-36, -12]
p array_leaders([5, -2, 2]) == [5, 2]
p array_leaders([0, -1, -29, 3, 2]) == [0, -1, 3, 2]
