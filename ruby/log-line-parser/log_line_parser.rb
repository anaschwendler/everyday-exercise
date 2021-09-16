# frozen_string_literal: true

class LogLineParser
  def initialize(line)
    @line = line
  end

  attr_reader :line

  def message
    line.split(':')[1].strip
  end

  def log_level
    line.split(':')[0][1..-2].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
