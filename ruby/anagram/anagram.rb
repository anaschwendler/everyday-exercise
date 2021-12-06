=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  attr :anagram, :anagram_sorted_word

  def initialize(anagram_word)
    @anagram = anagram_word.downcase
    @anagram_sorted_word = anagram_word.downcase.chars.sort.join
  end

  def match(words_set)
    anagram_set = []

    words_set.each do |word|
      next if word.downcase.eql? anagram

      sorted_word = word.downcase.chars.sort.join
      anagram_set << word if sorted_word.eql? anagram_sorted_word
    end

    anagram_set
  end
end
