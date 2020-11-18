def arr_to_bin_str(arr, size)
  arr.map { |int| sprintf("%0#{size}b", int).chars }
end

def or_arrays(arr1, arr2, default=0)
  if arr1.size > arr2.size
    arr2 << default until arr1.size == arr2.size
  elsif arr1.size < arr2.size
    arr1 << default until arr1.size == arr2.size
  end

  pad = (arr1 + arr2).max.to_s(2).length
  arr1_bin, arr2_bin = arr_to_bin_str(arr1, pad), arr_to_bin_str(arr2, pad)

  arr1_bin.map.with_index do |bin1, i|
    b_arr = bin1.zip(arr2_bin[i]).map { |k| k.include?('1') ? '1' : '0' }
    b_arr.join.to_i(2)
  end
end

class Test
  def self.assert_equals(obj1, obj2)
    p obj1 == obj2
  end
end

Test.assert_equals(or_arrays([1,2,3],[1,2,3]),[1,2,3])
Test.assert_equals(or_arrays([1,2,3],[4,5,6]),[5,7,7])
Test.assert_equals(or_arrays([1,2,3],[1,2]),[1,2,3])
Test.assert_equals(or_arrays([1,2],[1,2,3]),[1,2,3])
Test.assert_equals(or_arrays([1,2,3],[1,2,3],3),[1,2,3])
