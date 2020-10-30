#def solve(n)
#  p = Prime.each
#  last_two = [0, 0]
#
#  until last_two.last > n
#    prime = p.next
#    last_two << prime
#    last_two.shift
#  end
#
#  diffs = last_two.map { |num| (n - num).abs }
#  last_two[diffs.index(diffs.min)]
#end
#
#require 'prime'
#
#$prime_arr = [2]
#$p = Prime.each
#
#def solve(n)
#  if n > $prime_arr.last
#    loop do
#      prime = $p.next
#      $prime_arr << prime
#      break if prime > n
#    end
#  end
#
#  last_two = []
#  idx = 0
#  loop do
#    if $prime_arr[idx] > n
#      last_two = $prime_arr[(idx - 1), 2]
#      break
#    end
#    idx += 1
#  end
#
#  diffs = last_two.map { |num| (n - num).abs }
#  last_two[diffs.index(diffs.min)]
#end

require 'prime'

def solve(n)
  up_prime = n
  up_prime += 1 until up_prime.prime?

  down_prime = n
  down_prime -= 1 until down_prime.prime?

  up_diff, down_diff = up_prime - n, n - down_prime
  up_diff < down_diff ? up_prime : down_prime
end

p solve(3) == 3
p solve(11) == 11
p solve(4) == 3
p solve(110) == 109
p solve(1110) == 1109
p solve(3000) == 2999
p solve(35000) == 34981
p solve(350000) == 350003
p solve(3500000) == 3499999
p solve(10000000000) == 10000000019
