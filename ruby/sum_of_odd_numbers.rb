#def row_sum_odd_numbers(n)
#  pyramid = []
#  odd_num = 1
#  1.upto(n) do |size|
#    current_row = []
#    size.times do
#      current_row << odd_num
#      odd_num += 2
#    end
#    pyramid << current_row
#  end
#  pyramid.last.inject(:+)
#end

def row_sum_odd_numbers(n)
  start = ((n - 1) * n) + 1
  (0...n).map { |i| start + (i * 2) }.inject(:+)
end

p row_sum_odd_numbers(1)
p row_sum_odd_numbers(2)
p row_sum_odd_numbers(4)
p row_sum_odd_numbers(13)

