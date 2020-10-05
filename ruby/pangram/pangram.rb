# frozen_string_literal: true

# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

module Pangram
  def self.pangram?(sentence)
    counter = create_letter_counter

    sentence.downcase.chars.each do |letter|
      counter[letter] += 1 if counter.key?(letter)
    end

    not_used_letters = counter.select { |_key, value| value.zero? }

    not_used_letters.empty?
  end

  def self.create_letter_counter
    counter = {}
    ('a'..'z').each do |letter|
      counter[letter] = 0
    end

    counter
  end
end
