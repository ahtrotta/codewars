def revrot(str, sz)
  return '' if sz < 1 || str.empty? || sz > str.length
  arr = str.chars.each_slice(sz).to_a.reject { |sub_arr| sub_arr.length != sz }
  arr.each do |chunk|
    if chunk.map(&:to_i).sum % 2 == 0
      chunk.reverse!
    else
      chunk << chunk.shift
    end
  end
  arr.map(&:join).join
end

p revrot('123456987654', 6)
p revrot('123456779', 8)
