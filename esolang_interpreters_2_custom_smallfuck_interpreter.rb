# input
#   - code: string of commands
#   - tape: a string of 0s and 1s representing memory
#
# output
#   - string of 0s and 1s after code has been executed
#
# rules
#   - '>' move pointer to right by 1 cell
#   - '<' move pointer to left
#   - '*' flip bit (0 to 1 or 1 to 0)
#   - '[' jump to command after matching ']' if current cell is 0
#   - ']' jump back to matching '[' if current cell is 1
#   - if the pointer goes out of bounds then finish executing
#
# algorithm
#   - convert tape to array (chars)
#   - initialize code_idx to 0
#   - initialize mem_point to 0
#   - iterate through code
#     - curr_comm is equal to code at code_idx
#     - '>' means mem_point += 1
#     - '<' means mem_point -= 1
#     - '*' means if 0 then 1 and if 1 then 0
#     - '[' 
#       - loop if current cell value is 0
#         - initialize in_braces to 0
#         - add 1 to code_idx
#         - break if curr_code is '[' and in_braces is 0
#         - if curr_code is '[' add 1 to in_braces
#         - if curr_code is ']' subtract 1 from in_braces
#     - ']' basically same as '['

require 'pry'

def interpreter code, tape
  code_idx = 0
  mem_point = 0
  mem_tape = tape.chars

  loop do
    break if code_idx == code.length
    curr_comm = code[code_idx]

    case curr_comm
    when '>'
      mem_point += 1
      break unless mem_tape[mem_point]
    when '<'
      mem_point -= 1
      break if mem_point < 0
    when '*'
      if mem_tape[mem_point] == '0' 
        mem_tape[mem_point] = '1' 
      else
        mem_tape[mem_point] = '0'
      end
    when '['
      if mem_tape[mem_point] == '0'
        in_braces = 0

        loop do
          code_idx += 1
          break if code[code_idx] == ']' && in_braces == 0
          in_braces += 1 if code[code_idx] == '['
          in_braces -= 1 if code[code_idx] == ']'
        end

      end
    when ']'
      if mem_tape[mem_point] != '0'
        in_braces = 0

        loop do
          code_idx -= 1
          break if code[code_idx] == '[' && in_braces == 0
          in_braces += 1 if code[code_idx] == ']'
          in_braces -= 1 if code[code_idx] == '['
        end

      end
    end
    
    code_idx += 1
  end

  mem_tape.join
end

p interpreter('*', '00101100')
