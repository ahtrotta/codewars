def count_spec_digits(integer_list, digit_list)
  digs = integer_list.map(&:abs).map(&:digits).flatten.map(&:to_s).join
  digit_list.map do |dig|
    [dig, digs.count(dig.to_s)]
  end
end

integers_list =  [1, 1, 2, 3, 1, 2, 3, 4]
digits_list = [1, 3]

p count_spec_digits(integers_list, digits_list)
