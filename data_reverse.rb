# input
#   - array of 0s and 1s
#
# output 
#   - array of 0s and 1s
#
# algorithm
#   - initialize empty byte
#   - initialize output array
#   - iterate through array
#     - if index is divisible by 8 add byte to output, re-initialize byte
#     - add current element to byte

def data_reverse(data)
  byte = []
  rev_data = []
  data.each_with_index do |dig, i|
    if i % 8 == 0 && i > 0
      rev_data.unshift(byte)
      byte = []
    end
    byte << dig
    rev_data.unshift(byte) if i == data.size - 1
  end
  rev_data.flatten
end

p data_reverse((1..24).to_a)
