# frozen_string_literal: true

# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.

# LESSONS
# \b allows you to perform a whole words only search using a regular expression.
# tally : Tallies the collection, i.e., counts the occurrences of each element.
# Returns a hash with the elements of the collection as keys and the corresponding counts as values.

class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase.downcase.scan(/\b[\w']+\b/).tally
  end
end
