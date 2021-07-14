def persistence(n)
  count = 0
  until n < 10
    n = n.digits.reduce(:*)
    count += 1
  end
  count
end

p persistence(39)
