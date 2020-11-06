def even_or_odd(s)
  even, odd = s.to_i.digits.partition(&:even?)

  case even.sum <=> odd.sum
  when -1  then 'Odd is greater than Even'
  when 1   then 'Even is greater than Odd'
  else          'Even and Odd are the same'
  end
end

p even_or_odd("12") == "Even is greater than Odd"
p even_or_odd("123") == "Odd is greater than Even"
p even_or_odd("112") == "Even and Odd are the same"
