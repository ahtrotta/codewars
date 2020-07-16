def digital_root(n)
  n = n.to_s.split('').map(&:to_i).inject(:+) until n < 10
  n
end

p digital_root(942)
