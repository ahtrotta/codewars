def transpose_two_strings(arr)
  long = arr.first.size > arr.last.size ? arr.first.size : arr.last.size
  transposed = (0...long).each_with_object([]) do |i, array|
    char1, char2 = arr.first[i], arr.last[i]
    char1 ||= ' '
    char2 ||= ' '
    array << "#{char1} #{char2}"
  end
  transposed.join("\n")
end

puts transpose_two_strings(%w(Hello World))
puts transpose_two_strings(%w(joey louise))
