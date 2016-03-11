class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  
  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
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

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

jarren_milkshake = MilkShake.new
blackberries = Ingredient.new("Blackberries", 2)
raspberries = Ingredient.new("Raspberries", 2)
jarren_milkshake.add_ingredient(blackberries)
jarren_milkshake.add_ingredient(raspberries)

puts nizars_milkshake.price_of_milkshake
puts jarren_milkshake.price_of_milkshake


class ShackShop
	def initialize
		@milkshakes = []
		@milkshake_order_price = 0
	end

	def add_milkshakes(milkshake_order)
		@milkshakes.push(milkshake_order)
	end

	def checkout
    total_checkout = @milkshake_order_price
		@milkshakes.each do |order| 
		total_checkout += order.total_price_of_milkshake
  end

    total_checkout
	end
end


order1 = ShackShop.new
order1.add_milkshakes(nizars_milkshake)
order1.add_milkshakes(jarren_milkshake)

puts order1.total_checkout
