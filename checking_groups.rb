# input
#   - string of (){}[]
#
# output
#   - boolean
#
# algorithm
#   - initialize integers for each of (), [], and {}
#   - iterate through string
#     - add 1 to relevant variable if open ( [ or {
#     - subtract 1 if ) ] or }
#     - return false if any of the values are negative
#   - return false if any of the values are not zero
#
# algo2
#   - replace '()' or '[]' or '{}' with '' until no replacements are possible

#def group_check(s)
#  prns, sqrs, curls = 0, 0, 0
#  last_open = nil
#  s.each_char do |c|
#    case c
#    when '('  then prns += 1
#    when ')'  then prns -= 1
#    when '['  then sqrs += 1
#    when ']'  then sqrs -= 1
#    when '{'  then curls += 1
#    when '}'  then curls -= 1
#    end
#    return false if [prns, sqrs, curls].any? { |val| val < 0 }
#  end
#  [prns, sqrs, curls].all?(&:zero?)
#end

def group_check(s)
  reduced_string = ''
  loop do
    reduced_string = s.sub('()', '').sub('[]', '').sub('{}', '')
    break if s == reduced_string
    s = reduced_string
  end
  reduced_string.empty?
end
