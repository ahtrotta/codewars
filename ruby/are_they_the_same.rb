def comp(array1, array2)
  return true if array1.empty? && array2.empty?
  return false if array1.empty? || array2.empty?
  array1.sort.map { |n| n**2 } == array2.sort
endO
