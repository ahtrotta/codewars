require 'date'

DAYS = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

#def most_frequent_days(year)
#  hsh = Hash.new(0)
#  y = Date.new(year, 1, 1)
#
#  loop do
#    hsh[y.cwday] += 1
#    y = y.next_day
#    break if y.day == 1 && y.month == 1
#  end
#
#  days = hsh.to_a.sort do |(d_a, n_a), (d_b, n_b)|
#    val = n_a <=> n_b
#    val == 0 ? d_a <=> d_b : val
#  end
#
#  max = []
#  max << days.pop
#  num = max[0].last
#
#  loop do
#    current = days.pop
#    if current.last == num
#      max << current
#    else
#      break
#    end
#  end
#
#  max.reverse.map { |day, _| DAYS[day - 1] }
#end

def most_frequent_days(year)
  hsh = Hash.new(0)
  y = Date.new(year, 1, 1)

  loop do
    hsh[y.cwday] += 1
    y = y.next_day
    break if y.day == 1 && y.month == 1
  end

  max = hsh.values.max
  hsh.select { |d, count| count == max }.to_a.sort.map do |d, _|
    DAYS[d - 1]
  end
end

p most_frequent_days(2427)
p most_frequent_days(2860)
