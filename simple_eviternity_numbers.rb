#def eviternity_digs?(digs)
#  digs.each_with_object(true) do |n|
#    return false unless [3, 5, 8].include?(n)
#  end
#end
#
#def solve(a, b)
#  count = 0
#
#  (a...b).each do |n|
#    digs = n.digits
#    next unless eviternity_digs?(digs)
#    counts = [3, 5, 8].map { |dig| digs.count(dig) }
#    next unless counts == counts.sort
#    count += 1
#  end
#
#  count
#end
#
#
#def solve(a, b)
#  count = 0
#
#  (a..b).each do |n|
#    count += 1 if eviternity?(n)
#  end
#
#  count
#end
#
#def solve(a, b)
#  count = 0
#
#  (a...b).each do |n|
#    dig_count = Hash.new(0)
#    n_digs = n.digits
#    skip = false
#    
#    n_digs.each do |dig|
#      unless [3, 5, 8].include?(dig)
#        skip = true
#        break
#      end
#
#      dig_count[dig] += 1
#    end
#
#    next if skip
#
#    count += 1 if dig_count[8] >= dig_count[5] && dig_count[5] >= dig_count[3]
#  end
#
#  count
#end

def eviternity?(num)
  counts = Hash.new(0)

  num.digits.each do |n|
    return false unless [3, 5, 8].include?(n)
    counts[n] += 1
  end

  counts[8] >= counts[5] && counts[5] >= counts[3]
end

EVITERNITY_NUMBERS = (0..500000).select { |n| eviternity?(n) }

def solve(a, b)
  nums = EVITERNITY_NUMBERS.each_with_object([]) do |n, arr|
    arr << n if (a...b) === n
    return arr.size if n >= b
  end

  nums.size
end


p solve(0,100) == 4
p solve(0,1000) == 14
p solve(0,10000) == 37
p solve(0,100000) == 103
p solve(0,500000) == 148
