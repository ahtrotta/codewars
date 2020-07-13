=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def Xbonacci(s, n)
  sum_num = s.size
  until s.size == n
    s << s.last(sum_num).sum
  end
  s
end

# test cases

p Xbonacci([0,1],10) == [0,1,1,2,3,5,8,13,21,34]
p Xbonacci([1,1],10) #== [1,1,2,3,6,8,13,21,34,55]
p Xbonacci([0,0,0,0,1],10) == [0,0,0,0,1,1,2,4,8,16]
p Xbonacci([1,0,0,0,0,0,1],10) == [1,0,0,0,0,0,1,2,3,6]
p Xbonacci([1,0,0,0,0,0,0,0,0,0],20) == [1,0,0,0,0,0,0,0,0,0,1,1,2,4,8,16,32,64,128,256]
