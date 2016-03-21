require 'pry'
require 'date'

#calculate the cost of different items that we add to it
class ShoppingCart
  def initialize
    @items = []
    @total_price = 0
  end

  def add_to_cart(item)
    @items.push(item)
  end

  def checkout_cart
    total_checkout = @total_price
    @items.each {|item| total_checkout += item.price }
    total_checkout
  end
end

class Item 
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

class Houseware < Item

  def price
    if @price > 100
      final_price = @price * 0.95
    else
      final_price = @price
    end
  end
end

class Fruit < Item
  def price
    today = Date.today
    if today.saturday? || today.sunday?
      final_price = @price * 0/90
    else
      final_price = @price
    end
  end
end

checkout_one = ShoppingCart.new
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacumm Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

checkout_one.add_to_cart(banana)
checkout_one.add_to_cart(orange_juice)
checkout_one.add_to_cart(rice)
checkout_one.add_to_cart(vacuum_cleaner)
checkout_one.add_to_cart(anchovies)

puts checkout_one.checkout_cart
