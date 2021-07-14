# input
#   - string representing a numerical value in some base/alphabet
#   - base/alphabet to convert from
#   - base/alphabet to convert to
#
# output
#   - string representing the converted input value
#
# algorithm
#   - the value of each character in the base/alphabet is the index
#   - convert input to decimal
#     - split string into chars
#     - get index of char in base/alphabet
#     - multiply by base to power of place
#   - convert decimal to output
#     - until num is 0
#       - divide by base
#       - add result to new string
#       - num is now remainder

bin = '01'
oct = '01234567'
dec = '0123456789'
hex = '0123456789abcdef'
allow = 'abcdefghijklmnopqrstuvwxyz'
alup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
alphanum = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def to_dec(num, base)
  arr = num.chars.reverse.map.with_index do |c, i|
    base.index(c) * (base.size**i)
  end
  arr.sum
end

def convert(input, source, target)
  dec = to_dec(input, source)
  output = []
  loop do
    dec, rem = dec.divmod(target.size)
    output.unshift(target[rem])
    break if dec == 0
  end
  output.join
end
