# frozen_string_literal: true

# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  attr_reader :matrix

  def rows
    splitted_matrix = matrix.split("\n")
    splitted_matrix.map { |i| i.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
