# algorithm
# - iterate through lines/rotors
#   - initialize running_total to 0
#   - iterate through rotor
#     - add current_value to running_total
#     - set current_value to running_total
#   - iterate through line
#     - add value of rotor to current char

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ?!@#&()|<>.:=-+*/0123456789'

def flap_display(lines, rotors)
  result = []

  rotors.each_with_index do |rotor, idx|
    running_total = 0
    char_spins = rotor.map do |spins|
      running_total += spins
      spins = running_total
    end

    line = lines[idx]
    new_line = line.chars.map.with_index do |char, i|
      ALPHABET[(ALPHABET.index(char) + char_spins[i]) % ALPHABET.length]
    end

    result << new_line.join
  end

  result
end

p flap_display(["CAT"],[[1, 13, 27]]) #== ["DOG"]
p flap_display(["HELLO "],[[15, 49, 50, 48, 43, 13]]) == ["WORLD!"]
p flap_display(["CODE"],[[20,20,28,0]]) == ["WARS"]
p flap_display([""],[[]]) == [""]
p flap_display(["NOTHING MOVED"],[[0,0,0,0,0,0,0,0,0,0,0,0,0]]) == ["NOTHING MOVED"]
p flap_display(["EFGH"],[[53, 53, 53, 53]]) == ["DDDD"]
p flap_display(["IN SPACE NOBODY...  "],[[48, 47, 0, 21, 38, 120, 48, 15, 41, 11, 43, 19, 47, 3, 17, 2, 41, 50, 23, 16]]) == ["CAN HEAR YOU SCREAM!"]
p flap_display([
    "+---------------------------+",
    "| THIS IS A MULTI LINE TEST |",
    "+---------------------------+"],[
      [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53],
      [8, 46, 7, 12, 30, 1, 4, 16, 34, 52, 32, 13, 11, 48, 3, 14, 4, 24, 16, 13, 3, 47, 22, 26, 50, 13, 52, 47, 8],
      [ 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53]]) == [
    "*****************************",
    "*   DO YOU LIKE THIS KATA?  *",
    "*****************************"]
#p flap_display([
#    "FLT NO  FROM             STATUS  TIME  GATE",
#    "------  ---------------  ------  ----- ----",
#    "QF 085  HONG KONG        LANDED  17.30   02",
#    "NZ 008  AUCKLAND SYDNEY  LANDED  17.35   03",
#    "CX 104  HONG KONG        ON TIME 17.38   --",
#    "MH 108  KUALA LUMPA      DELAYED 17.55   --"],[
#      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
#      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
#      [ 51, 23, 34, 0, 46, 11, 51, 0, 47, 13, 37, 15, 35, 5, 9, 45, 30, 26, 6, 33, 10, 45, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 49, 0, 0, 0, 1],
#      [ 43, 9, 2, 1, 53, 50, 4, 0, 7, 41, 17, 39, 19, 49, 45, 9, 24, 28, 48, 21, 44, 9, 34, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 51, 0, 0, 0, 52],
#      [ 2, 39, 13, 3, 52, 3, 50, 0, 49, 52, 11, 52, 44, 17, 33, 6, 20, 31, 39, 5, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 45, 8, 0, 0, 0, 0],
#      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 2, 0, 0, 0, 0]],[
#    "FLT NO  FROM             STATUS  TIME  GATE",
#    "------  ---------------  ------  ----- ----",
#    "NZ 008  AUCKLAND SYDNEY  LANDED  17.35   03",
#    "CX 104  HONG KONG        LANDED  17.38   01",
#    "EK 418  CHRISTCHURCH     ON TIME 17.40   --",
#    "MH 108  KUALA LUMPA      DELAYED 17.53   --"])
