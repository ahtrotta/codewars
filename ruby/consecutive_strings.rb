# algorithm
#   - iterate through array
#     - create slices of size k from current element
#     - join the slice, determine length
#       - if longer than previous length, update longest consecutive string

def longest_consec(strarr, k)
  return '' if k > strarr.size || k < 1
  long_slice = [0, 0]
  idx = 0

  loop do
    break if idx == strarr.size - k + 1
    slice = strarr[idx, k].join
    long_slice = [slice, slice.length] if slice.length > long_slice[1]
    idx += 1
  end
  
  long_slice[0]
end

#def longest_consec(strarr, k)
#  return '' if k < 1 || strarr.empty?
#  strarr[strarr.index(strarr.max_by(&:length)), k].join
#end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
p longest_consec([], 3) == ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""
