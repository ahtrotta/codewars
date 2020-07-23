# - check if string ends with number
#   - check last character
# - if ends in number separate number portion from non-numeric portion
# - increment numeric portion by 1
# - if doesn't end in number add 1 to the end

def split_str(str)
  chars = str.chars
  nums = []
  until chars.empty? || chars[-1].ord < 48 || chars[-1].ord > 57
    nums.unshift(chars.pop)
  end
  [chars.join, nums.join]
end

def increment_string(input)
  return '1' if input.empty?
  if input[-1].ord > 47 && input[-1].ord < 58
    letts, nums = split_str(input)
    nums = format("%0#{nums.length}d", nums.to_i + 1)
    letts + nums
  else
    input + '1'
  end
end

p increment_string('foo')
p increment_string('foo0042')
p increment_string('1')
