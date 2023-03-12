# frozen_string_literal: true

# Write your code for the 'Saddle Points' exercise in this file. Make the tests in
# `saddle_points_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/saddle-points` directory.

class SaddlePointsMatrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    splitted_matrix = matrix.split("\n")
    splitted_matrix.map { |i| i.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end

  # rubocop:disable Metrics/MethodLength
  def saddle_points
    saddle_points_array = []
    rows.each_with_index do |row, row_index|
      max_row = row.max
      columns.each_with_index do |column, column_index|
        min_column = column.min
        if (row[column_index] == max_row) && (row[column_index] == min_column)
          saddle_points_array << [row_index,
                                  column_index]
        end
      end
    end

    saddle_points_array
  end
  # rubocop:enable Metrics/MethodLength
end
