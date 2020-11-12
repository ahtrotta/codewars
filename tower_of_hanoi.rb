#def tower_of_hanoi(rings)
#  stacks = [(1..rings).to_a.reverse, [], []]
#  i1, i2 = rings.even? ? [1, 2] : [2, 1]
#  steps = 0
#  last_moved = 0
#
#  until stacks.last == (1..rings).to_a.reverse
#    last = stacks.map { |stack| stack.last }
#
#    last_mod = last.map do |last|
#      case last
#      when nil        then (rings + 1)
#      when last_moved then (rings + 1)
#      else            last
#      end
#    end
#
#    move_idx = last_mod.index(last_mod.min)
#    ring = stacks[move_idx].pop
#    last_moved = ring
#
#    if last[(move_idx + i1) % 3].nil? || last[(move_idx + i1) % 3] > ring
#      stacks[(move_idx + i1) % 3] << ring
#    else
#      stacks[(move_idx + i2) % 3] << ring
#    end
#
#    steps += 1
#  end
#
#  steps
#end

def tower_of_hanoi(rings)
  steps = [0, 1]
  count = 1

  until count == rings
    steps = [steps.last, steps.last * 2 + 1]
    count += 1
  end
  
  steps.last
end

p tower_of_hanoi(4) == 15
p tower_of_hanoi(5) == 31
p tower_of_hanoi(10) == 1023
p tower_of_hanoi(50) == 1125899906842623
