Object.prototype.hash = function (string) {
  let props = string.split('.');
  let currentProp = props.shift();
  if (this[currentProp]) {
    if (props.length > 0) {
      return this[currentProp].hash(props.join('.'));
    } else {
      return this[currentProp];
    }
  }
};

// tests
var obj = {
  person: {
    name: 'joe',
    history: {
      hometown: 'bratislava',
      bio: {
        funFact: 'I like fishing.'
      }
    }
  }
};

console.log(obj.hash('person.name'));
console.log(obj.hash('person.history.bio'));
console.log(obj.hash('person.history.homeStreet'));
console.log(obj.hash('person.animal.pet.needNoseAntEater'));
