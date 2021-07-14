def matrixAddition(a, b)
  a.map.with_index do |row, row_i|
    row.map.with_index do |el, col_i|
      el + b[row_i][col_i]
    end
  end
end

p matrixAddition([[1, 2, 3], [3, 2, 1], [1, 1, 1]], [[2, 2, 1], [3, 2, 3], [1, 1, 3]])
