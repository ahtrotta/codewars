def sort_array(source_array)
  odd_sort = source_array.select(&:odd?).sort
  odd_count = 0
  source_array.each_with_object([]) do |el, arr|
    if el.odd?
      arr << odd_sort[odd_count]
      odd_count += 1
    else
      arr << el
    end
  end
end

p sort_array([5, 3, 2, 8, 1, 4])
