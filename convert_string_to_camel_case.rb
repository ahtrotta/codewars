def to_camel_case(str)
  words = str.include?('-') ? str.split('-') : str.split('_')
  cap_words = words.map(&:capitalize)
  cap_words.first.downcase! if ('a'..'z').include?(words[0][0])
  cap_words.join
end

p to_camel_case('the-stealth-warrior')
p to_camel_case('The_stealth_warrior')
