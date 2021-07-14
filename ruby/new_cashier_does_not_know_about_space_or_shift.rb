# problem
#   - given a string with lowercase letters convert that string into space-separated and capitalized words
#
# input
#   - string of lowercase letters
#
# output
#   - string of words
#
# algorithm
#   - create a constant with the menu items (lowercased)
#   - initialize a word variable to empty string
#   - initialize a order array to empty array
#   - iterate through the input string characters
#     - check if word is included in menu_items constant
#       - if so add word (capitalized) to order array and re-assign word to empty string
#       - otherwise add character to word string
#   - join order array on the space character

MENU = %w(Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke)

def get_order(order)
  word = ''
  order_arr = []

  order.each_char do |c|
    word << c
    if MENU.include?(word.capitalize)
      order_arr << word.capitalize
      word = ''
    end
  end

  order_arr.sort_by { |word| MENU.index(word) }.join(' ')
end

p get_order("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza") == "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"
p get_order("pizzachickenfriesburgercokemilkshakefriessandwich") == "Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"
