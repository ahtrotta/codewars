def trump_detector(trump_speech)
  vowels = trump_speech.scan(/a+|e+|i+|o+|u+/i)
  value = vowels.map { |s| s.length - 1 }.sum / vowels.size.to_f
  value.floor == value ? value.floor : value.round(2)
end

p trump_detector("I will build a huge wall") == 0
p trump_detector("HUUUUUGEEEE WAAAAAALL") == 4
p trump_detector("MEXICAAAAAAAANS GOOOO HOOOMEEEE") == 2.5
p trump_detector("America NUUUUUKEEEE Oooobaaaamaaaaa") == 1.89
p trump_detector("listen migrants: IIII KIIIDD YOOOUUU NOOOOOOTTT") == 1.56
