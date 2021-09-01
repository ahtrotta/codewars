/*

input:
  - string

output:
  - true or false

rules:
  - valid ip addresses are four octets between 0 and 255 separated by periods
  - leading zeros are considered invalid

algorithm:
  - check by regex
    - 0-9 if 1 digit
    - 1-9 0-9 if 2 digits
    - 1-2 0-9 0-9 if 3 digits


*/

let isValidIP = function (str) {
  let regex = /^((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){3}(\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$/;
  return regex.test(str);
}

// tests
console.log(isValidIP("0.0.0.0"));
console.log(isValidIP("12.255.56.1"));
console.log(isValidIP("137.255.156.100"));
console.log(isValidIP(''));
console.log(isValidIP('abc.def.ghi.jkl'));
console.log(isValidIP('123.456.789.0'));
console.log(isValidIP('12.34.56'));
console.log(isValidIP('01.02.03.04'));
console.log(isValidIP('256.1.2.3'));
console.log(isValidIP('1.2.3.4.5'));
console.log(isValidIP('123,45,67,89'));
console.log(isValidIP('1e0.1e1.1e2.2e2'));
console.log(isValidIP(' 1.2.3.4'));
console.log(isValidIP('1.2.3.4 '));
console.log(isValidIP('12.34.56.-7'));
console.log(isValidIP('1.2.3.4\n'));
console.log(isValidIP('\n1.2.3.4'));
