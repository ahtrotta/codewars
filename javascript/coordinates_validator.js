/*

input:
  - string, representing coordinates (latitude, longitude)

output:
  - true or false

rules:
  - latitude
    - can be between -90 and 90
  - longitude
    - can be between -180 and 180
  - coordinates can only be digits, -, ., or ,
  - no space between negative sign and number

algorithm:
  - use regex to make sure there aren't illegal characters
  - split on ', ' to make an array of two number strings
  - convert each number string to number
  - check if valid range for each

*/

function isValidCoordinates(coordinates) {
  if (!/^\-?\d{1,2}(\.\d+)?\, \-?\d{1,3}(\.\d+)?$/.test(coordinates)) {
    return false;
  }

  let [latitude, longitude] = coordinates.split(', ').map(Number);
  if (latitude < -90 || latitude > 90) {
    return false;
  } else if (longitude < -180 || longitude > 180) {
    return false;
  }

  return true;
}

// tests

