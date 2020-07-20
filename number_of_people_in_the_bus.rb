def number(bus_stops)
  bus_stops.map { |on, off| on - off }.sum
end
#
p number([[10, 0], [3, 5], [5, 8]])
