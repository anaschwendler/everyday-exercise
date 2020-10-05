# frozen_string_literal: true

# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

module Pangram
  def self.pangram?(sentence)
    return false if sentence.empty?

    ('a'..'z').each do |letter|
      return false unless sentence.downcase.include? letter
    end

    true
  end
end
