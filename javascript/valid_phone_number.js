function validPhoneNumber(phoneNumber) {
  return /^\(\d{3}\) \d{3}\-\d{4}$/.test(phoneNumber);
}

// tests
console.log(validPhoneNumber("(123) 456-7890"));
