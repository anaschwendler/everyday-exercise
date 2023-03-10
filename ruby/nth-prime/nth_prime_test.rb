# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'nth_prime'

class NthPrimeTest < Minitest::Test
  def test_first_prime
    assert_equal 2, NthPrime.nth(1)
  end

  def test_second_prime
    assert_equal 3, NthPrime.nth(2)
  end

  def test_sixth_prime
    assert_equal 13, NthPrime.nth(6)
  end

  def test_big_prime
    assert_equal 104_743, NthPrime.nth(10_001)
  end

  def test_there_is_no_zeroth_prime
    assert_raises(ArgumentError) do
      NthPrime.nth(0)
    end
  end
end
