# frozen_string_literal: true

# Write your code for the 'Robot Name' exercise in this file. Make the tests in
# `robot_name_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/robot-name` directory.

class Robot
  attr_accessor :name

  @names = ('AA000'..'ZZ999').to_a.shuffle

  class << self
    attr_accessor :names
  end

  def initialize
    reset
  end

  def reset
    free_this_name unless name.nil?
    change_name
  end

  def self.forget
    ('AA000'..'ZZ999').to_a.shuffle
  end

  private

  def free_this_name
    self.class.names.unshift(name)
  end

  def change_name
    self.name = self.class.names.pop
  end
end
