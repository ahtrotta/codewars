=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def title_case(title, minor_words='')
  minor_words = minor_words.split.map(&:downcase)
  title_arr = title.split.map do |word|
    minor_words.include?(word.downcase) ? word.downcase : word.capitalize
  end
  title_arr.first.capitalize! unless title_arr.empty?
  title_arr.join(' ')
end

# test cases

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

