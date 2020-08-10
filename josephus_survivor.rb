# problem 
#   - given two integers
#     - number of people in circle
#     - elimination number (every nth person is eliminated)
#   - return the last 'person'
#
# algorithm
#   - initialize elim_num to second argument (add_num)
#   - loop
#     - add add_num to elim_num then modulo num_ppl
#     - if the result is equal to num_ppl, return elim_num
#
# algorithm2
#   - create hash with keys 1 to num_ppl and all values as true
#   - starting with elim_num modulo num_ppl (current_num)
#   - until only one value is true
#     - add elim_num to current_num
#     - set current_num modulo num_ppl to false

#def josephus_survivor(num_ppl, elim_num)
#  add_num = elim_num % num_ppl
#  loop do
#    p add_num
#    last_num = add_num
#    add_num = (add_num + elim_num) % num_ppl
#    return last_num if add_num == 0
#  end
#end
#def josephus_survivor(num_ppl, elim_num)
#  hsh = (1..num_ppl).map { |n| [n, true] }.to_h
#  current_num = elim_num % num_ppl
#
#  until hsh.values.count(true) == 1
#    binding.pry
#    hsh[current_num] = false if hsh[current_num]
#    current_num = (current_num + elim_num) % num_ppl
#  end
#
#  hsh.key(true)
#end
#
# algorithm3
#   - create array of numbers from 1 to num_ppl
#   - initialize index to (elim_num - 1) modulo num_ppl
#   - loop  
#     - return array element if array has one element
#     - re-assign element at index to nil
#     - re-assign index to (index + elim_num)
#     - if index >= num_ppl 
#       - remove nil elements (compact)
#       - re-assign index to index modulo num_ppl

require 'pry'

def josephus_survivor(num_ppl, elim_num)
  ppl = (1..num_ppl).to_a
  idx = (elim_num - 1) % num_ppl

  loop do
    ppl[idx] = nil
    idx += elim_num
    binding.pry
    if idx >= ppl.size
      idx %= ppl.size
      ppl.compact!
      return ppl.first if ppl.size == 1
      idx %= ppl.size if idx >= ppl.size
    end
  end
end


#p josephus_survivor(7,3) == 4
p josephus_survivor(11,19) == 10
#p josephus_survivor(1,300) == 1
#p josephus_survivor(14,2) == 13
#p josephus_survivor(100,1) == 100
