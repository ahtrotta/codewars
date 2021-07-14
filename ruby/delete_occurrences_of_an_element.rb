def delete_nth(order, max_e)
  count = Hash.new(0)
  order.each_with_object([]) do |el, arr|
    arr << el if count[el] < max_e
    count[el] += 1
  end
end

p delete_nth([20, 37, 20, 21], 1)
p delete_nth([1, 1, 3, 3, 7, 2, 2, 2, 2], 3)
