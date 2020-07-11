=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def abbreviate_word(word)
  num = word.length - 2
  word[0] + num.to_s + word[-1]
end

#def abbreviate(str)
#  new_str = ''
#  current_word = ''
#  idx = 0
#  
#  loop do
#    break if idx == str.length
#
#    if str[idx] =~ /[ ,.!?-]/
#      current_word = abbreviate_word(current_word) if current_word.length > 3
#      new_str << current_word << str[idx]
#      current_word = ''
#    elsif ('a'..'z').include?(str[idx].downcase)
#      current_word << str[idx]
#      
#      if idx == str.length - 1
#        if current_word.length > 3
#          new_str << abbreviate_word(current_word)
#        else
#          new_str << current_word
#        end
#      end
#
#    end
#    idx += 1
#  end
#
#  new_str
#end

def abbreviate(str)
  arr = str.split(/([\- ,.!?])/).map do |word|
    word.length > 3 ? abbreviate_word(word) : word
  end
  arr.join
end

# test cases

p abbreviate("banana") == "b4a"
p abbreviate("double-barrel") == "d4e-b4l"
p abbreviate("You, and I, should speak.") == "You, and I, s4d s3k."
