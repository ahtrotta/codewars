def in_array(array1, array2)
  array1.select { |sub_str| array2.any? { |word| word.include?(sub_str) } }.sort
end

p in_array(['arp', 'live', 'strong'], ['lively', 'alive', 'harp', 'sharp'])
