# input
#   - array of names (strings) and the number of drinks (integer)
#
# output
#   - the name of the person who will drink the last cola (string)
#
# algorithm
#   - repeat as many times as integer input
#     - remove first name from array
#     - put the removed name at the end twice
#   - return the name at the end of the array

def who_is_next(names, r)
  names = names.map { |name| name.dup }
  r.times do |_|
    name = names.shift
    names << name << name
  end
  names.last
end

names = %w(Sheldon Leonard Penny Rajesh Howard)

arr = []
1000.times do |i|
  arr << [i, who_is_next(names, i)]
end

selected = arr.select.with_index do |(i, name), idx|
  name == 'Howard' && arr[idx + 1][1] == 'Sheldon'
end

p selected.map { |i, name| (i / 5) + 1 }
    
