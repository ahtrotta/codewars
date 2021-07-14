# input
#   - array of arrays
#
# output
#   - integer representing length of missing array
#
# algorithm
#   - transform input array to array of integers representing sub_array length
#   - sort transformed array
#   - iterate through array
#     - subtract current value from next value
#       - if 2 then return current value plus 1
require 'pry'

def getLengthOfMissingArray(array_of_arrays)
  return 0 if !(array_of_arrays) || 
              array_of_arrays.empty? ||
              array_of_arrays.any?(&:nil?)
              
  lengths = array_of_arrays.map(&:length).sort

  lengths.each_with_index do |length, i|
    return length + 1 if lengths[i + 1] && lengths[i + 1] - length == 2
    return 0 if lengths[i + 1] - length > 2
  end
  
  0
end

#p getLengthOfMissingArray([ [ 1, 2 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]] )
#p getLengthOfMissingArray([ [ 5, 2, 9 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]] )
#p getLengthOfMissingArray([ [ false ], [ false, false, false ] ] )
#p getLengthOfMissingArray([ [ 'a', 'a', 'a' ], [ 'a', 'a' ], [ 'a', 'a', 'a', 'a' ], [ 'a' ], [ 'a', 'a', 'a', 'a', 'a', 'a' ]] )
#p getLengthOfMissingArray([ ])
