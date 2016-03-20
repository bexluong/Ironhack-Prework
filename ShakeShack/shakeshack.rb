require 'pry'

class MilkShake
attr_accessor :base_price, :ingredients
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

#creates an array of the ingridents
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  
  # establish base price of milkshake
  def price_of_milkshake
    total_price_of_milkshake = @base_price

  #Add each ingredients price to our total taking from Ingredient class
    @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end

  #return our total price to whoever called for it
   total_price_of_milkshake
  end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShakeShop
  def initialize
    @order_price = 0
    @milkshakes = [ ]
  end

  def add_milkshakes(order_name)
    @milkshakes.push(order_name)
  end

  def checkout_milkshakes
    total_checkout = @order_price
    @milkshakes.each do |order|
      total_checkout += order.price_of_milkshake
    end
    total_checkout
  end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

jarrens_milkshake = MilkShake.new
blueberry = Ingredient.new("Blueberry", 2)
raspberry = Ingredient.new("Raspberry", 2)
jarrens_milkshake.add_ingredient(blueberry)
jarrens_milkshake.add_ingredient(raspberry)


order_one = ShakeShop.new
order_one.add_milkshakes(jarrens_milkshake)
order_one.add_milkshakes(nizars_milkshake)
puts order_one.checkout_milkshakes

