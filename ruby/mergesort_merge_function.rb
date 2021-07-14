def merged(first, second)
  first = first.dup
  second = second.dup
  result = []

  loop do
    if first.empty?
      result = result + second
      break
    elsif second.empty?
      result = result + first
      break
    else
      result << (first.first < second.first ? first.shift : second.shift)
    end
  end 

  result
end

p merged([1], [1])
p merged([1, 2, 3], [4, 5, 6])
