def decode(code)
  code.split('   ').map do |word|
    word.split.map { |char| MORSE_CODE[char] }.join
  end
end
