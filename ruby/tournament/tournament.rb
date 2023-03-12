# frozen_string_literal: true

# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.

module Tournament
  HEADERS = %w[Team MP W D L P].freeze

  # rubocop:disable Metrics/MethodLength
  def self.tally(input)
    results = parse_input(input)
    return_string = format_result(HEADERS)
    results
      .sort_by { |team, result| [-result[:p], team] }
      .each do |team, result|
        result_array = [team, result[:mp], result[:w], result[:d], result[:l], result[:p]]
        return_string << format_result(result_array)
      end
    return_string
  end

  def self.parse_input(input)
    input
      .split("\n")
      .each_with_object({}, &method(:process_line))
  end

  # rubocop:disable Metrics/AbcSize
  def self.process_line(line, acc)
    team1, team2, result = line.split(';')
    acc[team1] = empty_result if acc[team1].nil?
    acc[team2] = empty_result if acc[team2].nil?
    acc[team1][:mp] += 1
    acc[team2][:mp] += 1
    case result
    when 'win'
      acc[team1][:w] += 1
      acc[team1][:p] += 3
      acc[team2][:l] += 1
    when 'loss'
      acc[team2][:w] += 1
      acc[team2][:p] += 3
      acc[team1][:l] += 1
    when 'draw'
      acc[team1][:d] += 1
      acc[team1][:p] += 1
      acc[team2][:d] += 1
      acc[team2][:p] += 1
    end
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  def self.empty_result
    { mp: 0, w: 0, d: 0, l: 0, p: 0 }
  end

  # rubocop:disable Style/FormatStringToken
  def self.format_result(result_array)
    format("%-30s | %2s | %2s | %2s | %2s | %2s\n", *result_array)
  end
  # rubocop:enable Style/FormatStringToken
end
