# frozen_string_literal: true

# Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
# `armstrong_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/armstrong-numbers` directory.

module ArmstrongNumbers
  def self.include?(number)
    number_string = number.to_s
    power = number_string.length
    power_sum = number_string.chars.map { |i| i.to_i**power }.sum

    power_sum == number
  end
end
