def createPhoneNumber(numbers)
  "(#{numbers[0, 3].join}) #{numbers[3, 3].join}-#{numbers[6, 4].join}"
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
