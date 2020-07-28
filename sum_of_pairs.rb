=begin

*** Understand the Problem ***

problem:

input(s):

output(s):

=============================================================================

*** Examples / Test Cases / Edge Cases ***

provided example(s):

test cases:

edge cases:

'bad' input:

=============================================================================

*** Data Structure(s) ***

data structure(s):


=============================================================================

*** Algorithm ***

algorithm:
- initialize iterator1 to 0
- initialize iterator2 to 1
- initialize results as empty array
- loop
  - update result
  - break if iterator1 == arr.size - 1 or iterator1 > result iterator2
  - loop
    - break if iterator2 == arr.size or iterator 2 > result iterator 2
    - check if array[iterator1] + array[iterator2] = sum
    - add 1 to iterator2
  - add 1 to iterator1

=end

#def sum_pairs(ints, s)
#  arr = []
#  it1 = 0
#  limit = ints.size
#
#  loop do
#    it2 = it1 + 1
#    break if it1 >= limit
#
#    loop do
#      break if it2 >= limit
#      if ints[it1] + ints[it2] == s
#        arr << [[ints[it1], ints[it2]], [it1, it2]]
#        limit = it2 + 1
#      end
#      it2 += 1
#    end
#
#    it1 += 1
#  end
#
#  result = arr.sort_by { |_, (ind1, ind2)| ind2 }.first 
#  result ? result[0] : nil
#end

#def sum_pairs(ints, s)
#  arr = []
#  limit = ints.size
#  chunk = 0
#
#  loop do
#    it1 = 0
#    break if chunk >= limit + CHUNK_SIZE
#    
#    loop do
#      it2 = chunk + 1
#      it2 = it1 + 1 if it1 >= it2
#      break if it1 >= chunk + CHUNK_SIZE || it1 >= limit 
#
#      loop do
#        break if it2 >= chunk + CHUNK_SIZE + 1 || it2 >= limit
#        
#        if ints[it1] + ints[it2] == s
#          arr << [[ints[it1], ints[it2]], [it1, it2]]
#          limit = it2 + 1
#        end
#        
#        it2 += 1
#      end
#
#      it1 += 1
#    end
#    
#    chunk += CHUNK_SIZE
#  end
#  
#  result = arr.sort_by { |_, (ind1, ind2)| ind2 }.first 
#  result ? result[0] : nil
#end

#def sum_pairs(ints, s)
#  i2 = 1
#  loop do
#    break if i2 == ints.size
#    i1 = 0
#    loop do
#      break if i1 == i2
#      return [ints[i1], ints[i2]] if ints[i1] + ints[i2] == s
#      i1 += 1
#    end
#    i2 += 1
#  end
#  nil
#end

# input
#   - array of integers, sum value (integer)
# 
# output
#   - array of two integers that add up to sum value
#
# algorithm
#   - iterate through array
#     - add each element to another array to keep track of seen_values
#     - if sum - current element is in seen_values return

def sum_pairs(ints, s)
  ints.each_with_object([]) do |n, seen|
    return [(s - n), n] if seen.include?(s - n)
    seen << n unless seen.include?(n)
  end
  nil
end


l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]
l9= [0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0]

p sum_pairs(l1, 8) #== [1, 7]
p sum_pairs(l2, -6) #== [0, -6]
p sum_pairs(l3, -7) == nil
p sum_pairs(l4, 2) == [1, 1]
p sum_pairs(l5, 10) == [3, 7]
p sum_pairs(l6, 8) == [4, 4]
p sum_pairs(l7, 0) == [0, 0]
p sum_pairs(l8, 10) == [13, -3]
p sum_pairs(l9, 6) == [3, 3]
