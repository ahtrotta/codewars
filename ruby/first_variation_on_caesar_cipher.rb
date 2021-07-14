# problem
#   - convert a string into a ciphered string using a moving shift
#     - if the initial shift is 1 then the first letter is shifted by 1, the second letter is shifted by 2, etc.
#   - return the ciphered string as an array of 5 strings that evenly split the ciphered string
#
# input
#   - string s, the string to be ciphered
#   - initial shift, the amount to shift the first letter
#
# output
#   - an array of 5 strings
#
# algorithm
#   - cipher input string
#     - create range from shift to (shift + s.length)
#       - iterate through range (map)
#         - if s at current index is a letter
#           - add current range value to (ord - 97) then modulo 26
#         - otherwise just return the character
#   - split string into 5 substrings
#     - divide string by 5.0 and store result as slice_size (ceil)
#     - split string into characters
#       - slice string into slices of size slice_size
#       - add empty string to resultant array until size is 5
#
# decipher algorithm  
#   - join array of strings
#   - create range from shift to (shift + length of joined array)
#     - iterate through range (map)
#       - if letter
#         - subtract current range value from (ord - 97/65) then modulo 26
#       - otherwise return the character

def movingShift(s, shift)
  cipher_arr = (shift...(shift + s.length)).map.with_index do |shft, idx|
    if ('a'..'z').include?(s[idx])
      ((((s[idx].ord - 97) + shft) % 26) + 97).chr
    elsif ('A'..'Z').include?(s[idx])
      ((((s[idx].ord - 65) + shft) % 26) + 65).chr
    else
      s[idx]
    end
  end

  slice_size = (s.length / 5.0).ceil
  split_arr = cipher_arr.each_slice(slice_size).to_a
  split_arr << [''] until split_arr.size == 5
  split_arr.map(&:join)
end

def demovingShift(arr, shift)
  s = arr.join
  decipher_arr = (shift...(shift + s.length)).map.with_index do |shft, idx|
    if ('a'..'z').include?(s[idx])
      ((((s[idx].ord - 97) - shft) % 26) + 97).chr
    elsif ('A'..'Z').include?(s[idx])
      ((((s[idx].ord - 65) - shft) % 26) + 65).chr
    else
      s[idx]
    end
  end
  decipher_arr.join
end

u = "I should have known that you would have a perfect answer for me!!!"
v = ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"]
p movingShift(u, 1) #== v
p demovingShift(v, 1)
