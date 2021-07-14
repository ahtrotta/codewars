# input
#   - g (desired gap between primes)
#   - m (starting number)
#   - n (ending number)
#
# output
#   - array of two integers (the two consecutive primes between m and n with gap g
#
# algorithm
#   - initialize a prime generator
#   - iterate generator until it's larger or equal to start number
#   - keep track of consecutive primes
#   - advance prime generator and subtract current value from last value

require 'prime'

#def gap(g, m, n)
#  p = Prime.each
#  last_prime = 0
#  current_prime = 0
#  current_prime = p.next until current_prime >= m
#
#  loop do
#    break [last_prime, current_prime] if current_prime - last_prime == g
#    last_prime = current_prime
#    current_prime = p.next
#    break nil if current_prime > n
#  end
#end

require 'pry'

def gap(g, m, n)
  (m..n).each_with_object([0, 0]) do |num, arr|
    next unless num.prime?
    arr[0], arr[1] = arr[1], num
    return arr if arr[1] - arr[0] == g
  end
  nil
end
    
p gap(2, 100, 110)
p gap(4, 100, 110)
p gap(6, 100, 110)
p gap(8, 300, 400)
