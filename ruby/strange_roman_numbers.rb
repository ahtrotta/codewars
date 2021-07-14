#def solve(n)
#  [1, 5, 10, 50].repeated_combination(n).map(&:sum).uniq.size
#end

def solve(n)
  sums = Hash.new(0)

  [1, 5, 10, 50].repeated_combination(n).each do |comb|
    sum = comb.sum
    sums[sum] += 1
  end

  sums.keys.size
end

p solve(1) == 4
p solve(2) == 10
p solve(3) == 20
p solve(4) == 35
p solve(5) == 56
p solve(6) == 83
p solve(10) == 244
