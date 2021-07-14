=begin

*** Understand the Problem ***

problem:
Write a function that takes an array of strings representing directions (N, S, E, W) and returns an array of strings with needless directions removed. Needless directions are two opposite directions one after the other ('NORTH' then 'SOUTH' or 'EAST' then 'WEST').

input(s): array of strings with directions (['NORTH', 'SOUTH', 'EAST', 'WEST'])

output(s): array of strings with directions

=============================================================================

*** Examples / Test Cases / Edge Cases ***

provided example(s):

test cases:

edge cases:

'bad' input:

=============================================================================

*** Data Structure(s) ***

data structure(s):


=============================================================================

*** Algorithm ***

algorithm:

- loop until no changes are made to the array
 - iterate through elements of array
   - if two opposite directions are next to each other
     - delete both
     - next iteration of loop

=end

require 'pry'

def pointless?(dir1, dir2)
  case dir1
  when 'NORTH'
    return true if dir2 == 'SOUTH'
  when 'SOUTH'
    return true if dir2 == 'NORTH'
  when 'EAST'
    return true if dir2 == 'WEST'
  when 'WEST'
    return true if dir2 == 'EAST'
  else
    return false
  end
end

def dirReduc(arr)
  loop do
    counter = 0
    loop do
      if pointless?(arr[counter], arr[counter + 1])
        arr.slice!(counter, 2)
        break
      else
        counter += 1
        break if counter == arr.size
      end
    end
    break if counter == arr.size
  end
  arr
end

p dirReduc(%w(NORTH SOUTH SOUTH EAST WEST NORTH WEST))
