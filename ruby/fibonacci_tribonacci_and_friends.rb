=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
  - get initial sum
  - loop until the array is the specified size
    - add sum to array
    - add sum to itself
    - subtract the element at the -(size of the initial array)

=end

#def Xbonacci(s, n)
#  sum_num = s.size
#  until s.size == n
#    s << s[-sum_num..-1].sum
#  end
#  s
#end

#def Xbonacci(s, n)
#  sum = s.sum
#  neg_idx = s.size + 1
#  until s.size == n
#    s << sum
#    sum = (sum * 2) - s[-neg_idx]
#  end
#  s
#end
#
# algo3
#   - initialize frame to be initial array
#   - initialize return array of nil values
#   - iterate through return array
#     - get frame_sum
#     - add frame_sum to return array

def Xbonacci(s, n)
  sum = s.sum
  size = s.size
  out_arr = s + [nil] * (n - size)
  idx = size

  loop do 
    break if idx == n
    out_arr[idx] = sum
    sum = sum + sum - out_arr[idx - size]
    idx += 1
  end

  out_arr
end

# test cases

p Xbonacci([0,1],10) == [0,1,1,2,3,5,8,13,21,34]
p Xbonacci([1,1],10) #== [1,1,2,3,6,8,13,21,34,55]
p Xbonacci([0,0,0,0,1],10) == [0,0,0,0,1,1,2,4,8,16]
p Xbonacci([1,0,0,0,0,0,1],10) == [1,0,0,0,0,0,1,2,3,6]
p Xbonacci([1,0,0,0,0,0,0,0,0,0],20) == [1,0,0,0,0,0,0,0,0,0,1,1,2,4,8,16,32,64,128,256]
