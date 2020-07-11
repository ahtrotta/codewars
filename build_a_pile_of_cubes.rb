=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- initialize variable to 1
- until num is less than zero
  - subtract variable cubed from num
  - add one to variable
- check if num is zero

=end

def find_nb(num)
  side = 1
  while num > 0
    num -= side**3
    side += 1
  end
  num == 0 ? side - 1 : -1
end

# test cases

p find_nb(4183059834009) == 2022
p find_nb(24723578342962) == -1
p find_nb(135440716410000) == 4824
p find_nb(40539911473216) == 3568
