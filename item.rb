class Item

  def price
	@price
  end

  def price=(price_value)
	@price = price_value
  end
end


item1 = Item.new
item1.price=(10)
puts item1.price