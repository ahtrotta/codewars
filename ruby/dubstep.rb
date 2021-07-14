def song_decoder(song)
  song.split('WUB').reject(&:empty?).join(' ')
end

p song_decoder("AWUBBWUBC") #== "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") #== "A B C"
p song_decoder("WUBAWUBBWUBCWUB") #== "A B C"
