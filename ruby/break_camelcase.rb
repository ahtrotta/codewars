def solution(string)
  arr = []
  current = ''
  idx = 0
  loop do
    break if idx == string.length
    if idx == string.length - 1
      arr << (current << string[idx])
    elsif ('A'..'Z').include?(string[idx])
      arr << current
      current = string[idx]
    else
      current << string[idx]
    end
    idx += 1
  end
  arr.join(' ')
end

p solution('camelCasing')
