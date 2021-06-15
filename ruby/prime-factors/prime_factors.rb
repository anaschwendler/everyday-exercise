# frozen_string_literal: true

# Write your code for the 'Prime Factors' exercise in this file. Make the tests in
# `prime_factors_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/prime-factors` directory.

module PrimeFactors
  # rubocop:disable Metrics/MethodLength
  def self.of(value)
    divisor = 2
    factors = []

    while value > 1
      if (value % divisor).zero?
        factors << divisor
        value /= divisor
      else
        divisor += 1
      end
    end

    factors
  end
  # rubocop:enable Metrics/MethodLength
end
