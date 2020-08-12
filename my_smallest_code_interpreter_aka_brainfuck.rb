# input
#   - a code string consisting of the 8 commands
#   - an input string
#
# output
#   - a string
#
# algorithm
#   - initialize a mem_tape to array of 0s (5000)
#   - initialize mem_point to 0
#   - initialize output to empty string
#   - initialize code_idx to 0
#   - initialize input_idx to 0
#   - loop
#     - break if code_idx is equal to length of code string
#     - current_comm is equal to code at index code_idx
#     - case current_comm
#       - see spec
require 'pry'

def brain_luck(code, input)
  mem_tape = (0...5000).map { |_| 0 }
  mem_point = 0
  output = []
  code_idx = 0
  input = input.chars

  loop do
    break if code_idx == code.length
    curr_comm = code[code_idx]
#    binding.pry

    case curr_comm
    when '>'
      mem_point += 1
    when '<'
      mem_point -= 1
    when '+'
      mem_tape[mem_point] = (mem_tape[mem_point] + 1) % 256
    when '-'
      mem_tape[mem_point] = (mem_tape[mem_point] - 1) % 256
    when '.'
      output << mem_tape[mem_point].chr
    when ','
      mem_tape[mem_point] = input.shift.ord
    when '['
      if mem_tape[mem_point] == 0
        in_braces = 0
        loop do
          code_idx += 1
          break if code[code_idx] == ']' && in_braces == 0
          if code[code_idx] == '['
            in_braces += 1
          elsif code[code_idx] == ']'
            in_braces -= 1
          end
        end
      end
    when ']'
      if mem_tape[mem_point] != 0
      in_braces = 0
        loop do
          code_idx -= 1
          break if code[code_idx] == '[' && in_braces == 0
          if code[code_idx] == ']'
            in_braces += 1
          elsif code[code_idx] == '['
            in_braces -= 1
          end
        end
      end
    end

    code_idx += 1
  end

  output.join
end

p brain_luck(',+[-.,+]', 'Co' + 255.chr)
p brain_luck(',[.[-],]', 'Codewars' + 0.chr)
p brain_luck(',>,<[>[->+>+<<]>>[-<<+>>]<<<-]>>.', 8.chr + 9.chr)
p brain_luck(",>+>>>>++++++++++++++++++++++++++++++++++++++++++++>++++++++++++++++++++++++++++++++<<<<<<[>[>>>>>>+>+<<<<<<<-]>>>>>>>[<<<<<<<+>>>>>>>-]<[>++++++++++[-<-[>>+>+<<<-]>>>[<<<+>>>-]+<[>[-]<[-]]>[<<[>>>+<<<-]>>[-]]<<]>>>[>>+>+<<<-]>>>[<<<+>>>-]+<[>[-]<[-]]>[<<+>>[-]]<<<<<<<]>>>>>[++++++++++++++++++++++++++++++++++++++++++++++++.[-]]++++++++++<[->-<]>++++++++++++++++++++++++++++++++++++++++++++++++.[-]<<<<<<<<<<<<[>>>+>+<<<<-]>>>>[<<<<+>>>>-]<-[>>.>.<<<[-]]<<[>>+>+<<<-]>>>[<<<+>>>-]<<[<+>-]>[<+>-]<<<-]", "\n")
