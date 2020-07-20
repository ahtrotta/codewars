=begin

ALGORITHM
  - iterate from 10**(n - 1) to (10**n - 1)
    - digits.sort == digits.reverse

=end

def find_all(n, k)
  nums = (10**(k - 1)..(10**k - 1)).each_with_object([]) do |num, arr|
    digs = num.digits
    next if digs.sum != n || digs.reverse != digs.sort
    arr << num
  end
  nums.empty? ? [] : [nums.size, nums.first, nums.last]
end

p find_all(10, 3)
