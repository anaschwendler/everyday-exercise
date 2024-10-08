# frozen_string_literal: true

# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.

# LESSONS
# def to_s: by redifining the to_s function we can set to what we decide
# same for +, - and ==
# I think that the goal of this execise, like in python, is to study more about rewritting built in methods
# where I read about it: https://docs.ruby-lang.org/en/master/syntax/methods_rdoc.html

class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + (minute / 60)) % 24
    @minute = minute % 60
  end

  def to_s
    "#{format_time(hour)}:#{format_time(minute)}"
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute).to_s
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute).to_s
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def format_time(time)
    format('%<time>02d', time:)
  end
end
