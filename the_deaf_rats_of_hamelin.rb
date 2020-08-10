# problem
#   - given a string representing rats and the pied piper, determine how many rats are going the wrong direction (i.e. deaf)
#   
# rules
#   - 'P' represents the pied piper
#   - '~O' represents a rat going right
#   - 'O~' represents a rate going left
#   - if a rat is not going towards the pied piper, then it is deaf
#
# algorithm
#   - remove whitespace from input string
#   - split string at P
#     - all rats to the left should be going right and vice versa
#   - iterate through left side
#     - if char equals '~' then index increases by 2 (assuming no invalide input)
#     - if char equals 'O' then deaf_rats increases by 1 and index increases by 2
#   - iterate through right side
#     - if char 'O' then index increases by 2
#     - if char '~' then deaf_rats increases by 1 and index increase by 2
#

def count_deaf_rats(str)
  rats = str.delete(' ').split('P')
  deaf_rats = 0

  rats.each_with_index do |rat_str, i|
    idx = 0
    loop do
      break if idx == rat_str.length
      deaf_rats += 1 if (rat_str[idx] == 'O' && i == 0) || 
                        (rat_str[idx] == '~' && i == 1)
      idx += 2
    end
  end
  deaf_rats
end



p count_deaf_rats("~O~O~O~O P") #== 0
p count_deaf_rats("P O~ O~ ~O O~") #== 1
p count_deaf_rats("~O~O~O~OP~O~OO~") #== 2
