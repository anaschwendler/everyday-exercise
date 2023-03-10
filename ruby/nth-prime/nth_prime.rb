# frozen_string_literal: true

# Write your code for the 'Nth Prime' exercise in this file. Make the tests in
# `nth_prime_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/nth-prime` directory.

module NthPrime
  def self.nth(value)
    raise ArgumentError if value <= 0

    counter = 1
    prime_counter = 0

    until prime_counter == value
      counter += 1
      prime_counter += 1 if prime?(counter)
    end

    counter
  end

  def self.prime?(value)
    # all?: the method returns true if the block never returns false or nil
    2.upto(Math.sqrt(value)).all? { |i| value % i != 0 }
  end
end
