def diamond(n)
  return nil if n.even? || n < 1
  bottom = (0..(n / 2)).map do |i|
    ' ' * i + '*' * (n - 2 * i)
  end
  (bottom.last(n / 2).reverse + bottom).join("\n") + "\n"
end

p diamond(5)
