# input
#   - two arrays
#     - one array of strings representing books (code + amnt)
#     - one array of strings representing categories (first letter of book code)
#
# output
#   - string of numbers of books in each category
#   - format is "(A: 2000) - (B: 1140)"
#
# algorithm
#   - iterate through books array
#     - check if first letter is in categories array
#       - if it is add the number to a results hash
#   - convert results hash to array, map array to strings, join strings

def stockList(listOfArt, listOfCat)
  return '' if listOfArt.empty? || listOfCat.empty?
  hash = listOfCat.map { |cat| [cat, 0] }.to_h
  
  listOfArt.each_with_object(hash) do |str, hsh|
    code, num = str.split
    hsh[code[0]] += num.to_i if listOfCat.include?(code[0])
  end
  
  hash.to_a.map { |code, amnt| "(#{code} : #{amnt})" }.join(' - ')
end

b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B", "X"]

p stockList(b, c)
