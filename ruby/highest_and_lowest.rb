def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

p high_and_low('1 2 3 4 5')
