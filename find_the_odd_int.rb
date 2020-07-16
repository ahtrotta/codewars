=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- make array uniq

=end

#def find_it(arr)
#  counts = arr.uniq.map do |num|
#    [num, arr.count(num)]
#  end
#
#  counts.each do |sub_arr|
#    num, count = sub_arr
#    return num if count.odd?
#  end
#
#  nil
#end

def find_it(arr)
  arr.uniq.each { |num| return num if arr.count(num).odd? }
end

# test cases

p find_it([1, 2, 3, 4, 1, 2, 3])

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10
