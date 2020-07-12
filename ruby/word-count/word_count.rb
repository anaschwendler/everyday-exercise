# frozen_string_literal: true

# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.

# LESSONS
# \b allows you to perform a whole words only search using a regular expression.

class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    splitted_phrase = phrase.downcase.scan(/\b[\w']+\b/)
    word_frequency = {}

    splitted_phrase.each do |word|
      if word_frequency.key? word
        word_frequency[word] += 1
      else
        word_frequency[word] = 1
      end
    end

    word_frequency
  end
end
