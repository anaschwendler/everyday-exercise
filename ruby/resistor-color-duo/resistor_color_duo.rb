# frozen_string_literal: true

# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.
#
# sp.each_with_index do |el, index|
#     d[index] = el.downcase
# end

module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    color_a, color_b = colors
    "#{COLORS.index(color_a)}#{COLORS.index(color_b)}".to_i
  end
end
