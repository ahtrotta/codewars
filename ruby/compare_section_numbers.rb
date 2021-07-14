def compare(s1, s2)
  s1_arr = s1.split('.').map(&:to_i) 
  s2_arr = s2.split('.').map(&:to_i)
  loop do
    break if s1_arr.size == s2_arr.size
    s1_arr << 0 if s1_arr.size < s2_arr.size
    s2_arr << 0 if s1_arr.size > s2_arr.size
  end
  s1_arr <=> s2_arr
end

p compare('1', '2') == -1
p compare('1.1', '1.2') == -1
p compare('1.1', '1') == 1
p compare('1.2.3.4', '1.2.3.4') == 0
p compare('3', '3.0') == 0
p compare('3', '3.0.0.0') == 0
p compare('1.2.1', '1.2.0') == 1
p compare('3.0.0', '3.1.1') == -1
p compare('3.0.1', '3.1') == -1
p compare('1.2.3', '1.02.003') == 0
