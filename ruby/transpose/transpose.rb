# frozen_string_literal: false

# Write your code for the 'Transpose' exercise in this file. Make the tests in
# `transpose_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/transpose` directory.

module Transpose
  def self.transpose(input)
    return '' if input.empty?

    input.include?("\n") ? transpose_array(input) : transpose_set(input)
  end

  def self.transpose_array(array_set)
    splitted_array = array_set.split("\n")
    array_size = splitted_array.max_by(&:length).length

    transposed_input = ''

    (0...array_size).each_with_index do |i, _array|
      joined_match = splitted_array.map { |a| a[i] || ' ' }.join
      transposed_input.concat("#{joined_match}\n")
    end

    transposed_input.strip
  end

  def self.transpose_set(input_set)
    transposed_input = ''
    counter = 0

    while input_set.chars.count > counter
      transposed_input.concat("#{input_set[counter]}\n")
      counter += 1
    end

    transposed_input.chomp
  end
end
