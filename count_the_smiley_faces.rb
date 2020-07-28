# input
#   - array of strings
#
# output
#   - number of smiley faces (integer)
#
# algorithm
#   - iterate through array
#     - iterate through string characters
#       - check for valid eyes
#       - check for valid nose (if applicable)
#       - check for valid mouth
#   - select valid and return count of new array

FEATURES = { eyes: %w(: ;), nose: %w(- ~), mouth: %w(\) D) }

def is_smiley?(str)
  return false unless str.length == 2 || str.length == 3
  nose = (str.length == 2 ? false : true)
  str.chars.each_with_index do |ftr, i|
    if i == 0
      return false unless FEATURES[:eyes].include?(ftr)
    elsif i == 1 && nose
      return false unless FEATURES[:nose].include?(ftr)
    else
      return false unless FEATURES[:mouth].include?(ftr)
    end
  end
  true
end

def count_smileys(arr)
  arr.select { |face| is_smiley?(face) }.count
end

p count_smileys(%w(:D :~\) ;~D ;\)))
