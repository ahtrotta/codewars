# INPUT: string of numbers
# OUTPUT: string of numbers
# ALGORITHM
# - split input string into array of numbers
# - sort array by sum of digits

def order_weight(strng)
  arr = strng.split.sort do |a, b|
    a_sum = a.to_i.digits.sum
    b_sum = b.to_i.digits.sum

    if a_sum < b_sum
      -1
    elsif a_sum > b_sum
      1
    else
      a <=> b
    end
  end
  arr.join(' ')
end

p order_weight(%q(56 65 74 100 99 68 86 180 90))
