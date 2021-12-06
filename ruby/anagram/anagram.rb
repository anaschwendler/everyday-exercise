# frozen_string_literal: true

# Write your code for the 'Anagram' exercise in this file. Make the tests in
# `anagram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/anagram` directory.

class Anagram
  attr_reader :anagram_word

  def initialize(anagram_word)
    @anagram_word = anagram_word.downcase
  end

  def match(words)
    words.select { |word| anagram?(word.downcase) }
  end

  private

  def anagram?(word)
    anagram_word.chars.sort.eql? word.chars.sort unless identical?(word)
  end

  def identical?(word)
    word.eql? anagram_word
  end
end
