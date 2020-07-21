def queue_time(customers, n)
  tills = []
  count = 0
  loop do
    tills.map! { |n| n -= 1 }.reject!(&:zero?)
    tills << customers.shift until tills.size == n || customers.empty?
    break if tills.empty?
    count += 1
  end
  count
end

p queue_time([5, 3, 4], 1) #== 12
p queue_time([10, 2, 3, 3], 2) #== 10
p queue_time([2, 3, 10], 2) #== 12
