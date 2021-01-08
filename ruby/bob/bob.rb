# frozen_string_literal: true

# Write your code for the 'Bob' exercise in this file. Make the tests in
# `bob_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bob` directory.

module Bob
  # rubocop:disable Metrics/MethodLength
  def self.hey(remark)
    case remark
    when /^[A-Z]+.*[A-Z]{2,}.*[A-Z]\?$/
      "Calm down, I know what I'm doing!"
    when /\?\s{2,}*\z/
      'Sure.'
    when /[A-Z]\!$/, /^[A-Z]{3,}/, /^[A-Z]+.*[A-Z]+$/
      'Whoa, chill out!'
    when /^\s*\z/
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
  # rubocop:enable Metrics/MethodLength
end
