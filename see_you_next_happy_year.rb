def next_happy_year(year)
  loop do
    year += 1
    break year if year.digits == year.digits.uniq
  end
end
