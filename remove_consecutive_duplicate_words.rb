def remove_consecutive_duplicates(s)
  last = ''
  words = []

  s.split.each do |word|
    words << word unless word == last
    last = word
  end

  words.join(' ')
end

p remove_consecutive_duplicates('alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta') == 'alpha beta gamma delta alpha beta gamma delta'
