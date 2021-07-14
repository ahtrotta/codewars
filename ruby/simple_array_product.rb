def solve(arr)
  arr.pop.product(*arr).map { |prod| prod.inject(:*) }.max
end

p solve([[1, 2],[3, 4]]) == 8
p solve([[10,-15],[-1,-3]]) == 45
p solve([[-1,2,-3,4],[1,-2,3,-4]]) == 12
p solve([[-11,-6],[-20,-20],[18,-4],[-20, 1]]) == 17600
p solve([[14,2],[0,-16],[-12,-16]]) == 3584
p solve([[-3,-4],[1,2,-3]]) == 12
