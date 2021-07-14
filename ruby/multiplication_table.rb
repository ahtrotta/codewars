# input
#   - dimensions (rows and columns) for table
#
# output
#   - matrix/table of multiplication results
#
# algorithm
#   - initialize first row to be all integers from 1 to columns (1..cols).to_a
#   - iterate from 1 to rows
#     - iterate through first row (map)
#       - multiply current first row value with current iteration number

def multiplication_table(rows, cols)
  first_row = (1..cols).to_a
  (1..rows).map do |mult|
    first_row.map { |n| n * mult }
  end
end
