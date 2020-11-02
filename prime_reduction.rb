require 'prime'

def sq_sum_digs(n)
  n.digits.map { |dig| dig**2 }.sum
end

def solve(a, b)
  count = 0
  loop_nums = []
  one_nums = []

  (a...b).each do |num|
    next unless num.prime?

    seen = []
    digs_sum = sq_sum_digs(num)

    loop do
      if digs_sum == 1 || one_nums.include?(digs_sum)
        count += 1
        one_nums = (one_nums + seen).uniq
        break
      elsif seen.include?(digs_sum) || loop_nums.include?(digs_sum)
        loop_nums = (loop_nums + seen).uniq
        break
      else
        seen << digs_sum
        digs_sum = sq_sum_digs(digs_sum)
      end
    end
  end

  count
end

p solve(1, 25) == 4
p solve(100, 1000) == 28
p solve(100, 2000) == 47
p solve(100, 3000) == 65
p solve(100, 4000) == 95
