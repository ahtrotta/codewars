# input
#   - string
#
# output
#   - string, with each char converted to NATO alphabet
#
# algorithm
#   - delete white space and convert to lowercase
#   - iterate through characters (map on characters array)
#     - if character is in the NATO keys
#       - replace current character with NATO word
#     - else just return the character
#   - join the resultany array on space

NATO = { 'a' => 'Alfa', 'b' => 'Bravo', 'c' => 'Charlie', 'd' => 'Delta', 
         'e' => 'Echo', 'f' => 'Foxtrot', 'g' => 'Golf', 'h' => 'Hotel', 
         'i' => 'India', 'j' => 'Juliett', 'k' => 'Kilo', 'l' => 'Lima', 
         'm' => 'Mike', 'n' => 'November', 'o' => 'Oscar', 'p' => 'Papa', 
         'q' => 'Quebec', 'r' => 'Romeo', 's' => 'Sierra', 't' => 'Tango', 
         'u' => 'Uniform', 'v' => 'Victor', 'w' => 'Whiskey', 'x' => 'Xray', 
         'y' => 'Yankee', 'z' => 'Zulu' }

def to_nato(words)
  words = words.downcase.delete('^a-z.!?,')
  words.chars.map { |c| NATO.keys.include?(c) ? NATO[c] : c }.join(' ')
end

p to_nato('If, you can read?')
