def solve(arr)
  sorted = arr.sort do |a, b|
    val = arr.count(a) <=> arr.count(b)
    val == 0 ? b <=> a : val
  end
  sorted.reverse
end
