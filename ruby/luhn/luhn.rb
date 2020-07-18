# frozen_string_literal: true

# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.

module Luhn
  def self.valid?(card_number)
    parsed_number = card_number.delete(' ')
    return false if invalid_card(parsed_number)

    summed_array = double_array(parsed_number).sum
    (summed_array % 10).zero?
  end

  def self.double_array(parsed_number)
    arrayed_number = parsed_number.reverse.chars.map(&:to_i)
    iteraction_length = arrayed_number.length - 1
    (1..iteraction_length).step(2).each do |i|
      double_number = arrayed_number[i] * 2
      arrayed_number[i] = double_number > 9 ? double_number - 9 : double_number
    end

    arrayed_number
  end

  def self.invalid_card(card_number)
    card_number.length == 1 || !(card_number =~ /[^0-9]/).nil?
  end
end
