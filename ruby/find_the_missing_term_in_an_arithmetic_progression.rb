# input
#   - array of integers
#   - each consecutive integer has a constant difference except for two
#
# output
#   - the missing integer in the sequence
#
# algorithm
#   - find the difference between every two elements
#   - identify the difference that is double
#   - output the missing number
#
# algorithm (more specifically)
#   - create a range from 1 to size of the input array 
#     - map the range to the difference between the element at the index and the previous element
#     - sort the unique elements and assign to new variables
#     - access the element with a larger difference and subtract the smaller difference

def find_missing(sequence)
  diffs = (1...sequence.size).map { |i| sequence[i] - sequence[i - 1] }
  s_diff, l_diff = sequence.last < 0 ? diffs.uniq.sort.reverse : diffs.uniq.sort
  sequence[diffs.index(l_diff)] + s_diff
end

p find_missing([1, 2, 3, 4, 6, 7, 8, 9])
p find_missing([0, -4, -8, -12, -16, -20, -24, -28, -32, -36, -40, -44, -48, -52, -56, -60, -64, -72, -76, -80, -84, -88, -92, -96, -100, -104, -108, -112, -116, -120, -124, -128, -132, -136, -140, -144, -148, -152, -156, -160, -164, -168, -172, -176, -180, -184, -188, -192, -196, -200, -204, -208, -212, -216, -220, -224, -228, -232, -236, -240, -244, -248, -252, -256, -260, -264, -268, -272, -276, -280, -284, -288, -292, -296, -300, -304, -308, -312, -316, -320, -324, -328, -332, -336, -340, -344, -348, -352, -356, -360, -364, -368, -372, -376, -380, -384, -388, -392, -396])
