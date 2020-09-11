def remove_smallest(n, arr)
  return [] if n > arr.size
  arr_sort = arr.sort
  arr_copy = arr.dup
  until n < 1
    arr_copy.delete_at(arr_copy.index(arr_sort.shift))
    n -= 1
  end
  arr_copy
end

p remove_smallest(-10  , [1,2,3,4,5]) == [1,2,3,4,5]
p remove_smallest(0    , [1,2,3,4,5]) == [1,2,3,4,5]
p remove_smallest(2    , [5,3,2,1,4]) == [5,3,4]
p remove_smallest(3    , [5,3,2,1,4]) == [5,4]
p remove_smallest(3    , [1,2,3,4,5]) == [4,5]
p remove_smallest(5    , [1,2,3,4,5]) == []
p remove_smallest(9    , [1,2,3,4,5]) == []
