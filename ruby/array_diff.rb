def array_diff(a, b)
  a.each_with_object([]) do |el, arr|
    arr << el unless b.include?(el)
  end
end

p array_diff([1, 2], [1])
