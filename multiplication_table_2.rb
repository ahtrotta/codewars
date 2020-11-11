def multiplication_table(size)
  (1..size).map { |row| (1..size).map { |col| col * row } }
end

p multiplication_table(3)
