# frozen_string_literal: true

# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.

module Isogram
  def self.isogram?(sentence)
    sanitize_sentence = sentence.downcase.gsub(/[^a-z]/, '')

    char_repetition = Hash.new(0)
    sanitize_sentence.chars.map { |i| char_repetition[i] += 1 }

    sanitize_sentence.length == char_repetition.length
  end
end
