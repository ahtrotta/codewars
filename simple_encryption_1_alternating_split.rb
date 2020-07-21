def encrypt(text, n)
  return text if n < 1
  str = text.chars.partition.with_index { |_, i| i.odd? }.map(&:join).join
  n == 1 ? str : encrypt(str, n - 1)
end

def decrypt(encrypted_text, n)
  return encrypted_text if n < 1
  even, odd = encrypted_text.chars.partition.with_index do |_, i|
    i >= encrypted_text.length / 2
  end
  str = even.zip(odd).flatten.join
  n == 1 ? str : decrypt(str, n - 1)
end

p encrypt('This is a test!', 1)
p encrypt('This is a test!', 2)
p decrypt(encrypt('This is a test!', 1), 1)
p decrypt(encrypt('This is a test!!', 1), 1)
