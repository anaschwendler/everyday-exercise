# frozen_string_literal: true

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.

DIVISORS = {
  3 => 'Pling',
  5 => 'Plang',
  7 => 'Plong'
}.freeze

module Raindrops
  def self.convert(digit)
    raindrops = ''

    DIVISORS.each_key do |d|
      raindrops += DIVISORS[d] if (digit % d).zero?
    end

    raindrops.empty? ? digit.to_s : raindrops
  end
end
