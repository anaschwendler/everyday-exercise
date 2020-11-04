# frozen_string_literal: true

# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/scrabble-score` directory.

SCRABBLE_SCORE = {
  1 => %w[A E I O U L N R S T],
  2 => %w[D G],
  3 => %w[B C M P],
  4 => %w[F H V W Y],
  5 => %w[K],
  8 => %w[J X],
  10 => %w[Q Z]
}.freeze

class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def self.score(word)
    new(word).score
  end

  def score
    word.nil? ? 0 : calculate_score
  end

  private

  def calculate_score
    score = 0

    word.each_char do |letter|
      letter_score, _letters = SCRABBLE_SCORE.find { |_k, v| v.include?(letter.upcase) }
      score += letter_score unless letter_score.nil?
    end

    score
  end
end
