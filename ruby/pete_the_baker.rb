def cakes(recipe, available)
  mults = recipe.each_with_object([]) do |(item, amnt), arr|
    return 0 unless available[item]
    arr << available[item] / amnt
  end
  mults.min
end

p cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})
p cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000})
