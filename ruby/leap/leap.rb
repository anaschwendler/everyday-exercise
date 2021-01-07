# frozen_string_literal: true

# Write your code for the 'Leap' exercise in this file. Make the tests in
# `leap_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/leap` directory.

module Year
  def self.leap?(year_number)
    (year_number % 400).zero? || ((year_number % 4).zero? && (year_number % 100 != 0))
  end
end
