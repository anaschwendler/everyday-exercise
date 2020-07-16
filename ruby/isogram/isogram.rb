# frozen_string_literal: true

# Write your code for the 'Isogram' exercise in this file. Make the tests in
# `isogram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/isogram` directory.

module Isogram
  def self.isogram?(sentence)
    sanitize_sentence = sentence.downcase.gsub(/[^a-z]/, '')

    sanitize_sentence.length == sanitize_sentence.chars.uniq.join.length
  end
end
