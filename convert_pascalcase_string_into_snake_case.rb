def to_underscore(string)
  return string.to_s unless string.is_a? String
  word = ''
  arr = []
  string.each_char do |c|
    if ('A'..'Z').include?(c)
      arr << word unless word.empty?
      word = c.downcase
    else
      word << c
    end
  end
  arr.push(word).join('_')
end

p to_underscore('TestController')
