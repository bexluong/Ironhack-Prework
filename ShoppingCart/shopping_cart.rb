class ShoppingCart
  def initialize
    @items = []
  end
end
=begin
By default, items will have no discount.
Fruits have no discount during weekdays but on weekends they have a 10% discount.
Housewares have no discount unless their unit price is more than 100€ / $100. 
If the price is greater than 100€ / $100, there will be a 5% discount.

=end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      #Your beautiful code goes here
  end
end

class Houseware < Item

  def price
      #Hmmm maybe this changes somehow..
      if price > 100
      	final_price = @price * 0.95
      else
      	final_price = @price
  end
end

class Fruit < Item
  def price
      #Something special may go here too...

    t = Time.now
    if 
	t.saturday?  = true
	final_price = @price * 0.9
	elsif 
	t.sunday? = true
	final_price = @price * 0.9
	else
	final_price = @price
  end
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacumm Cleaner", 150)
anchovies = Item.new("Anchovies", 2)