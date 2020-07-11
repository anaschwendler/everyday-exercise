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
    splitted_matrix.map { |i| i.split.map(&:to_i) }
  end

  def columns
    columns = []

    range = rows.length - 1
    (0..range).each do |index|
      column_values = rows.map { |i| i[index] }
      columns.append(column_values)
    end

    columns
  end

  private

  def splitted_matrix
    matrix.split("\n")
  end
end
