require 'pry'

def solution(str)
  idx = 0
  arr = []
  current = ''
  loop do
    break if idx == str.length
    if idx == str.length - 1
      if current.length == 1
        arr << (current + str[idx])
      else
        arr << (str[idx] + '_')
      end
    elsif current.length == 1
      arr << (current << str[idx])
      current = ''
    else
      current << str[idx]
    end
    idx += 1
  end
  arr
end

p solution('abc')
p solution('abcdef')
