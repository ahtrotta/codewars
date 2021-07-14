require 'digest'

def get_pins(depth)
  return ('0'..'9').to_a if depth == 1

  result = []

  ('0'..'9').each do |n|
    result = result + get_pins(depth - 1).map { |pin| pin << n }
  end

  result
end

PINS = get_pins(5)

def crack(hash)
  PINS.each do |pin|
    return pin if Digest::MD5.hexdigest(pin) == hash
  end
  nil
end

p crack("827ccb0eea8a706c4c34a16891f84e7b") == "12345"
p crack("86aa400b65433b608a9db30070ec60cd") == "00078"
