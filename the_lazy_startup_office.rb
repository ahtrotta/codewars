def bin_rota(arr)
  arr.map.with_index { |row, i| i.odd? ? row.reverse : row }.flatten
end
