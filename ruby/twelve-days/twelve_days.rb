# frozen_string_literal: true

# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.

SONG_MATCH = [
  ['first', 'a Partridge in a Pear Tree'],
  ['second', 'two Turtle Doves'],
  ['third', 'three French Hens'],
  ['fourth', 'four Calling Birds'],
  ['fifth', 'five Gold Rings'],
  ['sixth', 'six Geese-a-Laying'],
  ['seventh', 'seven Swans-a-Swimming'],
  ['eighth', 'eight Maids-a-Milking'],
  ['ninth', 'nine Ladies Dancing'],
  ['tenth', 'ten Lords-a-Leaping'],
  ['eleventh', 'eleven Pipers Piping'],
  ['twelfth', 'twelve Drummers Drumming']
].freeze

module TwelveDays
  def self.song
    full_song = ''

    SONG_MATCH.each_with_index do |item, index|
      full_song += if index.zero?
                     "On the #{item[0]} day of Christmas my true love gave to me: #{item[1]}."
                   else
                     "\n\nOn the #{item[0]} day of Christmas my true love gave to me: #{list_gifts(index)}"
                   end
    end

    "#{full_song}\n"
  end

  def self.list_gifts(day)
    if day.zero?
      "and #{SONG_MATCH[day][1]}."
    else
      "#{SONG_MATCH[day][1]}, #{list_gifts(day - 1)}"
    end
  end
end
