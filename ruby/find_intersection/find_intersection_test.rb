# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'find_intersection'

class FindIntersectionTest < Minitest::Test
  def test_1
    assert_equal '1,4,13',
                 FindIntersection.find(['1, 3, 4, 7, 13', '1, 2, 4, 13, 15'])
  end

  def test_2
    assert_equal '1,9,10',
                 FindIntersection.find(['1, 3, 9, 10, 17, 18', '1, 4, 9, 10'])
  end
end
