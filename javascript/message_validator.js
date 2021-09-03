function isAValidMessage(message) {
  let splitMessage = message.split(/(\d+)/).filter(element => element);
  if (splitMessage.length % 2 === 1) {
    return false;
  } else {
    for (let index = 0; index < splitMessage.length; index += 2) {
      let [number, word] = [Number(splitMessage[index]), splitMessage[index + 1]];
      if (word.length !== number) {
        return false;
      }
    }

    return true;
  }
}

console.log(isAValidMessage('4code13hellocodewars'));
