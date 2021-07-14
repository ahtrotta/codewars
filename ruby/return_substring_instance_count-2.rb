# algorithm
# - iterate through string and check each slice to see if it's the same as search text

def search_substr(fullText, searchText, allowOverlap=true)
  return 0 if searchText.nil? || searchText.empty?

  slice_len = searchText.length
  idx = 0
  count = 0

  loop do
    break if idx >= fullText.length
    slice = fullText[idx, slice_len]
    if slice == searchText
      count += 1
      allowOverlap ? idx += 1 : idx += slice_len
    else
      idx += 1
    end
  end

  count
end

p search_substr('aa_bb_cc_dd_bb_e', 'bb') == 2
p search_substr('aaabbbcccc', 'bbb') == 1
p search_substr('aaacccbbbcccc', 'cc') == 5
p search_substr('aaa', 'aa') == 2
p search_substr('aaa', 'aa',false) == 1
p search_substr('aaabbbaaa', 'bb',false) == 1
p search_substr('a', '') == 0
p search_substr('', 'a') == 0
p search_substr('', '') == 0
p search_substr('', '',false) == 0
