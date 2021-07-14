=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def find_uniq(arr)
  arr.each_with_object(Hash.new(0)) do |num, hsh|
    if hsh[num] == 0
      return num if hsh.any? { |_, count| count > 1 }
      hsh[num] += 1
    elsif hsh[num] == 1
      hsh[num] += 1
      return hsh.key(1) if hsh.size == 2
    end
  end
end

# test cases

p find_uniq([1, 1, 1, 1, 0]) == 0
p find_uniq([1, 1, 1, 2, 1, 1]) == 2
p find_uniq([0, 0, 0.55, 0, 0]) == 0.55
p find_uniq([1, 0, 0, 0, 0]) == 1
