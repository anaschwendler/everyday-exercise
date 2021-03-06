# frozen_string_literal: true

CORRESPONDENCE = {
  '(' => ')',
  '[' => ']',
  '{' => '}'
}.freeze

module BalancedBrackets
  def self.balanced?(entry)
    entry_balance = []

    entry.each_char do |c|
      if CORRESPONDENCE.keys.include? c
        entry_balance.append(c)
      elsif CORRESPONDENCE.values.include? c
        return false unless CORRESPONDENCE[entry_balance.last] == c

        entry_balance.pop
      end
    end

    entry_balance.empty?
  end
end
