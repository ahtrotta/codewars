def max_sequence(arr)
  return arr.sum if arr.all? { |n| n >= 0 }
  return 0 if arr.all? { |n| n < 0 }

  sub_arrs = []
  i1 = 0

  loop do
    break if i1 == arr.size
    sz = 1

    loop do
      break if sz > arr.size - i1
      sub_arrs << arr[i1, sz]
      sz += 1
    end

    i1 += 1
  end

  sub_arrs.max_by(&:sum).sum
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
