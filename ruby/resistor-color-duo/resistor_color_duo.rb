# frozen_string_literal: true

# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.
#
# sp.each_with_index do |el, index|
#     d[index] = el.downcase
# end

def resistor_color_values
  {
    "black": 0, "brown": 1, "red": 2, "orange": 3, "yellow": 4,
    "green": 5, "blue": 6, "violet": 7, "grey": 8, "white": 9
  }
end

class ResistorColorDuo
  def self.value(colors)
    first_value = resistor_color_values[colors[0].to_sym]
    second_value = resistor_color_values[colors[1].to_sym]
    "#{first_value}#{second_value}".to_i
  end
end
