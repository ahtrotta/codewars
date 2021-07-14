# input
# - wishlist (hash of gifts with size, clatters, and weight)
# - presents (hash of items with size, clatters, and weight)
#
# output
# - array of guesses (names of gifts)
#
# algorithm
# - initialize a guesses array
# - iterate through presents
#   - iterate through wishlist
#     - add name to array if all attributes match

def guess_gifts(wishlist, presents)
  presents.each_with_object([]) do |present, guesses|
    wishlist.each do |wish|
      if wish[:size] == present[:size] &&
         wish[:clatters] == present[:clatters] &&
         wish[:weight] == present[:weight]
        guesses << wish[:name] unless guesses.include?(wish[:name])
      end
    end
  end
end

p guess_gifts([{:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"}, {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"}, {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}], [{:size => "medium", :clatters => "a bit", :weight => "medium"}, {:size => "small", :clatters => "yes", :weight => "light"}])
