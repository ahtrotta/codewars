# algorithm
#   - repeat power number of times
#     - multiply base by itself
#     - reassign base to the last digit of result

def last_digit(n1, n2)
  base = n1
  (n2 - 1).times do |_|
    base = (n1 * base).digits.first
  end
  base
end

p last_digit(9, 7)
p last_digit(4, 2)
