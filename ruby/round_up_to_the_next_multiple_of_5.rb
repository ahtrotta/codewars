def round_to_next_5(n)
  n += 1 until n % 5 == 0
  n
end

p round_to_next_5(0)
p round_to_next_5(5)
p round_to_next_5(1)
