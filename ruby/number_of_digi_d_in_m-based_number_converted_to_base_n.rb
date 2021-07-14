def count_digit(number, digit, base=10, from_base=10)
  number.to_i(from_base).to_s(base).count(digit)
end

p count_digit("133", "3") == 2
p count_digit("10", "a", 11) == 1
p count_digit("1100101110101", "d", 15, 2) == 1
