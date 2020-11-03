def solve(arr)
  arr.permutation(arr.size).each do |seq|
    last = seq.first
    idx = 1

    loop do
      return seq if idx == seq.size
      break unless seq[idx] == last * 2.0 || seq[idx] == last / 3.0
      last = seq[idx]
      idx += 1
    end
  end
end

p solve([1,3]) == [3,1]
p solve([4,2]) == [2,4]
p solve([12,3,9,4,6,8]) == [9,3,6,12,4,8]
p solve([4,8,6,3,12,9]) == [9,3,6,12,4,8]
p solve([558,744,1488,279,2232,1116]) == [279,558,1116,2232,744,1488]
p solve([9,1,3]) == [9,3,1]
p solve([3000,9000]) == [9000,3000]
p solve([4,1,2]) == [1,2,4]
p solve([10,5]) == [5,10]
