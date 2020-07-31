# input
#   - string
#
# output
#   - boolean
#
# algorithm
#   - check if empty string
#   - remove all characters that aren't allowed
#   - check if modified string is equal to original string

def alphanumeric?(string)
  return false if string.empty?
  string == string.delete('^a-zA-Z0-9')
end

