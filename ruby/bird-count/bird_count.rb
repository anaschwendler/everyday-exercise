# frozen_string_literal: true

class BirdCount
  LAST_WEEK_COUNT = [0, 2, 5, 3, 7, 8, 4].freeze
  BUSY_DAYS = 4

  attr_reader :birds_per_day

  def self.last_week
    @birds_per_day || LAST_WEEK_COUNT
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    birds_per_day[-2]
  end

  def total
    birds_per_day.sum
  end

  def busy_days
    birds_per_day.select { |c| c > BUSY_DAYS }.count
  end

  def day_without_birds?
    birds_per_day.include? 0
  end
end
