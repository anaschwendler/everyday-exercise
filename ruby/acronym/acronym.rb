# frozen_string_literal: true

# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.

module Acronym
  def self.abbreviate(sentence)
    sanitize_sentence = sentence.downcase.gsub(/[^a-z']/, ' ')
    split_sentence = sanitize_sentence.split
    map_acronym = split_sentence.map { |i| i[0] }
    map_acronym.join.upcase
  end
end
