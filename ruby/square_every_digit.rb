def square_digits(num)
  num.to_s.split('').map { |n| (n.to_i**2).to_s }.join.to_i
end
