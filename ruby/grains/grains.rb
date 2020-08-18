# frozen_string_literal: true

# Write your code for the 'Grains' exercise in this file. Make the tests in
# `grains_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grains` directory.

BOARD_SIZE = 64

module Grains
  def self.square(size)
    raise ArgumentError, "Board size should be between 1 and #{BOARD_SIZE}" unless size.between?(1, BOARD_SIZE)

    calculate_square(size, 1, 1)
  end

  def self.total
    sum_grains(BOARD_SIZE, 1, 1)
  end

  def self.calculate_square(total_size, actual_position, actual_size)
    if total_size == actual_position
      actual_size
    else
      calculate_square(total_size, actual_position + 1, actual_size * 2)
    end
  end

  def self.sum_grains(total_size, actual_position, actual_size)
    if total_size == actual_position
      actual_size
    else
      actual_size + sum_grains(total_size, actual_position + 1, actual_size * 2)
    end
  end
end
