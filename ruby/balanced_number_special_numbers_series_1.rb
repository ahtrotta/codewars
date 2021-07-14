def right_left_digs(arr, no_digs)
  left = []
  right = []

  if no_digs.even?
    mids = [(no_digs / 2) - 1, no_digs / 2]

    arr.each_with_index do |el, i|
      if mids.include?(i)
        next
      elsif i < mids.first
        left << el
      else
        right << el
      end
    end
  else
    mid = no_digs / 2

    arr.each_with_index do |el, i|
      if i == mid
        next
      elsif i < mid
        left << el
      else
        right << el
      end
    end
  end 

  [left, right]
end

def balanced_num(number)
  num_digs = number.digits.reverse
  size = num_digs.size
  return 'Balanced' if [1, 2].include?(size)
  right, left = right_left_digs(num_digs, size)
  right.sum == left.sum ? 'Balanced' : 'Not Balanced'
end

p balanced_num(7) == "Balanced"
p balanced_num(959) == "Balanced"
p balanced_num(13) == "Balanced"
p balanced_num(432) == "Not Balanced"
p balanced_num(424) == "Balanced"
p balanced_num(1024) == "Not Balanced"
p balanced_num(66545) == "Not Balanced"
p balanced_num(295591) == "Not Balanced"
p balanced_num(1230987) == "Not Balanced"
p balanced_num(56239814) == "Balanced"
