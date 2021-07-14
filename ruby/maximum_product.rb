def adjacent_element_product(array)
  array.each_cons(2).map { |arr| arr.inject(:*) }.max
end

p adjacent_element_product([5, 8]) == 40
p adjacent_element_product([1, 2, 3]) == 6
p adjacent_element_product([1, 5, 10, 9]) == 90
p adjacent_element_product([4, 12, 3, 1, 5]) == 48
p adjacent_element_product([5, 1, 2, 3, 1, 4]) == 6
p adjacent_element_product([3, 6, -2, -5, 7, 3]) == 21
p adjacent_element_product([9, 5, 10, 2, 24, -1, -48]) == 50
p adjacent_element_product([5, 6, -4, 2, 3, 2, -23]) == 30
p adjacent_element_product([-23, 4, -5, 99, -27, 329, -2, 7, -921]) == -14
p adjacent_element_product([5, 1, 2, 3, 1, 4]) == 6
p adjacent_element_product([1, 0, 1, 0, 1000]) == 0
p adjacent_element_product([1, 2, 3, 0]) == 6
