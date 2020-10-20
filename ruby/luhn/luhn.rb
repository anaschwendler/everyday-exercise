# frozen_string_literal: true

# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.

module Luhn
  def self.valid?(number)
    parsed_number = number.delete(' ')
    return false if invalid_sequence?(parsed_number)

    parsed_sequence = prepare_sequence(parsed_number)
    double_digits = double_array(parsed_sequence)
    sum_sequence = double_digits.sum

    valid_sequence?(sum_sequence)
  end

  def self.invalid_sequence?(parsed_number)
    parsed_number.length == 1 || !(parsed_number =~ /[^0-9]/).nil?
  end

  def self.prepare_sequence(parsed_number)
    parsed_number.reverse.chars.map(&:to_i)
  end

  def self.double_array(parsed_number)
    arrayed_number = parsed_number
    iteraction_length = arrayed_number.length - 1
    (1..iteraction_length).step(2).each do |i|
      arrayed_number[i] = double_number(arrayed_number[i])
    end

    arrayed_number
  end

  def self.double_number(number)
    double_number = number * 2
    double_number > 9 ? double_number - 9 : double_number
  end

  def self.valid_sequence?(sequence)
    (sequence % 10).zero?
  end
end
