def reverser(number)
  result = []

  until number == 0
    number, dig = number.divmod(10)
    result.unshift(dig)
  end

  result.map.with_index { |n, i| n * 10**i }.sum
end

p reverser(1234) == 4321
p reverser(4321) == 1234
p reverser(1001) == 1001
p reverser(1010) == 101
