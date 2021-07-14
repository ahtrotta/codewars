def iq_test(numbers)
  num = numbers.split.map(&:to_i).partition(&:even?).sort_by(&:size).first[0]
  numbers.split.index(num.to_s) + 1
end

p iq_test('2 4 7 8 10')
p iq_test('1 2 1 1')
