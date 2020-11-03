def longest_repetition(chars)
  max = ['', 0]
  current = ['', 0]

  chars.chars.each do |char|
    if char == current.first
      current[1] += 1
    else
      max = current if current.last > max.last
      current = [char, 1]
    end
  end

  max.last >= current.last ? max : current
end

p longest_repetition("aaaabb") == ['a', 4]
p longest_repetition("bbbaaabaaaa") == ['a', 4]
p longest_repetition("cbdeuuu900") == ['u', 3]
p longest_repetition("abbbbb") == ['b', 5]
p longest_repetition("aabb") == ['a', 2]
p longest_repetition("ba") == ['b', 1]
p longest_repetition("") == ['', 0]
p longest_repetition("aaabbcccddd") == ['a', 3]
