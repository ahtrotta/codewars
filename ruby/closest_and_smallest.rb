# algorithm
# - convert string to array

def closest(strng)
  return [] if strng.empty?
  
  nums = strng.split.map.with_index do |n, idx|
    [n.chars.map(&:to_i).sum, idx, n.to_i]
  end

  sorted = nums.combination(2).to_a.sort_by do |pair|
    n1, n2 = pair
    [(n1[0] - n2[0]).abs, n1[0] + n2[0], n1[1] + n2[1]]
  end
  
  sorted.first.sort
end

p closest('103 123 4444 99 2000')
