def nth_smallest(arr, pos)
  arr.sort[pos - 1]
end

p nth_smallest([3,1,2],2) == 2
p nth_smallest([15,20,7,10,4,3],3) == 7
p nth_smallest([-5,-1,-6,-18],4) == -1
p nth_smallest([-102,-16,-1,-2,-367,-9],5) == -2
p nth_smallest([2,169,13,-5,0,-1],4) == 2
