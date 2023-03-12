# frozen_string_literal: true

# From coderbyte: https://coderbyte.com/editor/Find%20Intersection:Ruby

module FindIntersection
  def self.find(string_array)
    first_array = string_array[0].split(',').map(&:to_i)
    second_array = string_array[1].split(',').map(&:to_i)

    result = first_array.select { |i| second_array.include? i }

    return false if result.empty?

    result.join(',')
  end
end
