# frozen_string_literal: true

# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

class Series
  def initialize(string)
    @string = string
  end

  attr_reader :string

  def slices(series_length)
    string_length = string.length
    raise ArgumentError, 'String lenght should be greater than serie lenght' unless string_length >= series_length

    series = []
    (0..(string_length - series_length)).each do |i|
      series.append(string[i..(i + series_length - 1)])
    end

    series
  end
end
