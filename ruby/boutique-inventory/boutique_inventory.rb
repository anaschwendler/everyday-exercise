# frozen_string_literal: true

class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    items.each.map { |item| item[:name] }.sort || []
  end

  def cheap
    items.each.select { |item| item[:price] < 30 } || []
  end

  def out_of_stock
    items.each.select { |item| item[:quantity_by_size].empty? } || []
  end

  def stock_for_item(name)
    items.detect { |item| item[:name] == name }.fetch(:quantity_by_size)
    # Detect returns the first item in the list for which the block returns TRUE.
    # then it fetches the :quantity_by_size
  end

  def total_stock
    items.map { |item| item[:quantity_by_size].values.sum }.sum
  end

  private

  attr_reader :items
end
