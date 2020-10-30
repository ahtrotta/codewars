def next_num(n)
  n < 10 ? n * 2 : n + n.digits.reject(&:zero?).reduce(:*)
end

def convergence(n)
  base = [1]
  test = [n]

  loop do
    next_base = next_num(base.last)
    next_test = next_num(test.last)

    if next_base == next_test
      break test.size
    elsif base.include?(next_test)
      break test.size
    elsif test.include?(next_base)
      break test.index(next_base)
    else
      base << next_base
      test << next_test
    end
  end
end

p convergence(3) == 5
p convergence(5) == 6
p convergence(10) == 5
p convergence(15) == 2
p convergence(500) == 29
p convergence(5000) == 283
