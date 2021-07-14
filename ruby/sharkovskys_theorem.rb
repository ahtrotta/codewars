#def sharkovsky(a, b)
#  return false if a == b
#  k = 0
#  check = false
#
#  loop do
#    front = ODDS.map { |n| n * (2**k) }
#    back = 2**k
#
#    front.each do |n|
#      if n == a
#        check ? (return true) : (check = true)
#      elsif n == b
#        check ? (return true) : (return false)
#      end
#    end
#
#    if back == a
#      check ? (return true) : (return false)
#    elsif back == b
#      check ? (return true) : (check = true)
#    end
#
#    k += 1
#  end
#end
#
#def sharkovsky(a, b)
#  a_pow = nil
#  b_pow = nil
#
#  a_val = Math.log2(a)
#  b_val = Math.log2(b)
#
#  a_pow = a_val if a_val.to_i == a_val
#  b_pow = b_val if b_val.to_i == b_val
#
#  odd = 3.0
#  loop do
#    a_val = Math.log2(a/odd)
#    b_val = Math.log2(b/odd)
#
#    a_pow ||= a_val if a_val.to_i == a_val
#    b_pow ||= b_val if b_val.to_i == b_val
#
#    binding.pry
#
#    odd += 2
#    break if a_pow && b_pow 
#  end
#
#  [a_pow, b_pow]
#end
#
#def sharkovsky(a, b)
#  return false if a == b
#
#  a_val = nil
#  b_val = nil
#
#  a_pow2 = Math.log2(a)
#  b_pow2 = Math.log2(b)
#
#  a_val = [Float::INFINITY, a_pow2 * -1, a] if a_pow2.to_i == a_pow2
#  b_val = [Float::INFINITY, b_pow2 * -1, b] if b_pow2.to_i == b_pow2
#
#  odd = 3.0
#  loop do
#    a_odd = Math.log2(a / odd)
#    b_odd = Math.log2(b / odd)
#
#    a_val ||= [a_odd, odd, a] if a_odd.to_i == a_odd
#    b_val ||= [b_odd, odd, b] if b_odd.to_i == b_odd
#
#    odd += 2
#    break if a_val && b_val
#  end
#
#  [a_val, b_val].sort.map(&:last) == [a, b]
#end

def shark_rep(n)
  rep = nil
  n_pow2 = Math.log2(n)
  rep = [Float::INFINITY, n_pow2 * -1, n] if n_pow2.to_i == n_pow2
  odd = 3.0

  loop do
    n_odd = Math.log2(n / odd)
    rep ||= [n_odd, odd, n] if n_odd.to_i == n_odd

    odd += 2
    break rep if rep
  end
end

def sharkovsky(a, b)
  return false if a == b
  [shark_rep(a), shark_rep(b)].sort.map(&:last) == [a, b]
end


p sharkovsky(18, 12)    #== true
p sharkovsky(3, 9)      #== true
p sharkovsky(10, 16)    #== true
p sharkovsky(1, 22)     #== false
p sharkovsky(32, 1024)  #== false
p sharkovsky(17, 17)    #== false
p sharkovsky(25435, 13027)
