# problem
#   - multiply two square matrices
#
# input
#   - two square matrices (array of arrays of numbers)
#
# output
#   - product of the matrices (array of arrays of numbers)
#
# notes
#   - [[(A[0][0] * B[0][0] + A[0][1] * B[1][0]),
#       (A[0][0] * B[0][1] + A[0][1] * B[1][1])],
#      [(A[1][0] * B[0][0] + A[1][1] * B[1][0]),
#       (A[1][0] * B[0][1] + A[1][1] * B[1][1])]]
#
# algorithm
#   - initialize product array with correct size and 0 values
#   - iterate through A rows (0 to dimension size - 1) Arow
#     - iterate through A columns (0 to dimension size - 1) Acol
#       - iterate through B rows (0 to dimension size - 1) Brow
#         - iterate through B columns (0 to dimension size - 1) Bcol
#           - A[Arow][Acol] * B[Brow][Bcol]
#
# algorithm2
#   - initialize product array with correct size and 0 values
#   - iterate through dim1
#     - iterate through dim2
#       - iterate through dim3
#         - C[dim1][dim2] += A[dim1][dim3] * B[dim2][dim3]
#
# algorithm3
#   - iterate through rows of A
#     - iterate through columns of B
#       - multiply each value of row A with column B
#         - 
#

def matrix_mult(a, b)
  b_cols = (0...(b.first.size)).map do |col_i|
    b.map { |row| row[col_i] }
  end

  a.each_with_object([]) do |a_row, result|
    res_row = []

    b_cols.each do |b_col|
      res_row << a_row.zip(b_col).map { |arr| arr.reduce(:*) }.sum
    end

    result << res_row
  end
end

p matrix_mult([[1, 2], [3, 2]], [[3, 2], [1, 1]])
