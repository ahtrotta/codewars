# - start with highest scoring combination and check if present
#   - work through until lowest scoring combination

ROLLS = [['111', 1000], ['666', 600], ['555', 500], ['444', 400], 
         ['333', 300], ['222', 200], ['1', 100], ['5', 50]]

def score(dice)
  roll_str = dice.sort.join
  vals = ROLLS.each_with_object([]) do |(str, val), arr|
    while roll_str.include?(str)
      arr << val
      roll_str.sub!(str, '')
    end
  end
  vals.sum
end

p score([5, 1, 3, 4, 1])
p score([1, 1, 1, 3, 1])
p score([2, 4, 4, 5, 4])
