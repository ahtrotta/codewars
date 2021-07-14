def narcissistic?(value)
  value.digits.map { |n| n**(value.digits.size) }.inject(:+) == value
end

p narcissistic?(5)
p narcissistic?(153)
p narcissistic?(1633)
