# algorithm
#   - find lowest common denominator
#   - iterate through lst
#     - divide lcd by denominator and multiply num by result

def convertFracts(lst)
  lcm = lst.map { |_, den| den }.reduce(:lcm)
  lst.map { |num, den| [num * (lcm / den), lcm] }
end

p convertFracts([[1, 2], [1, 3], [1, 4]])
