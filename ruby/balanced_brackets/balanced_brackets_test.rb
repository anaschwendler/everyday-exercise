# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'balanced_brackets'

# Common test data version: 1.2.0 4fc1acb
class BalancedBracketsTest < Minitest::Test
  def test_valid_simple_check
    assert BalancedBrackets.balanced?('()')
  end

  def test_valid_entry_check
    assert BalancedBrackets.balanced?('()[]{}')
  end

  def test_invalid_simple_entry_check
    refute BalancedBrackets.balanced?('(]')
  end

  def test_invalid_entry_check
    refute BalancedBrackets.balanced?('{[(])}')
  end

  def test_valid_mixed_order_entry_check
    assert BalancedBrackets.balanced?('{{[[(())]]}}')
  end

  def test_valid_mismatched_entry_check
    assert BalancedBrackets.balanced?('{(([])[])[]}[]')
  end

  def test_invalid_order_entry_check
    refute BalancedBrackets.balanced?('{{)[](}}')
  end

  def test_invalid_closing_bracket_entry_check
    refute BalancedBrackets.balanced?('{(([])[])[]]}')
  end
end
