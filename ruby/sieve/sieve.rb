# frozen_string_literal: true

# Write your code for the 'Sieve' exercise in this file. Make the tests in
# `sieve_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sieve` directory.
require 'prime'

class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes_array = []

    (2..limit).each do |number|
      primes_array.append(number) if number.prime?
    end

    primes_array
  end
end
