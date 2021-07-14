def split_the_bill(x)
  avg = x.values.sum / x.size.to_f
  x.map { |k, v| [k, (v - avg).round(1)] }.to_h
end

p split_the_bill({'A' => 20, 'B' => 15, 'C' => 10})
