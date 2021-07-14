# [1, 4, 4, 4, 0, 4, 3, 3, 1] => [1, 12, 0, 4, 6, 1]
#
# algorithm
#   - initialize out_arr
#   - initialize last_el to be first element of array
#   - initialize dup_cnt to be 1
#   - iterate through elements starting at index 1
#     - if element is different than last_el 
#       - add last_el * dup_cnt to out_arr
#       - re-assign dup_cnt to 1
#       - re-assign last_el to current element
#     - if element is same as last element of out_arr
#       - add 1 to dup_count
#   - return out_arr

def sum_consecutives(s)
  out_arr = []
  last_el = s.first
  dup_cnt = 1
  idx = 1

  loop do
    break if idx == s.size + 1
    current_el = s[idx]
    
    if current_el != last_el
      out_arr << (last_el * dup_cnt)
      last_el = current_el
      dup_cnt = 1
    else
      dup_cnt += 1
    end
    
    idx += 1
  end

  out_arr
end
