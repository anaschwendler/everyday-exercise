# Write your code for the 'Binary Search' exercise in this file. Make the tests in
# `binary_search_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/binary-search` directory.

# frozen_string_literal: true

class BinarySearch
  attr_reader :array

  def initialize(array)
    @array = array
  end

  # rubocop:disable Metrics/MethodLength
  def search_for(value)
    # assume the arrays are sorted
    left = 0
    right = array.length - 1
    position = nil

    while right >= left
      middle = (right + left) / 2

      if array[middle] == value
        position = middle
        break
      elsif array[middle] > value
        right = middle - 1
      else
        left = middle + 1
      end
    end

    position
  end
  # rubocop:enable Metrics/MethodLength
end
