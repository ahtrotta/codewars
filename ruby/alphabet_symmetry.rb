ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.chars

def solve(arr)
  arr.map(&:downcase).each_with_object([]) do |str, res|
    count = 0

    str.chars.each_with_index do |c, i|
      count += 1 if ALPHABET.index(c) == i
    end

    res << count
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
