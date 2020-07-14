# frozen_string_literal: true

# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.

module Hamming
  def self.compute(sequence_a, sequence_b)
    raise ArgumentError, 'Sequences must have same lenght' unless sequence_a.length == sequence_b.length

    sequence_a.chars.zip(sequence_b.chars).count { |a, b| a != b }
  end
end
