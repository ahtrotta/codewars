let decodeMorse = function (morseCode) {
  let words = morseCode.trim().split('   ');
  words = words.map(word => {
    let characters = word.split(' ');
    return characters.map(character => MORSE_CODE[character]).join('');
  });

  return words.join(' ');
}
