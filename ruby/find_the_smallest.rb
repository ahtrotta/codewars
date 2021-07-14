# problem
#   - given an integer, move one digit from its current index to a new index to make the smallest number possible, return an array with the small number, the original index of the moved digit and the new index of the moved digit
#
# algorithm
#   - out_arr = [input num, 0, 0]
#   - get digits of input number
#   - iterate through digits (this is the digit to move, move_digit & move_from)
#     - iterate from 0 to size of digits array (this is where to move it, move_to)
#       - next if move_to has the same value as move_from
#       - create the new number
#         - copy digits array
#         - remove move_digit at move_from
#         - insert move_digit at move_to
#         - join and convert to integer
#         - if the resulting number is smaller out_arr[0] then update out_arr
#   - return out_arr

def smallest(n)
  out_arr = [n, 0, 0]
  digs = n.digits.reverse

  digs.each_with_index do |dig, move_from|

    (0...digs.size).each do |move_to|
      next if move_to == move_from
      digs_cp = digs.dup
      digs_cp.delete_at(move_from)
      new_num = digs_cp.insert(move_to, dig).join.to_i
      out_arr = [new_num, move_from, move_to] if new_num < out_arr[0]
    end

  end

  out_arr
end

p smallest(261235) #== [126235, 2, 0]
p smallest(209917) == [29917, 0, 1]
p smallest(285365) == [238565, 3, 1]
p smallest(269045) == [26945, 3, 0]
p smallest(296837) == [239687, 4, 1]
