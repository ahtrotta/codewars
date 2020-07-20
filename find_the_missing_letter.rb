def find_missing_letter(arr)
  arr.each_with_index do |c, i|
    next if i == 0
    return (c.ord - 1).chr if c.ord - arr[i - 1].ord > 1
  end
end

p find_missing_letter(%w(a b c d f))
