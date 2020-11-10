def tidy_number(n)
  n_digs = n.digits
  last = n_digs.shift

  n_digs.each do |num|
    return false if last < num
    last = num
  end

  true
end

p tidy_number(12) == true
p tidy_number(102) == false
p tidy_number(9672) == false
p tidy_number(2789) == true
p tidy_number(2335) == true
