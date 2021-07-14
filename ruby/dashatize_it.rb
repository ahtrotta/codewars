# input
#   - integer
#
# output
#   - string with digits of integer
#     - include dashes before and after each odd integer
#     - no dashes at beginning or end of string
#
# algorithm
#   - create array of digits from integer
#   - iterate through digits
#     - if the digit is odd add a dash before and after
#   - join all transformed digits
#   - remove consecutive dashes and replace with a single dash
#   - remove leading and trailing dashes

def dashatize(num)
  return 'nil' if num == nil
  seq = num.abs.digits.reverse.map do |n|
    n.odd? ? '-' + n.to_s + '-' : n.to_s
  end
  seq = seq.join.gsub('--', '-')
  if seq[0] == '-' && seq[-1] == '-'
    seq[1..-2]
  elsif seq[0] == '-'
    seq[1..-1]
  elsif seq[-1] == '-'
    seq[0..-2]
  else
    seq
  end
end

def dashatize(num)
  return 'nil' if num == nil
  seq = num.abs.digits.reverse.map { |n| n.odd? ? '-' + n.to_s + '-' : n.to_s }
  seq.join.gsub('--', '-').delete_prefix('-').delete_suffix('-')
end

p dashatize(274)
p dashatize(6815)
