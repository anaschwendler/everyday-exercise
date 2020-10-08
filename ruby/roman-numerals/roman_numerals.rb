# frozen_string_literal: true

# Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
# `roman_numerals_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/roman-numerals` directory.

ROMAN_CORRESPONDENCE = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}.freeze

class Integer
  def to_roman
    arabic_numeral = self

    ROMAN_CORRESPONDENCE.each_with_object([]) do |(threshold, numeral), numerals|
      while (arabic_numeral / threshold).positive?
        arabic_numeral -= threshold
        numerals << numeral
      end
    end.join('')
  end
end
