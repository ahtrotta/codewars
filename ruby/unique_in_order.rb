def unique_in_order(iterable)
  result = []
  count = 0
  loop do 
    break if count == iterable.size
    result << iterable[count] unless result[-1] == iterable[count]
    count += 1
  end
  result
end


p unique_in_order('AAAABBBCCDAABBB')
