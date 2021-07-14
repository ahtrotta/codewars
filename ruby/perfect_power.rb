=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- initialize power to 2
- iterate from 1 to square root of num
  - check if num equals iterate to power
  - 

=end

#def isPP(num)
#  power = 2
#  loop do
#    break if power > (num / 2)
#    (1..(num / 2)).each do |base|
#      if base**power == num
#        return [base, power]
#      end
#    end
#    power += 1
#  end
#  nil
#end

def isPP(n)
  power = 2
  loop do
    base = 2
    break if base**power > n
    loop do
      break if base**power > n
      return [base, power] if base**power == n
      base += 1 
    end
    power += 1
  end
  nil
end 


# test cases

p isPP(4) == [2,2]
p isPP(8) == [2,3]
p isPP(36) == [6,2]
p isPP(9) == [3, 2]
p isPP(5) == nil
