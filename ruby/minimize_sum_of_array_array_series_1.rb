#def min_sum(arr)
#  sums = arr.permutation.to_a.map do |combo|
#    combo.each_slice(2).map { |sub_arr| sub_arr.inject(:*) }.sum
#  end
#  sums.min
#end

def min_sum(arr)
  half = arr.size / 2
  srt = arr.sort
  srt.first(half).zip(srt.last(half).reverse).map { |a| a.inject(:*) }.sum
end

p min_sum([5,4,2,3]) == 22
p min_sum([12,6,10,26,3,24]) == 342
p min_sum([9,2,8,7,5,4,0,6]) == 74
p min_sum([1,2]) == 2
p min_sum([]) == 0
