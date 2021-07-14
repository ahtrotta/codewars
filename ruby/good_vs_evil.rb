GOOD = [1, 2, 3, 3, 4, 10]
EVIL = [1, 2, 2, 2, 3, 5, 10]

def goodVsEvil(good, evil)
  good_arr = good.split.map(&:to_i)
  evil_arr = evil.split.map(&:to_i)
  good_sum = (0..5).map { |i| GOOD[i] * good_arr[i] }.sum
  evil_sum = (0..6).map { |i| EVIL[i] * evil_arr[i] }.sum
  if good_sum > evil_sum
    'Battle Result: Good triumphs over Evil'
  elsif evil_sum > good_sum
    'Battle Result: Evil eradicates all trace of Good'
  else
    'Battle Result: No victor on this battle field'
  end
end

p goodVsEvil(%q(1 1 1 1 1 1), %q(1 1 1 1 1 1 1))
p goodVsEvil(%q(0 0 0 0 0 0), %q(1 1 1 1 1 1 1))
