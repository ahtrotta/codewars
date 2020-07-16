def descending_order(n)
  n.to_s.split('').sort.reverse.join.to_i
end

p descending_order(42145)
