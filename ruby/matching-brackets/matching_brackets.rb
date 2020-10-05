# frozen_string_literal: true

# Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
# `matching_brackets_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matching-brackets` directory.

module Brackets
  def self.paired?(entry)
    entry_balance = []

    entry.each_char do |c|
      if CORRESPONDENCE.keys.include? c
        entry_balance.append(c)
      elsif CORRESPONDENCE.values.include? c
        return false unless CORRESPONDENCE[entry_balance.last] == c

        entry_balance.pop
      end
    end

    entry_balance.empty?
  end
end
