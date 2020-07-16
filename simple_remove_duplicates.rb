=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate from end of array to front
  - add element to new_ary unless already present in new_ary

=end

def solve(arr)
  idx = arr.size - 1
  new_ary = []
  loop do
    break if idx < 0
    new_ary.unshift(arr[idx]) unless new_ary.include?(arr[idx])
    idx -= 1
  end
  new_ary
end

# test cases

p solve([3,4,4,3,6,3]) == [4,6,3]
p solve([1,2,1,2,1,2,3]) == [1,2,3]
p solve([1,2,3,4]) == [1,2,3,4]
p solve([1,1,4,5,1,2,1]) == [4,5,2,1]
