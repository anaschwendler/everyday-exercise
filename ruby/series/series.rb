# frozen_string_literal: true

# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

# LESSONS
# each_cons(n) means each consecutive for amount n

class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(series_length)
    string_length = string.length
    raise ArgumentError, 'String lenght should be greater than serie lenght' unless string_length >= series_length

    series = []
    string.chars.each_cons(series_length) { |i| series << i.join }
    series
  end
end
