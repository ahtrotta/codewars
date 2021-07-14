def calculate_years(principal, interest, tax, desired)
  current = principal
  years = 0

  until current >= desired
    annual_interest = current * interest
    current += annual_interest - annual_interest * tax
    years += 1
  end

  years
end

p calculate_years(1000, 0.05, 0.18, 1100)
p calculate_years(1000, 0.01625, 0.18, 1200)
