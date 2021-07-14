# problem
#   - convert a hexadecimal string to a hash of red/green/blue numbers
#
# input
#   - case-insensitive string containing 0-9a-f
#
# output
#   - hash of form {r: 0-255, b: 0-255, g: 0-255}
#
# algorithm
#   - create array of strings where index is value
#   - set up result hash with proper slice of input string
#     - split slice into characters, reverse, and iterate with index
#       - raise value of character to index power and sum all values

HEX_CHARS = '0123456789abcdef'.chars

def hex_to_rgb(str)
  str = str.downcase[1..-1]

  result = [:r, :g, :b].map.with_index do |color, idx|
    val_arr = str[(idx * 2), 2].chars.reverse.map.with_index do |char, k|
      HEX_CHARS.index(char) * 16**k
    end

    [color, val_arr.sum]
  end
  
  result.to_h
end

p hex_to_rgb("#FF9933") #== {r: 255, g: 153, b: 51}
