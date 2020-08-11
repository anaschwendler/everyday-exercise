# frozen_string_literal: true

# Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
# `difference_of_squares_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/difference-of-squares` directory.

class Squares
  attr_reader :calculation_lenght

  def initialize(calculation_lenght)
    @calculation_lenght = calculation_lenght
  end

  def square_of_sum
    range.sum**2
  end

  def sum_of_squares
    range.map { |i| i**2 }.sum
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end

  private

  def range
    (1..calculation_lenght).to_a
  end
end
