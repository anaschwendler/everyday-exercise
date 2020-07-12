# frozen_string_literal: true

# Write your code for the 'High Scores' exercise in this file. Make the tests in
# `high_scores_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/high-scores` directory.

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort.reverse[0..2]
  end

  def latest_is_personal_best?
    personal_best == latest
  end
end
