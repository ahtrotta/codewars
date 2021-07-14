def deaf_grandma(you)
  you.each_with_object([]) do |phrase, grandma|
    if phrase == 'BYE'
      grandma << 'OK, BYE!'
      break grandma
    elsif phrase.upcase == phrase
      grandma << 'NO, NOT SINCE 1938!'
    else phrase.upcase != phrase
      grandma << 'HUH?! SPEAK UP, SONNY!'
    end
  end
end

p deaf_grandma(['hi grandma', 'WHAT', 'bye', 'BYE']) == ["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!", "OK, BYE!"]
p deaf_grandma(['BYE']) == ["OK, BYE!"]
p deaf_grandma(['HELLO', 'OK, BYE', 'BYE']) == ["NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"]
p deaf_grandma(['Bye', 'OK, BYE', 'OK, BYE', 'BUY', "BYE", "BYE"]) == ["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"]
p deaf_grandma(['Bye?', 'BYE!', 'BYE.', 'BYE']) == ["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"]
p deaf_grandma(['BYE8', "1 Ok, Bye!", 'BYE']) == ["NO, NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!", "OK, BYE!"]
