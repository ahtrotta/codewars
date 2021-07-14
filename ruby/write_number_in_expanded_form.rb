def expanded_form(num)
  num.digits.map.with_index { |d, i| d * 10**i }.reject(&:zero?).reverse.join(' + ')
end

p expanded_form(70304)
