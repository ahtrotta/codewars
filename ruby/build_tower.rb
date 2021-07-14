=begin

*** Understand the Problem ***

problem: build a tower

input(s): integer (number of floors)

output(s): array of strings that build a pyramid when stacked

mental model:


=============================================================================

*** Examples / Test Cases / Edge Cases ***

provided example(s): input: 3
                     output: ['  *  ',
                              ' *** ',
                              '*****']
                     input: 6
                     output: ['     *     ',
                              '    ***    ',
                              '   *****   ',
                              '  *******  ',
                              ' ********* ',
                              '***********']

'bad' input: 0 would output empty array (maybe?)
             can assume non-integers will not be passed in as arguments?

=============================================================================

*** Data Structure(s) ***

data structure(s): array


=============================================================================

*** Algorithm ***

algorithm: 

- store number of spaces in a variable
- store number of stars in a variable
- iterate through floors, adding spaces and stars to a string
- update spaces/stars each iteration

- spaces = input - 1
- stars = 1
- input.times
  - spaces -= 1
  - stars += 2


=end

def build_tower(floors)
  spaces = floors - 1
  stars = 1
  tower = []
  floors.times do
    tower << ' ' * spaces + '*' * stars + ' ' * spaces
    spaces -= 1
    stars += 2
  end
  tower
end

puts build_tower(3)
puts build_tower(6)
p build_tower(3)
    
