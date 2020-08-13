# input 
#   - ipv4 string
#
# output
#   - 32 bit number
#
# algorithm
#   - split ip on the '.' character
#   - iterate through array (map)
#     - convert each number to binary
#   - join the elements in the array
#   - convert the result into an integer

def ip_to_int32(ip)
  bin_str = ip.split('.').map { |int| format('%08i', int.to_i.to_s(2)) }.join
  bin_str.prepend('0b').to_i(2)
end

p ip_to_int32('128.32.10.1')
