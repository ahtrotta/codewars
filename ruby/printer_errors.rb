def printer_error(s)
  format("%i/%i", s.count('^[a-m]'), s.length)
end

p printer_error('aaaxbbbbyyhwawiwjjjwwm')
