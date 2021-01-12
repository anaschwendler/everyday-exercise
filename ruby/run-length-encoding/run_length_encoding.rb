# frozen_string_literal: false

# Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
# `run_length_encoding_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/run-length-encoding` directory.

# rubocop:disable Metrics/MethodLength
module RunLengthEncoding
  def self.encode(input)
    output = ''
    counter = 0
    current_char = ''
    char_counter = input[0]

    input.each_char do |char|
      if char_counter == char
        current_char = counter.zero? ? char.to_s : "#{counter + 1}#{char}"
        counter += 1
      else
        counter = 1
        char_counter = char
        output.concat(current_char)
        current_char = char.to_s
      end
    end

    output.concat(current_char)
  end

  def self.decode(input)
    output = ''
    counter = 0

    input.each_char do |char|
      counter += 1
      if char.match?(/[0-9]/)
        (char.to_i - 1).times { output.concat(input[counter]) }
      else
        output.concat(char)
      end
    end

    output
  end
end
# rubocop:enable Metrics/MethodLength
